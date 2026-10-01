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

abstract class PointDeServiceAvecDistance implements _i1.SerializableModel {
  PointDeServiceAvecDistance._({
    required this.pointDeService,
    this.distanceKm,
  });

  factory PointDeServiceAvecDistance({
    required _i2.PointDeService pointDeService,
    double? distanceKm,
  }) = _PointDeServiceAvecDistanceImpl;

  factory PointDeServiceAvecDistance.fromJson(
    Map<String, dynamic> jsonSerialization,
  ) {
    return PointDeServiceAvecDistance(
      pointDeService: _i3.Protocol().deserialize<_i2.PointDeService>(
        jsonSerialization['pointDeService'],
      ),
      distanceKm: (jsonSerialization['distanceKm'] as num?)?.toDouble(),
    );
  }

  _i2.PointDeService pointDeService;

  double? distanceKm;

  /// Returns a shallow copy of this [PointDeServiceAvecDistance]
  /// with some or all fields replaced by the given arguments.
  @_i1.useResult
  PointDeServiceAvecDistance copyWith({
    _i2.PointDeService? pointDeService,
    double? distanceKm,
  });
  @override
  Map<String, dynamic> toJson() {
    return {
      '__className__': 'PointDeServiceAvecDistance',
      'pointDeService': pointDeService.toJson(),
      if (distanceKm != null) 'distanceKm': distanceKm,
    };
  }

  @override
  String toString() {
    return _i1.SerializationManager.encode(this);
  }
}

class _Undefined {}

class _PointDeServiceAvecDistanceImpl extends PointDeServiceAvecDistance {
  _PointDeServiceAvecDistanceImpl({
    required _i2.PointDeService pointDeService,
    double? distanceKm,
  }) : super._(
         pointDeService: pointDeService,
         distanceKm: distanceKm,
       );

  /// Returns a shallow copy of this [PointDeServiceAvecDistance]
  /// with some or all fields replaced by the given arguments.
  @_i1.useResult
  @override
  PointDeServiceAvecDistance copyWith({
    _i2.PointDeService? pointDeService,
    Object? distanceKm = _Undefined,
  }) {
    return PointDeServiceAvecDistance(
      pointDeService: pointDeService ?? this.pointDeService.copyWith(),
      distanceKm: distanceKm is double? ? distanceKm : this.distanceKm,
    );
  }
}
