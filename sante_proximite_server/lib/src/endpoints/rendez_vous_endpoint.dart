import 'package:serverpod/serverpod.dart';
import '../generated/protocol.dart';

class RendezVousEndpoint extends Endpoint {
  final Uuid _uuid = const Uuid();

  // generation d un code unique de reservation unique et lisible avec verification d unicite en base de donnee
  Future<String> _genererCodeRdvUnique(Session session) async {
    final now = DateTime.now();
    final prefixeMois = '${now.year}${now.month.toString().padLeft(2, '0')}';

    for (int tentative = 0; tentative < 5; tentative++) {
      // extraction d une cle de 6 caracteres a partir d un uuid v4
      final cleUuid = _uuid
          .v4()
          .replaceAll('-', '')
          .substring(0, 6)
          .toUpperCase();
      final codePropose = 'RDV-$prefixeMois-$cleUuid';

      // verification de l unicite du code de rendez vous en base de donnee
      final existant = await RendezVous.db.findFirstRow(
        session,
        where: (t) => t.codeRdv.equals(codePropose),
      );

      if (existant == null) {
        return codePropose;
      }
    }

    // message au cas ou les essais echouent
    throw FormatException(
      "Une erreur est survenue lors de la generation de votre ticket. Veuillez reessayer plus tard.",
    );
  }

  // cree un rdv avec validation metier et garantie d'atomicite
  Future<RendezVous> creerRendezVous(
    Session session, {
    required int usagerId,
    required int plageHoraireId,
    int? profilBeneficiaireId,
    String? motif,
  }) async {
    // recuperation des profils beneficiaires de l'utilisateur
    final beneficiaires = await ProfilBeneficiaire.db.find(
      session,
      where: (t) => t.usagerId.equals(usagerId),
    );
    final beneficiaireIds = beneficiaires.map((b) => b.id!).toSet();
    final now = DateTime.now();

    // validation: existence et statut de l'utilisateur
    final usager = await Usager.db.findById(session, usagerId);
    if (usager == null) {
      throw FormatException("L'utilisateur est introuvable.");
    }

    // validation de l'existence de la plage horaire
    final plage = await PlageHoraire.db.findById(session, plageHoraireId);
    if (plage == null) {
      throw FormatException("La plage horaire specifie est introuvable");
    }

    // validation des creneaux disponible
    if (plage.estReservee) {
      throw FormatException("Ce creneau est deja reserve.");
    }

    // validation des preavis minimum 1h30 a ameliorer bloquer les creneaux qui sont proche des heures de rdv
    final preavisMinimum = now.add(const Duration(minutes: 90));
    if (plage.heureDebut.isBefore(preavisMinimum)) {
      throw FormatException(
        "Un rendez vous doit etre reserve au moins 1h30 a l'avance.",
      );
    }

    // Validation : anti-chevauchement utilisateur
    final rdvSimultane = await RendezVous.db.findFirstRow(
      session,
      where: (t) =>
          t.profilBeneficiaireId.inSet(beneficiaireIds) &
          t.status.notEquals('annule') &
          t.plageHoraireId.equals(plageHoraireId),
    );

    if (rdvSimultane != null) {
      throw FormatException(
        "Vous avez deja un rendez vous prevu a la meme heure.",
      );
    }

    // validation : 3 RDV max en 24h
    final ilYa24h = now.subtract(const Duration(hours: 24));
    final rdv24hCount = await RendezVous.db.count(
      session,
      where: (t) =>
          t.profilBeneficiaireId.inSet(beneficiaireIds) &
          t.status.notEquals('annule') &
          (t.dateRdv >= ilYa24h),
    );

    if (rdv24hCount >= 3) {
      throw FormatException(
        "Vous avez deja atteint la limite maximale de rendez-vous pour aujourd'hui.",
      );
    }

    // validation : 5 RDV max sur 7jours
    final ilYa7jours = now.subtract(const Duration(days: 7));
    final rdv7JoursCount = await RendezVous.db.count(
      session,
      where: (t) =>
          t.profilBeneficiaireId.inSet(beneficiaireIds) &
          t.status.notEquals('annule') &
          (t.dateRdv >= ilYa7jours),
    );

    if (rdv7JoursCount >= 5) {
      throw FormatException(
        "Vous avez deja atteint la limite maximale de rendez-vous pour cette semaine.",
      );
    }

    // selection du profil beneficiaire
    int beneficiaireCibleId;
    if (profilBeneficiaireId != null) {
      if (!beneficiaireIds.contains(profilBeneficiaireId)) {
        throw FormatException(
          "Ce profil bénéficiaire n'appartient pas à cet utilisateur.",
        );
      }
      beneficiaireCibleId = profilBeneficiaireId;
    } else {
      if (beneficiaires.isEmpty) {
        throw FormatException(
          "Aucun profil bénéficiaire associé à cet utilisateur.",
        );
      }
      beneficiaireCibleId = beneficiaires.first.id!;
    }

    // generation du code unique
    final codeRdv = await _genererCodeRdvUnique(session);

    // transaction atomique
    return await session.db.transaction((transaction) async {
      // verification pour eviter les acces simultanes
      final plageVerouillee = await PlageHoraire.db.findById(
        session,
        plageHoraireId,
        transaction: transaction,
      );

      if (plageVerouillee == null || plageVerouillee.estReservee) {
        throw FormatException("Ce creneau est deja reserve.");
      }

      // marquer la plage comme reserve
      plageVerouillee.estReservee = true;
      await PlageHoraire.db.updateRow(
        session,
        plageVerouillee,
        transaction: transaction,
      );

      // creation du rendez-vous
      final nouveauRdv = RendezVous(
        dateRdv: plageVerouillee.dateDuJour,
        heure: plageVerouillee.heureDebut,
        status: 'confirme',
        recapitulatifDescription: motif,
        codeRdv: codeRdv,
        plageHoraireId: plageHoraireId,
        profilBeneficiaireId: beneficiaireCibleId,
        pointDeServiceId: plageVerouillee.pointDeServiceId,
      );

      return await RendezVous.db.insertRow(
        session,
        nouveauRdv,
        transaction: transaction,
      );
    });
  }
}
