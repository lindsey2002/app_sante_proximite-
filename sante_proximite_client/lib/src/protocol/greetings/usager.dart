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

abstract class Usager implements _i1.SerializableModel {
  Usager._({
    this.id,
    required this.nom,
    required this.prenom,
    required this.telephone,
    required this.email,
    required this.motDePasseHash,
    this.tokenSession,
    required this.dateDerniereConnexion,
  });

  factory Usager({
    int? id,
    required String nom,
    required String prenom,
    required String telephone,
    required String email,
    required String motDePasseHash,
    String? tokenSession,
    required DateTime dateDerniereConnexion,
  }) = _UsagerImpl;

  factory Usager.fromJson(Map<String, dynamic> jsonSerialization) {
    return Usager(
      id: jsonSerialization['id'] as int?,
      nom: jsonSerialization['nom'] as String,
      prenom: jsonSerialization['prenom'] as String,
      telephone: jsonSerialization['telephone'] as String,
      email: jsonSerialization['email'] as String,
      motDePasseHash: jsonSerialization['motDePasseHash'] as String,
      tokenSession: jsonSerialization['tokenSession'] as String?,
      dateDerniereConnexion: _i1.DateTimeJsonExtension.fromJson(
        jsonSerialization['dateDerniereConnexion'],
      ),
    );
  }

  /// The database id, set if the object has been inserted into the
  /// database or if it has been fetched from the database. Otherwise,
  /// the id will be null.
  int? id;

  String nom;

  String prenom;

  String telephone;

  String email;

  String motDePasseHash;

  String? tokenSession;

  DateTime dateDerniereConnexion;

  /// Returns a shallow copy of this [Usager]
  /// with some or all fields replaced by the given arguments.
  @_i1.useResult
  Usager copyWith({
    int? id,
    String? nom,
    String? prenom,
    String? telephone,
    String? email,
    String? motDePasseHash,
    String? tokenSession,
    DateTime? dateDerniereConnexion,
  });
  @override
  Map<String, dynamic> toJson() {
    return {
      '__className__': 'Usager',
      if (id != null) 'id': id,
      'nom': nom,
      'prenom': prenom,
      'telephone': telephone,
      'email': email,
      'motDePasseHash': motDePasseHash,
      if (tokenSession != null) 'tokenSession': tokenSession,
      'dateDerniereConnexion': dateDerniereConnexion.toJson(),
    };
  }

  @override
  String toString() {
    return _i1.SerializationManager.encode(this);
  }
}

class _Undefined {}

class _UsagerImpl extends Usager {
  _UsagerImpl({
    int? id,
    required String nom,
    required String prenom,
    required String telephone,
    required String email,
    required String motDePasseHash,
    String? tokenSession,
    required DateTime dateDerniereConnexion,
  }) : super._(
         id: id,
         nom: nom,
         prenom: prenom,
         telephone: telephone,
         email: email,
         motDePasseHash: motDePasseHash,
         tokenSession: tokenSession,
         dateDerniereConnexion: dateDerniereConnexion,
       );

  /// Returns a shallow copy of this [Usager]
  /// with some or all fields replaced by the given arguments.
  @_i1.useResult
  @override
  Usager copyWith({
    Object? id = _Undefined,
    String? nom,
    String? prenom,
    String? telephone,
    String? email,
    String? motDePasseHash,
    Object? tokenSession = _Undefined,
    DateTime? dateDerniereConnexion,
  }) {
    return Usager(
      id: id is int? ? id : this.id,
      nom: nom ?? this.nom,
      prenom: prenom ?? this.prenom,
      telephone: telephone ?? this.telephone,
      email: email ?? this.email,
      motDePasseHash: motDePasseHash ?? this.motDePasseHash,
      tokenSession: tokenSession is String? ? tokenSession : this.tokenSession,
      dateDerniereConnexion:
          dateDerniereConnexion ?? this.dateDerniereConnexion,
    );
  }
}
