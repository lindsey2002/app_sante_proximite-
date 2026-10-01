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
import '../greetings/usager.dart' as _i2;
import 'package:sante_proximite_client/src/protocol/protocol.dart' as _i3;

abstract class ProfilBeneficiaire implements _i1.SerializableModel {
  ProfilBeneficiaire._({
    this.id,
    required this.nom,
    required this.prenom,
    required this.lienParente,
    required this.age,
    required this.usagerId,
    this.usager,
  });

  factory ProfilBeneficiaire({
    int? id,
    required String nom,
    required String prenom,
    required String lienParente,
    required int age,
    required int usagerId,
    _i2.Usager? usager,
  }) = _ProfilBeneficiaireImpl;

  factory ProfilBeneficiaire.fromJson(Map<String, dynamic> jsonSerialization) {
    return ProfilBeneficiaire(
      id: jsonSerialization['id'] as int?,
      nom: jsonSerialization['nom'] as String,
      prenom: jsonSerialization['prenom'] as String,
      lienParente: jsonSerialization['lienParente'] as String,
      age: jsonSerialization['age'] as int,
      usagerId: jsonSerialization['usagerId'] as int,
      usager: jsonSerialization['usager'] == null
          ? null
          : _i3.Protocol().deserialize<_i2.Usager>(jsonSerialization['usager']),
    );
  }

  /// The database id, set if the object has been inserted into the
  /// database or if it has been fetched from the database. Otherwise,
  /// the id will be null.
  int? id;

  String nom;

  String prenom;

  String lienParente;

  int age;

  int usagerId;

  _i2.Usager? usager;

  /// Returns a shallow copy of this [ProfilBeneficiaire]
  /// with some or all fields replaced by the given arguments.
  @_i1.useResult
  ProfilBeneficiaire copyWith({
    int? id,
    String? nom,
    String? prenom,
    String? lienParente,
    int? age,
    int? usagerId,
    _i2.Usager? usager,
  });
  @override
  Map<String, dynamic> toJson() {
    return {
      '__className__': 'ProfilBeneficiaire',
      if (id != null) 'id': id,
      'nom': nom,
      'prenom': prenom,
      'lienParente': lienParente,
      'age': age,
      'usagerId': usagerId,
      if (usager != null) 'usager': usager?.toJson(),
    };
  }

  @override
  String toString() {
    return _i1.SerializationManager.encode(this);
  }
}

class _Undefined {}

class _ProfilBeneficiaireImpl extends ProfilBeneficiaire {
  _ProfilBeneficiaireImpl({
    int? id,
    required String nom,
    required String prenom,
    required String lienParente,
    required int age,
    required int usagerId,
    _i2.Usager? usager,
  }) : super._(
         id: id,
         nom: nom,
         prenom: prenom,
         lienParente: lienParente,
         age: age,
         usagerId: usagerId,
         usager: usager,
       );

  /// Returns a shallow copy of this [ProfilBeneficiaire]
  /// with some or all fields replaced by the given arguments.
  @_i1.useResult
  @override
  ProfilBeneficiaire copyWith({
    Object? id = _Undefined,
    String? nom,
    String? prenom,
    String? lienParente,
    int? age,
    int? usagerId,
    Object? usager = _Undefined,
  }) {
    return ProfilBeneficiaire(
      id: id is int? ? id : this.id,
      nom: nom ?? this.nom,
      prenom: prenom ?? this.prenom,
      lienParente: lienParente ?? this.lienParente,
      age: age ?? this.age,
      usagerId: usagerId ?? this.usagerId,
      usager: usager is _i2.Usager? ? usager : this.usager?.copyWith(),
    );
  }
}
