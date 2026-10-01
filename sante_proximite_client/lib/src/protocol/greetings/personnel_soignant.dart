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
import '../greetings/point_de_service.dart' as _i2;
import 'package:sante_proximite_client/src/protocol/protocol.dart' as _i3;

abstract class PersonnelSoignant implements _i1.SerializableModel {
  PersonnelSoignant._({
    this.id,
    required this.nomPersonnel,
    required this.prenomPersonnel,
    required this.email,
    required this.roleAcces,
    required this.motDePasseHash,
    this.tokenSession,
    this.dateDerniereConnexion,
    required this.qualification,
    required this.pointDeServiceId,
    this.pointDeService,
  });

  factory PersonnelSoignant({
    int? id,
    required String nomPersonnel,
    required String prenomPersonnel,
    required String email,
    required String roleAcces,
    required String motDePasseHash,
    String? tokenSession,
    DateTime? dateDerniereConnexion,
    required String qualification,
    required int pointDeServiceId,
    _i2.PointDeService? pointDeService,
  }) = _PersonnelSoignantImpl;

  factory PersonnelSoignant.fromJson(Map<String, dynamic> jsonSerialization) {
    return PersonnelSoignant(
      id: jsonSerialization['id'] as int?,
      nomPersonnel: jsonSerialization['nomPersonnel'] as String,
      prenomPersonnel: jsonSerialization['prenomPersonnel'] as String,
      email: jsonSerialization['email'] as String,
      roleAcces: jsonSerialization['roleAcces'] as String,
      motDePasseHash: jsonSerialization['motDePasseHash'] as String,
      tokenSession: jsonSerialization['tokenSession'] as String?,
      dateDerniereConnexion: jsonSerialization['dateDerniereConnexion'] == null
          ? null
          : _i1.DateTimeJsonExtension.fromJson(
              jsonSerialization['dateDerniereConnexion'],
            ),
      qualification: jsonSerialization['qualification'] as String,
      pointDeServiceId: jsonSerialization['pointDeServiceId'] as int,
      pointDeService: jsonSerialization['pointDeService'] == null
          ? null
          : _i3.Protocol().deserialize<_i2.PointDeService>(
              jsonSerialization['pointDeService'],
            ),
    );
  }

  /// The database id, set if the object has been inserted into the
  /// database or if it has been fetched from the database. Otherwise,
  /// the id will be null.
  int? id;

  String nomPersonnel;

  String prenomPersonnel;

  String email;

  String roleAcces;

  String motDePasseHash;

  String? tokenSession;

  DateTime? dateDerniereConnexion;

  String qualification;

  int pointDeServiceId;

  _i2.PointDeService? pointDeService;

  /// Returns a shallow copy of this [PersonnelSoignant]
  /// with some or all fields replaced by the given arguments.
  @_i1.useResult
  PersonnelSoignant copyWith({
    int? id,
    String? nomPersonnel,
    String? prenomPersonnel,
    String? email,
    String? roleAcces,
    String? motDePasseHash,
    String? tokenSession,
    DateTime? dateDerniereConnexion,
    String? qualification,
    int? pointDeServiceId,
    _i2.PointDeService? pointDeService,
  });
  @override
  Map<String, dynamic> toJson() {
    return {
      '__className__': 'PersonnelSoignant',
      if (id != null) 'id': id,
      'nomPersonnel': nomPersonnel,
      'prenomPersonnel': prenomPersonnel,
      'email': email,
      'roleAcces': roleAcces,
      'motDePasseHash': motDePasseHash,
      if (tokenSession != null) 'tokenSession': tokenSession,
      if (dateDerniereConnexion != null)
        'dateDerniereConnexion': dateDerniereConnexion?.toJson(),
      'qualification': qualification,
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

class _PersonnelSoignantImpl extends PersonnelSoignant {
  _PersonnelSoignantImpl({
    int? id,
    required String nomPersonnel,
    required String prenomPersonnel,
    required String email,
    required String roleAcces,
    required String motDePasseHash,
    String? tokenSession,
    DateTime? dateDerniereConnexion,
    required String qualification,
    required int pointDeServiceId,
    _i2.PointDeService? pointDeService,
  }) : super._(
         id: id,
         nomPersonnel: nomPersonnel,
         prenomPersonnel: prenomPersonnel,
         email: email,
         roleAcces: roleAcces,
         motDePasseHash: motDePasseHash,
         tokenSession: tokenSession,
         dateDerniereConnexion: dateDerniereConnexion,
         qualification: qualification,
         pointDeServiceId: pointDeServiceId,
         pointDeService: pointDeService,
       );

  /// Returns a shallow copy of this [PersonnelSoignant]
  /// with some or all fields replaced by the given arguments.
  @_i1.useResult
  @override
  PersonnelSoignant copyWith({
    Object? id = _Undefined,
    String? nomPersonnel,
    String? prenomPersonnel,
    String? email,
    String? roleAcces,
    String? motDePasseHash,
    Object? tokenSession = _Undefined,
    Object? dateDerniereConnexion = _Undefined,
    String? qualification,
    int? pointDeServiceId,
    Object? pointDeService = _Undefined,
  }) {
    return PersonnelSoignant(
      id: id is int? ? id : this.id,
      nomPersonnel: nomPersonnel ?? this.nomPersonnel,
      prenomPersonnel: prenomPersonnel ?? this.prenomPersonnel,
      email: email ?? this.email,
      roleAcces: roleAcces ?? this.roleAcces,
      motDePasseHash: motDePasseHash ?? this.motDePasseHash,
      tokenSession: tokenSession is String? ? tokenSession : this.tokenSession,
      dateDerniereConnexion: dateDerniereConnexion is DateTime?
          ? dateDerniereConnexion
          : this.dateDerniereConnexion,
      qualification: qualification ?? this.qualification,
      pointDeServiceId: pointDeServiceId ?? this.pointDeServiceId,
      pointDeService: pointDeService is _i2.PointDeService?
          ? pointDeService
          : this.pointDeService?.copyWith(),
    );
  }
}
