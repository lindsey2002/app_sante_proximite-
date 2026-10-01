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

abstract class PointDeService implements _i1.SerializableModel {
  PointDeService._({
    this.id,
    required this.nomEtablissement,
    required this.typeStructure,
    required this.adresse,
    required this.latitude,
    required this.longitude,
    this.telephone,
    bool? estActif,
  }) : estActif = estActif ?? true;

  factory PointDeService({
    int? id,
    required String nomEtablissement,
    required String typeStructure,
    required String adresse,
    required double latitude,
    required double longitude,
    String? telephone,
    bool? estActif,
  }) = _PointDeServiceImpl;

  factory PointDeService.fromJson(Map<String, dynamic> jsonSerialization) {
    return PointDeService(
      id: jsonSerialization['id'] as int?,
      nomEtablissement: jsonSerialization['nomEtablissement'] as String,
      typeStructure: jsonSerialization['typeStructure'] as String,
      adresse: jsonSerialization['adresse'] as String,
      latitude: (jsonSerialization['latitude'] as num).toDouble(),
      longitude: (jsonSerialization['longitude'] as num).toDouble(),
      telephone: jsonSerialization['telephone'] as String?,
      estActif: jsonSerialization['estActif'] == null
          ? null
          : _i1.BoolJsonExtension.fromJson(jsonSerialization['estActif']),
    );
  }

  /// The database id, set if the object has been inserted into the
  /// database or if it has been fetched from the database. Otherwise,
  /// the id will be null.
  int? id;

  String nomEtablissement;

  String typeStructure;

  String adresse;

  double latitude;

  double longitude;

  String? telephone;

  bool estActif;

  /// Returns a shallow copy of this [PointDeService]
  /// with some or all fields replaced by the given arguments.
  @_i1.useResult
  PointDeService copyWith({
    int? id,
    String? nomEtablissement,
    String? typeStructure,
    String? adresse,
    double? latitude,
    double? longitude,
    String? telephone,
    bool? estActif,
  });
  @override
  Map<String, dynamic> toJson() {
    return {
      '__className__': 'PointDeService',
      if (id != null) 'id': id,
      'nomEtablissement': nomEtablissement,
      'typeStructure': typeStructure,
      'adresse': adresse,
      'latitude': latitude,
      'longitude': longitude,
      if (telephone != null) 'telephone': telephone,
      'estActif': estActif,
    };
  }

  @override
  String toString() {
    return _i1.SerializationManager.encode(this);
  }
}

class _Undefined {}

class _PointDeServiceImpl extends PointDeService {
  _PointDeServiceImpl({
    int? id,
    required String nomEtablissement,
    required String typeStructure,
    required String adresse,
    required double latitude,
    required double longitude,
    String? telephone,
    bool? estActif,
  }) : super._(
         id: id,
         nomEtablissement: nomEtablissement,
         typeStructure: typeStructure,
         adresse: adresse,
         latitude: latitude,
         longitude: longitude,
         telephone: telephone,
         estActif: estActif,
       );

  /// Returns a shallow copy of this [PointDeService]
  /// with some or all fields replaced by the given arguments.
  @_i1.useResult
  @override
  PointDeService copyWith({
    Object? id = _Undefined,
    String? nomEtablissement,
    String? typeStructure,
    String? adresse,
    double? latitude,
    double? longitude,
    Object? telephone = _Undefined,
    bool? estActif,
  }) {
    return PointDeService(
      id: id is int? ? id : this.id,
      nomEtablissement: nomEtablissement ?? this.nomEtablissement,
      typeStructure: typeStructure ?? this.typeStructure,
      adresse: adresse ?? this.adresse,
      latitude: latitude ?? this.latitude,
      longitude: longitude ?? this.longitude,
      telephone: telephone is String? ? telephone : this.telephone,
      estActif: estActif ?? this.estActif,
    );
  }
}
