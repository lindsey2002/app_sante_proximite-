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
import '../greetings/personnel_soignant.dart' as _i2;
import '../greetings/point_de_service.dart' as _i3;
import 'package:sante_proximite_client/src/protocol/protocol.dart' as _i4;

abstract class PlageHoraire implements _i1.SerializableModel {
  PlageHoraire._({
    this.id,
    required this.personnelSoignantId,
    this.personnelSoignant,
    required this.dateDuJour,
    required this.heureDebut,
    required this.heureFin,
    required this.estReservee,
    required this.pointDeServiceId,
    this.pointDeService,
  });

  factory PlageHoraire({
    int? id,
    required int personnelSoignantId,
    _i2.PersonnelSoignant? personnelSoignant,
    required DateTime dateDuJour,
    required DateTime heureDebut,
    required DateTime heureFin,
    required bool estReservee,
    required int pointDeServiceId,
    _i3.PointDeService? pointDeService,
  }) = _PlageHoraireImpl;

  factory PlageHoraire.fromJson(Map<String, dynamic> jsonSerialization) {
    return PlageHoraire(
      id: jsonSerialization['id'] as int?,
      personnelSoignantId: jsonSerialization['personnelSoignantId'] as int,
      personnelSoignant: jsonSerialization['personnelSoignant'] == null
          ? null
          : _i4.Protocol().deserialize<_i2.PersonnelSoignant>(
              jsonSerialization['personnelSoignant'],
            ),
      dateDuJour: _i1.DateTimeJsonExtension.fromJson(
        jsonSerialization['dateDuJour'],
      ),
      heureDebut: _i1.DateTimeJsonExtension.fromJson(
        jsonSerialization['heureDebut'],
      ),
      heureFin: _i1.DateTimeJsonExtension.fromJson(
        jsonSerialization['heureFin'],
      ),
      estReservee: _i1.BoolJsonExtension.fromJson(
        jsonSerialization['estReservee'],
      ),
      pointDeServiceId: jsonSerialization['pointDeServiceId'] as int,
      pointDeService: jsonSerialization['pointDeService'] == null
          ? null
          : _i4.Protocol().deserialize<_i3.PointDeService>(
              jsonSerialization['pointDeService'],
            ),
    );
  }

  /// The database id, set if the object has been inserted into the
  /// database or if it has been fetched from the database. Otherwise,
  /// the id will be null.
  int? id;

  int personnelSoignantId;

  _i2.PersonnelSoignant? personnelSoignant;

  DateTime dateDuJour;

  DateTime heureDebut;

  DateTime heureFin;

  bool estReservee;

  int pointDeServiceId;

  _i3.PointDeService? pointDeService;

  /// Returns a shallow copy of this [PlageHoraire]
  /// with some or all fields replaced by the given arguments.
  @_i1.useResult
  PlageHoraire copyWith({
    int? id,
    int? personnelSoignantId,
    _i2.PersonnelSoignant? personnelSoignant,
    DateTime? dateDuJour,
    DateTime? heureDebut,
    DateTime? heureFin,
    bool? estReservee,
    int? pointDeServiceId,
    _i3.PointDeService? pointDeService,
  });
  @override
  Map<String, dynamic> toJson() {
    return {
      '__className__': 'PlageHoraire',
      if (id != null) 'id': id,
      'personnelSoignantId': personnelSoignantId,
      if (personnelSoignant != null)
        'personnelSoignant': personnelSoignant?.toJson(),
      'dateDuJour': dateDuJour.toJson(),
      'heureDebut': heureDebut.toJson(),
      'heureFin': heureFin.toJson(),
      'estReservee': estReservee,
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

class _PlageHoraireImpl extends PlageHoraire {
  _PlageHoraireImpl({
    int? id,
    required int personnelSoignantId,
    _i2.PersonnelSoignant? personnelSoignant,
    required DateTime dateDuJour,
    required DateTime heureDebut,
    required DateTime heureFin,
    required bool estReservee,
    required int pointDeServiceId,
    _i3.PointDeService? pointDeService,
  }) : super._(
         id: id,
         personnelSoignantId: personnelSoignantId,
         personnelSoignant: personnelSoignant,
         dateDuJour: dateDuJour,
         heureDebut: heureDebut,
         heureFin: heureFin,
         estReservee: estReservee,
         pointDeServiceId: pointDeServiceId,
         pointDeService: pointDeService,
       );

  /// Returns a shallow copy of this [PlageHoraire]
  /// with some or all fields replaced by the given arguments.
  @_i1.useResult
  @override
  PlageHoraire copyWith({
    Object? id = _Undefined,
    int? personnelSoignantId,
    Object? personnelSoignant = _Undefined,
    DateTime? dateDuJour,
    DateTime? heureDebut,
    DateTime? heureFin,
    bool? estReservee,
    int? pointDeServiceId,
    Object? pointDeService = _Undefined,
  }) {
    return PlageHoraire(
      id: id is int? ? id : this.id,
      personnelSoignantId: personnelSoignantId ?? this.personnelSoignantId,
      personnelSoignant: personnelSoignant is _i2.PersonnelSoignant?
          ? personnelSoignant
          : this.personnelSoignant?.copyWith(),
      dateDuJour: dateDuJour ?? this.dateDuJour,
      heureDebut: heureDebut ?? this.heureDebut,
      heureFin: heureFin ?? this.heureFin,
      estReservee: estReservee ?? this.estReservee,
      pointDeServiceId: pointDeServiceId ?? this.pointDeServiceId,
      pointDeService: pointDeService is _i3.PointDeService?
          ? pointDeService
          : this.pointDeService?.copyWith(),
    );
  }
}
