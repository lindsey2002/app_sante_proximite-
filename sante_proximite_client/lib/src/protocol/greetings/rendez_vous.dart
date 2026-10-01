/* AUTOMATICALLY GENERATED CODE DO NOT MODIFY */
/*   To generate run: "serverpod generate"    */

// ignore_for_file: implementation_imports
// ignore_for_file: library_private_types_in_public_api
// ignore_for_file: non_constant_identifier_names
// ignore_for_file: public_member_api_docs
// ignore_for_file: type_literal_in_constant_pattern
// ignore_for_file: use_super_parameters
// ignore_for_file: invalid_use_of_internal_member

// ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:serverpod_client/serverpod_client.dart' as _i1;
import '../greetings/plage_horaire.dart' as _i2;
import '../greetings/profil_beneficiaire.dart' as _i3;
import '../greetings/point_de_service.dart' as _i4;
import 'package:sante_proximite_client/src/protocol/protocol.dart' as _i5;

abstract class RendezVous implements _i1.SerializableModel {
  RendezVous._({
    this.id,
    required this.dateRdv,
    required this.heure,
    required this.status,
    this.recapitulatifDescription,
    required this.codeRdv,
    this.pieceJointeUrl,
    required this.plageHoraireId,
    this.plageHoraire,
    required this.profilBeneficiaireId,
    this.profilBeneficiaire,
    required this.pointDeServiceId,
    this.pointDeService,
  });

  factory RendezVous({
    int? id,
    required DateTime dateRdv,
    required DateTime heure,
    required String status,
    String? recapitulatifDescription,
    required String codeRdv,
    String? pieceJointeUrl,
    required int plageHoraireId,
    _i2.PlageHoraire? plageHoraire,
    required int profilBeneficiaireId,
    _i3.ProfilBeneficiaire? profilBeneficiaire,
    required int pointDeServiceId,
    _i4.PointDeService? pointDeService,
  }) = _RendezVousImpl;

  factory RendezVous.fromJson(Map<String, dynamic> jsonSerialization) {
    return RendezVous(
      id: jsonSerialization['id'] as int?,
      dateRdv: _i1.DateTimeJsonExtension.fromJson(jsonSerialization['dateRdv']),
      heure: _i1.DateTimeJsonExtension.fromJson(jsonSerialization['heure']),
      status: jsonSerialization['status'] as String,
      recapitulatifDescription:
          jsonSerialization['recapitulatifDescription'] as String?,
      codeRdv: jsonSerialization['codeRdv'] as String,
      pieceJointeUrl: jsonSerialization['pieceJointeUrl'] as String?,
      plageHoraireId: jsonSerialization['plageHoraireId'] as int,
      plageHoraire: jsonSerialization['plageHoraire'] == null
          ? null
          : _i5.Protocol().deserialize<_i2.PlageHoraire>(
              jsonSerialization['plageHoraire'],
            ),
      profilBeneficiaireId: jsonSerialization['profilBeneficiaireId'] as int,
      profilBeneficiaire: jsonSerialization['profilBeneficiaire'] == null
          ? null
          : _i5.Protocol().deserialize<_i3.ProfilBeneficiaire>(
              jsonSerialization['profilBeneficiaire'],
            ),
      pointDeServiceId: jsonSerialization['pointDeServiceId'] as int,
      pointDeService: jsonSerialization['pointDeService'] == null
          ? null
          : _i5.Protocol().deserialize<_i4.PointDeService>(
              jsonSerialization['pointDeService'],
            ),
    );
  }

  /// The database id, set if the object has been inserted into the
  /// database or if it has been fetched from the database. Otherwise,
  /// the id will be null.
  int? id;

  DateTime dateRdv;

  DateTime heure;

  String status;

  String? recapitulatifDescription;

  String codeRdv;

  String? pieceJointeUrl;

  int plageHoraireId;

  _i2.PlageHoraire? plageHoraire;

  int profilBeneficiaireId;

  _i3.ProfilBeneficiaire? profilBeneficiaire;

  int pointDeServiceId;

  _i4.PointDeService? pointDeService;

  /// Returns a shallow copy of this [RendezVous]
  /// with some or all fields replaced by the given arguments.
  @_i1.useResult
  RendezVous copyWith({
    int? id,
    DateTime? dateRdv,
    DateTime? heure,
    String? status,
    String? recapitulatifDescription,
    String? codeRdv,
    String? pieceJointeUrl,
    int? plageHoraireId,
    _i2.PlageHoraire? plageHoraire,
    int? profilBeneficiaireId,
    _i3.ProfilBeneficiaire? profilBeneficiaire,
    int? pointDeServiceId,
    _i4.PointDeService? pointDeService,
  });
  @override
  Map<String, dynamic> toJson() {
    return {
      '__className__': 'RendezVous',
      if (id != null) 'id': id,
      'dateRdv': dateRdv.toJson(),
      'heure': heure.toJson(),
      'status': status,
      if (recapitulatifDescription != null)
        'recapitulatifDescription': recapitulatifDescription,
      'codeRdv': codeRdv,
      if (pieceJointeUrl != null) 'pieceJointeUrl': pieceJointeUrl,
      'plageHoraireId': plageHoraireId,
      if (plageHoraire != null) 'plageHoraire': plageHoraire?.toJson(),
      'profilBeneficiaireId': profilBeneficiaireId,
      if (profilBeneficiaire != null)
        'profilBeneficiaire': profilBeneficiaire?.toJson(),
      'pointDeServiceId': pointDeServiceId,
      if (pointDeService != null) 'pointDeService': pointDeService?.toJson(),
    };
  }

  @override
  String toString() {
    return _i1.SerializationManager.encode(this);
  }
}

class _Undefined {}

class _RendezVousImpl extends RendezVous {
  _RendezVousImpl({
    int? id,
    required DateTime dateRdv,
    required DateTime heure,
    required String status,
    String? recapitulatifDescription,
    required String codeRdv,
    String? pieceJointeUrl,
    required int plageHoraireId,
    _i2.PlageHoraire? plageHoraire,
    required int profilBeneficiaireId,
    _i3.ProfilBeneficiaire? profilBeneficiaire,
    required int pointDeServiceId,
    _i4.PointDeService? pointDeService,
  }) : super._(
         id: id,
         dateRdv: dateRdv,
         heure: heure,
         status: status,
         recapitulatifDescription: recapitulatifDescription,
         codeRdv: codeRdv,
         pieceJointeUrl: pieceJointeUrl,
         plageHoraireId: plageHoraireId,
         plageHoraire: plageHoraire,
         profilBeneficiaireId: profilBeneficiaireId,
         profilBeneficiaire: profilBeneficiaire,
         pointDeServiceId: pointDeServiceId,
         pointDeService: pointDeService,
       );

  /// Returns a shallow copy of this [RendezVous]
  /// with some or all fields replaced by the given arguments.
  @_i1.useResult
  @override
  RendezVous copyWith({
    Object? id = _Undefined,
    DateTime? dateRdv,
    DateTime? heure,
    String? status,
    Object? recapitulatifDescription = _Undefined,
    String? codeRdv,
    Object? pieceJointeUrl = _Undefined,
    int? plageHoraireId,
    Object? plageHoraire = _Undefined,
    int? profilBeneficiaireId,
    Object? profilBeneficiaire = _Undefined,
    int? pointDeServiceId,
    Object? pointDeService = _Undefined,
  }) {
    return RendezVous(
      id: id is int? ? id : this.id,
      dateRdv: dateRdv ?? this.dateRdv,
      heure: heure ?? this.heure,
      status: status ?? this.status,
      recapitulatifDescription: recapitulatifDescription is String?
          ? recapitulatifDescription
          : this.recapitulatifDescription,
      codeRdv: codeRdv ?? this.codeRdv,
      pieceJointeUrl: pieceJointeUrl is String?
          ? pieceJointeUrl
          : this.pieceJointeUrl,
      plageHoraireId: plageHoraireId ?? this.plageHoraireId,
      plageHoraire: plageHoraire is _i2.PlageHoraire?
          ? plageHoraire
          : this.plageHoraire?.copyWith(),
      profilBeneficiaireId: profilBeneficiaireId ?? this.profilBeneficiaireId,
      profilBeneficiaire: profilBeneficiaire is _i3.ProfilBeneficiaire?
          ? profilBeneficiaire
          : this.profilBeneficiaire?.copyWith(),
      pointDeServiceId: pointDeServiceId ?? this.pointDeServiceId,
      pointDeService: pointDeService is _i4.PointDeService?
          ? pointDeService
          : this.pointDeService?.copyWith(),
    );
  }
}
