import 'package:serverpod/serverpod.dart';
import '../generated/protocol.dart';

class PlageHoraireEndpoint extends Endpoint {
  /// Convertit un format "HH:mm" strict en minutes depuis minuit
  int _heureEnMinutes(String heure) {
    final parts = heure.split(':');
    return int.parse(parts[0]) * 60 + int.parse(parts[1]);
  }

  /// Convertit l'heure d'un DateTime en minutes depuis minuit
  int _dateTimeEnMinutes(DateTime date) {
    return date.hour * 60 + date.minute;
  }

  /// Combine une date avec une chaîne d'heure "HH:mm" pour former un DateTime complet
  DateTime _combinerDateEtHeure(DateTime date, String heureStr) {
    final parts = heureStr.split(':');
    final heure = int.parse(parts[0]);
    final minute = int.parse(parts[1]);
    return DateTime(date.year, date.month, date.day, heure, minute);
  }

  /// Formate un DateTime en chaîne "HH:mm"
  String _formatHeure(DateTime dt) {
    final h = dt.hour.toString().padLeft(2, '0');
    final m = dt.minute.toString().padLeft(2, '0');
    return '$h:$m';
  }

  /// Normalise un DateTime au début exact de la journée (00:00:00)
  DateTime _normaliserDate(DateTime date) {
    return DateTime(date.year, date.month, date.day);
  }

  /// Supprime une plage horaire à condition qu'elle ne soit pas déjà réservée
  Future<bool> supprimerPlageHoraire(
    Session session, {
    required int plageId,
  }) async {
    final plage = await PlageHoraire.db.findById(session, plageId);
    if (plage == null) {
      throw FormatException("La plage horaire à supprimer n'existe pas.");
    }

    if (plage.estReservee) {
      throw FormatException(
        "Impossible de supprimer une plage horaire déjà réservée. Annulez le rendez-vous d'abord.",
      );
    }

    await PlageHoraire.db.deleteRow(session, plage);
    return true;
  }

  /// Vérifie qu'un créneau ne chevauche aucune plage existante pour un soignant donné
  Future<void> _verifierChevauchement(
    Session session, {
    required int personnelSoignantId,
    required DateTime dateNormalisee,
    required String heureDebut,
    required String heureFin,
    int? plageIdExclue,
  }) async {
    final debutJournee = _normaliserDate(dateNormalisee);
    final finJourneeExclue = debutJournee.add(const Duration(days: 1));

    final plagesDuJour = await PlageHoraire.db.find(
      session,
      where: (t) =>
          t.personnelSoignantId.equals(personnelSoignantId) &
          t.dateDuJour.between(debutJournee, finJourneeExclue),
    );

    final nouveauDebutMins = _heureEnMinutes(heureDebut);
    final nouvelleFinMins = _heureEnMinutes(heureFin);

    for (final p in plagesDuJour) {
      if (plageIdExclue != null && p.id == plageIdExclue) continue;

      final pDebutMins = _dateTimeEnMinutes(p.heureDebut);
      final pFinMins = _dateTimeEnMinutes(p.heureFin);

      // Condition de chevauchement : (DebutA < FinB) ET (FinA > DebutB)
      if (nouveauDebutMins < pFinMins && nouvelleFinMins > pDebutMins) {
        throw FormatException(
          "Chevauchement détecté : le soignant a déjà la plage ${_formatHeure(p.heureDebut)}-${_formatHeure(p.heureFin)} sur ce créneau.",
        );
      }
    }
  }

  /// Vérifie l'existence et la liaison entre le point de service et le soignant
  Future<void> _validerRelations(
    Session session, {
    required int pointDeServiceId,
    required int personnelSoignantId,
  }) async {
    final point = await PointDeService.db.findById(session, pointDeServiceId);
    if (point == null || !point.estActif) {
      throw FormatException(
        "Le point de service spécifié n'existe pas ou est inactif.",
      );
    }

    final soignant = await PersonnelSoignant.db.findById(
      session,
      personnelSoignantId,
    );
    if (soignant == null) {
      throw FormatException("Le personnel soignant spécifié n'existe pas.");
    }

    if (soignant.pointDeServiceId != pointDeServiceId) {
      throw FormatException(
        "Le personnel soignant ne rattaché pas à ce point de service.",
      );
    }
  }

  /// Ajoute une plage horaire individuelle avec contrôle de cohérence et anti-chevauchement
  Future<PlageHoraire> ajouterPlageHoraire(
    Session session, {
    required int pointDeServiceId,
    required int personnelSoignantId,
    required DateTime dateDuJour,
    required String heureDebut,
    required String heureFin,
  }) async {
    final debutMins = _heureEnMinutes(heureDebut);
    final finMins = _heureEnMinutes(heureFin);

    if (debutMins >= finMins) {
      throw FormatException(
        "L'heure de début doit être strictement antérieure à l'heure de fin.",
      );
    }

    await _validerRelations(
      session,
      pointDeServiceId: pointDeServiceId,
      personnelSoignantId: personnelSoignantId,
    );

    final dateNorme = _normaliserDate(dateDuJour);

    await _verifierChevauchement(
      session,
      personnelSoignantId: personnelSoignantId,
      dateNormalisee: dateNorme,
      heureDebut: heureDebut,
      heureFin: heureFin,
    );

    final nouvellePlage = PlageHoraire(
      pointDeServiceId: pointDeServiceId,
      personnelSoignantId: personnelSoignantId,
      dateDuJour: dateNorme,
      heureDebut: _combinerDateEtHeure(dateNorme, heureDebut),
      heureFin: _combinerDateEtHeure(dateNorme, heureFin),
      estReservee: false,
    );

    return await PlageHoraire.db.insertRow(session, nouvellePlage);
  }

  /// Génère une suite de créneaux par lot en sautant automatiquement les créneaux déjà existants
  Future<List<PlageHoraire>> genererPlagesHoraires(
    Session session, {
    required int pointDeServiceId,
    required int personnelSoignantId,
    required DateTime dateDuJour,
    required String heureDebutGlobal,
    required String heureFinGlobal,
    required int dureeMinutes,
  }) async {
    if (dureeMinutes < 5 || dureeMinutes > 240) {
      throw FormatException(
        "La durée d'un créneau doit être comprise entre 5 et 240 minutes.",
      );
    }

    int minsDebut = _heureEnMinutes(heureDebutGlobal);
    final minsFin = _heureEnMinutes(heureFinGlobal);

    if (minsDebut >= minsFin) {
      throw FormatException(
        "L'heure de début globale doit être antérieure à l'heure de fin globale.",
      );
    }

    await _validerRelations(
      session,
      pointDeServiceId: pointDeServiceId,
      personnelSoignantId: personnelSoignantId,
    );

    final dateNorme = _normaliserDate(dateDuJour);
    final nouvellesPlages = <PlageHoraire>[];

    while (minsDebut + dureeMinutes <= minsFin) {
      final hDebut = (minsDebut ~/ 60).toString().padLeft(2, '0');
      final mDebut = (minsDebut % 60).toString().padLeft(2, '0');

      final minsSuivantes = minsDebut + dureeMinutes;
      final hFin = (minsSuivantes ~/ 60).toString().padLeft(2, '0');
      final mFin = (minsSuivantes % 60).toString().padLeft(2, '0');

      final stringDebut = '$hDebut:$mDebut';
      final stringFin = '$hFin:$mFin';

      // On vérifie le chevauchement pour chaque créneau à générer
      try {
        await _verifierChevauchement(
          session,
          personnelSoignantId: personnelSoignantId,
          dateNormalisee: dateNorme,
          heureDebut: stringDebut,
          heureFin: stringFin,
        );

        nouvellesPlages.add(
          PlageHoraire(
            pointDeServiceId: pointDeServiceId,
            personnelSoignantId: personnelSoignantId,
            dateDuJour: dateNorme,
            heureDebut: _combinerDateEtHeure(dateNorme, stringDebut),
            heureFin: _combinerDateEtHeure(dateNorme, stringFin),
            estReservee: false,
          ),
        );
      } catch (_) {
        // En cas de chevauchement avec un créneau existant, on saute ce sous-créneau
      }

      minsDebut = minsSuivantes;
    }

    if (nouvellesPlages.isEmpty) {
      return [];
    }

    return await PlageHoraire.db.insert(session, nouvellesPlages);
  }

  /// Modification d'un créneau non réservé
  Future<PlageHoraire> modifierPlageHoraire(
    Session session, {
    required int plageId,
    required String nouvelleHeureDebut,
    required String nouvelleHeureFin,
  }) async {
    final debutMins = _heureEnMinutes(nouvelleHeureDebut);
    final finMins = _heureEnMinutes(nouvelleHeureFin);

    if (debutMins >= finMins) {
      throw FormatException(
        "L'heure de début doit être strictement antérieure à l'heure de fin.",
      );
    }

    final plage = await PlageHoraire.db.findById(session, plageId);
    if (plage == null) {
      throw FormatException("La plage horaire demandée n'existe pas.");
    }

    if (plage.estReservee) {
      throw FormatException(
        "Impossible de modifier une plage horaire déjà réservée.",
      );
    }

    await _verifierChevauchement(
      session,
      personnelSoignantId: plage.personnelSoignantId,
      dateNormalisee: plage.dateDuJour,
      heureDebut: nouvelleHeureDebut,
      heureFin: nouvelleHeureFin,
      plageIdExclue: plage.id,
    );

    plage.heureDebut = _combinerDateEtHeure(
      plage.dateDuJour,
      nouvelleHeureDebut,
    );
    plage.heureFin = _combinerDateEtHeure(
      plage.dateDuJour,
      nouvelleHeureFin,
    );

    return await PlageHoraire.db.updateRow(session, plage);
  }

  /// Consultation des créneaux sur une période avec tri déterministe
  Future<List<PlageHoraire>> recupererPlagesParPeriode(
    Session session, {
    required int pointDeServiceId,
    required DateTime dateDebut,
    required DateTime dateFin,
  }) async {
    final debutNorme = _normaliserDate(dateDebut);
    final finNormeExclue = _normaliserDate(
      dateFin,
    ).add(const Duration(days: 1));

    return await PlageHoraire.db.find(
      session,
      where: (t) =>
          t.pointDeServiceId.equals(pointDeServiceId) &
          t.dateDuJour.between(debutNorme, finNormeExclue),
      orderByList: (t) => [
        Order(column: t.dateDuJour),
        Order(column: t.heureDebut),
      ],
    );
  }

  /// Indique rapidement si un établissement possède au moins un créneau libre
  Future<bool> aDesCreneauxDisponibles(
    Session session, {
    required int pointDeServiceId,
    required DateTime dateDuJour,
  }) async {
    final debutJournee = _normaliserDate(dateDuJour);
    final finJourneeExclue = debutJournee.add(const Duration(days: 1));

    final plages = await PlageHoraire.db.find(
      session,
      where: (t) =>
          t.pointDeServiceId.equals(pointDeServiceId) &
          t.estReservee.equals(false) &
          t.dateDuJour.between(debutJournee, finJourneeExclue),
      limit: 1,
    );

    return plages.isNotEmpty;
  }
}
