import 'dart:math';
import 'package:serverpod/serverpod.dart';
import '../generated/protocol.dart';

class PointDeServiceEndpoint extends Endpoint {
  // Recherche des points de service actifs avec filtres optionnel
  Future<List<PointDeServiceAvecDistance>> recherchePointDeService(
    Session session, {
    String? typeStructure,
    String? query,
    double? latitudeUsager,
    double? longitudeUsager,
    int limit = 20,
    int offset = 0,
  }) async {
    // securisation de la pagination
    final limitSecurise = limit.clamp(1, 100);
    final offsetSecurise = offset < 0 ? 0 : offset;

    // construction de la clause where pour les etablissements actifs
    Expression expr = PointDeService.t.estActif.equals(true);

    if (typeStructure != null && typeStructure.isNotEmpty) {
      expr =
          expr &
          PointDeService.t.typeStructure.ilike('%${typeStructure.trim()}%');
    }

    if (query != null && query.trim().isNotEmpty) {
      final q = '%${query.trim()}%';
      expr = expr & (PointDeService.t.nomEtablissement.ilike(q) |
              PointDeService.t.adresse.ilike(q) |
              PointDeService.t.typeStructure.ilike(q));
    }

    // Si les coordonnees de l'usager sont fournies, tri par distance geographique
    bool gpsValide =
        latitudeUsager != null &&
        longitudeUsager != null &&
        latitudeUsager >= -90 &&
        latitudeUsager <= 90 &&
        longitudeUsager >= -180 &&
        longitudeUsager <= 180;

    List<PointDeService> pointsBruts; 
      if (gpsValide) {
        pointsBruts = await PointDeService.db.find(
          session, where: (_) => expr,
        );
      } else {
        pointsBruts = await PointDeService.db.find(
          session, where: (_) => expr, orderByList: (t) => [Order(column: t.nomEtablissement), Order(column: t.id),], limit: limitSecurise, offset: offsetSecurise,
        );
      }

      List<PointDeServiceAvecDistance> resultats = pointsBruts.map((p) {
        double? distance;
        if(gpsValide){
          distance = _calculerDistanceHaversine(latitudeUsager, longitudeUsager, p.latitude, p.longitude);
        }

        return PointDeServiceAvecDistance(pointDeService: p, distanceKm: distance,);
      }).toList();
      /////////////// Arrete a ce niveau .........

    // tri par distance croissant si gps est valide
    if (gpsValide) {
      resultats.sort(
        (a, b) => (a.distanceKm ?? 0).compareTo(b.distanceKm ?? 0));

        final debut = offsetSecurise < resultats.length ? offsetSecurise : resultats.length;
        final fin = (debut + limitSecurise) < resultats.length ? (debut + limitSecurise) : resultats.length;

        resultats = resultats.sublist(debut, fin);
    }
    return resultats;
  }

  // recuperation de la fiche detaile d un point de service grace a son identifiant
  Future<PointDeService?> recupererPointDeService(
    Session session,
    int id,
  ) async {
    return await PointDeService.db.findById(session, id);
  }

  // Methode de calcul de distance Haversine en kilometres
  double _calculerDistanceHaversine(
    double lat1,
    double lon1,
    double lat2,
    double lon2,
  ) {
    const double rayonTerreKm = 6371.0;
    double dLat = _degresVersRadians(lat2 - lat1);
    double dLon = _degresVersRadians(lon2 - lon1);

    double a =
        sin(dLat / 2) * sin(dLat / 2) +
        cos(_degresVersRadians(lat1)) *
            cos(_degresVersRadians(lat2)) *
            sin(dLon / 2) *
            sin(dLon / 2);

    double c = 2 * atan2(sqrt(a), sqrt(1 - a));
    return rayonTerreKm * c;
  }

  double _degresVersRadians(double degres) {
    return degres * (pi / 180.0);
  }
}
