
import 'package:test/test.dart';
import 'test_tools/serverpod_test_tools.dart';
import 'package:serverpod/serverpod.dart';
import 'package:serverpod_test/serverpod_test.dart';
import 'package:sante_proximite_server/src/generated/protocol.dart';
import 'package:sante_proximite_server/src/endpoints/point_de_service_endpoint.dart';

void main() {
  withServerpod('Test du PointDeServiceEndpoint', (sessionBuilder, endpoints) {
    var session = sessionBuilder.build();

    // Nettoyage avant chaque test
    setUp(() async {
      await PointDeService.db.deleteWhere(
        session,
        where: (_) => Constant.bool(true),
      );
    });

    test(
      'Devrait inserer et recuperer uniquement les points de service actifs',
      () async {
        // preparation des donnees du test
        await PointDeService.db.insertRow(
          session,
          PointDeService(
            nomEtablissement: 'Pharmacie Marie Sarr',
            typeStructure: 'Pharmacie',
            adresse: 'Rufisque cite radio',
            telephone: '+221338000000',
            latitude: 14.7167,
            longitude: -17.4677,
            estActif: true,
          ),
        );

        await PointDeService.db.insertRow(
          session,
          PointDeService(
            nomEtablissement: 'Clinique Naby',
            typeStructure: 'clinique',
            adresse: 'Avenue naby',
            telephone: '+22133811111',
            latitude: 14.6928,
            longitude: -17.4457,
            estActif: false,
          ),
        );

        // Execution de la methode de l'endpoint
        final resultat = await endpoints.pointDeService.recherchePointDeService(
          sessionBuilder,
        );

        // verifications
        expect(resultat.length, equals(1));
        expect(resultat.first.nomEtablissement, equals('Pharmacie Marie Sarr'));
        expect(resultat.first.estActif, isTrue);
      },
    );

    test(
      'Devrait trier les points de service par proximite geographique',
      () async {
        // Point proche de la position de l'usager
        await PointDeService.db.insertRow(
          session,
          PointDeService(
            nomEtablissement: 'Pharmacie Proche',
            typeStructure: 'pharmacie',
            adresse: 'Avenue sipres',
            telephone: '+22133811111',
            latitude: 14.7200,
            longitude: -17.4700,
            estActif: true,
          ),
        );

        await PointDeService.db.insertRow(
          session,
          PointDeService(
            nomEtablissement: 'Centre de Sante Eloigne',
            typeStructure: 'centre de sante',
            adresse: 'Avenue keur massar',
            telephone: '+22133811121',
            latitude: 14.7800,
            longitude: -17.2700,
            estActif: true,
          ),
        );

        // position simulee de l usager
        const double latUsager = 14.7167;
        const double lonUsager = -17.4677;

        final resultat = await endpoints.pointDeService.recherchePointDeService(
          sessionBuilder,
          latitudeUsager: latUsager,
          longitudeUsager: lonUsager,
        );

        expect(resultat.length, equals(2));
        expect(resultat.first.nomEtablissement, equals('Pharmacie Proche'));
        expect(
          resultat.last.nomEtablissement,
          equals('Centre de Sante Eloigne'),
        );
      },
    );
  });
}
