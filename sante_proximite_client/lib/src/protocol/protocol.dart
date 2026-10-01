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
import 'greetings/greeting.dart' as _i2;
import 'greetings/personnel_soignant.dart' as _i3;
import 'greetings/plage_horaire.dart' as _i4;
import 'greetings/point_de_service.dart' as _i5;
import 'greetings/point_de_service_avec_distance.dart' as _i6;
import 'greetings/profil_beneficiaire.dart' as _i7;
import 'greetings/rendez_vous.dart' as _i8;
import 'greetings/usager.dart' as _i9;
import 'package:sante_proximite_client/src/protocol/greetings/point_de_service_avec_distance.dart'
    as _i10;
import 'package:serverpod_auth_idp_client/serverpod_auth_idp_client.dart'
    as _i11;
import 'package:serverpod_auth_core_client/serverpod_auth_core_client.dart'
    as _i12;
export 'greetings/greeting.dart';
export 'greetings/personnel_soignant.dart';
export 'greetings/plage_horaire.dart';
export 'greetings/point_de_service.dart';
export 'greetings/point_de_service_avec_distance.dart';
export 'greetings/profil_beneficiaire.dart';
export 'greetings/rendez_vous.dart';
export 'greetings/usager.dart';
export 'client.dart';

class Protocol extends _i1.SerializationManager {
  Protocol._();

  factory Protocol() => _instance;

  static final Protocol _instance = Protocol._();

  static String? getClassNameFromObjectJson(dynamic data) {
    if (data is! Map) return null;
    final className = data['__className__'] as String?;
    return className;
  }

  @override
  T deserialize<T>(
    dynamic data, [
    Type? t,
  ]) {
    t ??= T;

    final dataClassName = getClassNameFromObjectJson(data);
    if (dataClassName != null && dataClassName != getClassNameForType(t)) {
      try {
        return deserializeByClassName({
          'className': dataClassName,
          'data': data,
        });
      } on FormatException catch (_) {
        // If the className is not recognized (e.g., older client receiving
        // data with a new subtype), fall back to deserializing without the
        // className, using the expected type T.
      }
    }

    if (t == _i2.Greeting) {
      return _i2.Greeting.fromJson(data) as T;
    }
    if (t == _i3.PersonnelSoignant) {
      return _i3.PersonnelSoignant.fromJson(data) as T;
    }
    if (t == _i4.PlageHoraire) {
      return _i4.PlageHoraire.fromJson(data) as T;
    }
    if (t == _i5.PointDeService) {
      return _i5.PointDeService.fromJson(data) as T;
    }
    if (t == _i6.PointDeServiceAvecDistance) {
      return _i6.PointDeServiceAvecDistance.fromJson(data) as T;
    }
    if (t == _i7.ProfilBeneficiaire) {
      return _i7.ProfilBeneficiaire.fromJson(data) as T;
    }
    if (t == _i8.RendezVous) {
      return _i8.RendezVous.fromJson(data) as T;
    }
    if (t == _i9.Usager) {
      return _i9.Usager.fromJson(data) as T;
    }
    if (t == _i1.getType<_i2.Greeting?>()) {
      return (data != null ? _i2.Greeting.fromJson(data) : null) as T;
    }
    if (t == _i1.getType<_i3.PersonnelSoignant?>()) {
      return (data != null ? _i3.PersonnelSoignant.fromJson(data) : null) as T;
    }
    if (t == _i1.getType<_i4.PlageHoraire?>()) {
      return (data != null ? _i4.PlageHoraire.fromJson(data) : null) as T;
    }
    if (t == _i1.getType<_i5.PointDeService?>()) {
      return (data != null ? _i5.PointDeService.fromJson(data) : null) as T;
    }
    if (t == _i1.getType<_i6.PointDeServiceAvecDistance?>()) {
      return (data != null
              ? _i6.PointDeServiceAvecDistance.fromJson(data)
              : null)
          as T;
    }
    if (t == _i1.getType<_i7.ProfilBeneficiaire?>()) {
      return (data != null ? _i7.ProfilBeneficiaire.fromJson(data) : null) as T;
    }
    if (t == _i1.getType<_i8.RendezVous?>()) {
      return (data != null ? _i8.RendezVous.fromJson(data) : null) as T;
    }
    if (t == _i1.getType<_i9.Usager?>()) {
      return (data != null ? _i9.Usager.fromJson(data) : null) as T;
    }
    if (t == List<_i10.PointDeServiceAvecDistance>) {
      return (data as List)
              .map((e) => deserialize<_i10.PointDeServiceAvecDistance>(e))
              .toList()
          as T;
    }
    try {
      return _i11.Protocol().deserialize<T>(data, t);
    } on _i1.DeserializationTypeNotFoundException catch (_) {}
    try {
      return _i12.Protocol().deserialize<T>(data, t);
    } on _i1.DeserializationTypeNotFoundException catch (_) {}
    return super.deserialize<T>(data, t);
  }

  static String? getClassNameForType(Type type) {
    return switch (type) {
      _i2.Greeting => 'Greeting',
      _i3.PersonnelSoignant => 'PersonnelSoignant',
      _i4.PlageHoraire => 'PlageHoraire',
      _i5.PointDeService => 'PointDeService',
      _i6.PointDeServiceAvecDistance => 'PointDeServiceAvecDistance',
      _i7.ProfilBeneficiaire => 'ProfilBeneficiaire',
      _i8.RendezVous => 'RendezVous',
      _i9.Usager => 'Usager',
      _ => null,
    };
  }

  @override
  String? getClassNameForObject(Object? data) {
    String? className = super.getClassNameForObject(data);
    if (className != null) return className;

    if (data is Map<String, dynamic> && data['__className__'] is String) {
      return (data['__className__'] as String).replaceFirst(
        'sante_proximite.',
        '',
      );
    }

    switch (data) {
      case _i2.Greeting():
        return 'Greeting';
      case _i3.PersonnelSoignant():
        return 'PersonnelSoignant';
      case _i4.PlageHoraire():
        return 'PlageHoraire';
      case _i5.PointDeService():
        return 'PointDeService';
      case _i6.PointDeServiceAvecDistance():
        return 'PointDeServiceAvecDistance';
      case _i7.ProfilBeneficiaire():
        return 'ProfilBeneficiaire';
      case _i8.RendezVous():
        return 'RendezVous';
      case _i9.Usager():
        return 'Usager';
    }
    className = _i11.Protocol().getClassNameForObject(data);
    if (className != null) {
      return 'serverpod_auth_idp.$className';
    }
    className = _i12.Protocol().getClassNameForObject(data);
    if (className != null) {
      return 'serverpod_auth_core.$className';
    }
    return null;
  }

  @override
  dynamic deserializeByClassName(Map<String, dynamic> data) {
    var dataClassName = data['className'];
    if (dataClassName is! String) {
      return super.deserializeByClassName(data);
    }
    if (dataClassName == 'Greeting') {
      return deserialize<_i2.Greeting>(data['data']);
    }
    if (dataClassName == 'PersonnelSoignant') {
      return deserialize<_i3.PersonnelSoignant>(data['data']);
    }
    if (dataClassName == 'PlageHoraire') {
      return deserialize<_i4.PlageHoraire>(data['data']);
    }
    if (dataClassName == 'PointDeService') {
      return deserialize<_i5.PointDeService>(data['data']);
    }
    if (dataClassName == 'PointDeServiceAvecDistance') {
      return deserialize<_i6.PointDeServiceAvecDistance>(data['data']);
    }
    if (dataClassName == 'ProfilBeneficiaire') {
      return deserialize<_i7.ProfilBeneficiaire>(data['data']);
    }
    if (dataClassName == 'RendezVous') {
      return deserialize<_i8.RendezVous>(data['data']);
    }
    if (dataClassName == 'Usager') {
      return deserialize<_i9.Usager>(data['data']);
    }
    if (dataClassName.startsWith('serverpod_auth_idp.')) {
      data['className'] = dataClassName.substring(19);
      return _i11.Protocol().deserializeByClassName(data);
    }
    if (dataClassName.startsWith('serverpod_auth_core.')) {
      data['className'] = dataClassName.substring(20);
      return _i12.Protocol().deserializeByClassName(data);
    }
    return super.deserializeByClassName(data);
  }

  /// Maps any `Record`s known to this [Protocol] to their JSON representation
  ///
  /// Throws in case the record type is not known.
  ///
  /// This method will return `null` (only) for `null` inputs.
  Map<String, dynamic>? mapRecordToJson(Record? record) {
    if (record == null) {
      return null;
    }
    try {
      return _i11.Protocol().mapRecordToJson(record);
    } catch (_) {}
    try {
      return _i12.Protocol().mapRecordToJson(record);
    } catch (_) {}
    throw Exception('Unsupported record type ${record.runtimeType}');
  }
}
