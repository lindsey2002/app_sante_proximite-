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
// ignore_for_file: unnecessary_null_comparison

import 'package:serverpod/serverpod.dart' as _i1;
import '../greetings/plage_horaire.dart' as _i2;
import '../greetings/profil_beneficiaire.dart' as _i3;
import '../greetings/point_de_service.dart' as _i4;
import 'package:sante_proximite_server/src/generated/protocol.dart' as _i5;

abstract class RendezVous
    implements _i1.TableRow<int?>, _i1.ProtocolSerialization {
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

  static final t = RendezVousTable();

  static const db = RendezVousRepository._();

  @override
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

  @override
  _i1.Table<int?> get table => t;

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
  Map<String, dynamic> toJsonForProtocol() {
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
      if (plageHoraire != null)
        'plageHoraire': plageHoraire?.toJsonForProtocol(),
      'profilBeneficiaireId': profilBeneficiaireId,
      if (profilBeneficiaire != null)
        'profilBeneficiaire': profilBeneficiaire?.toJsonForProtocol(),
      'pointDeServiceId': pointDeServiceId,
      if (pointDeService != null)
        'pointDeService': pointDeService?.toJsonForProtocol(),
    };
  }

  static RendezVousInclude include({
    _i2.PlageHoraireInclude? plageHoraire,
    _i3.ProfilBeneficiaireInclude? profilBeneficiaire,
    _i4.PointDeServiceInclude? pointDeService,
  }) {
    return RendezVousInclude._(
      plageHoraire: plageHoraire,
      profilBeneficiaire: profilBeneficiaire,
      pointDeService: pointDeService,
    );
  }

  static RendezVousIncludeList includeList({
    _i1.WhereExpressionBuilder<RendezVousTable>? where,
    int? limit,
    int? offset,
    _i1.OrderByBuilder<RendezVousTable>? orderBy,
    bool orderDescending = false,
    _i1.OrderByListBuilder<RendezVousTable>? orderByList,
    RendezVousInclude? include,
  }) {
    return RendezVousIncludeList._(
      where: where,
      limit: limit,
      offset: offset,
      orderBy: orderBy?.call(RendezVous.t),
      orderDescending: orderDescending,
      orderByList: orderByList?.call(RendezVous.t),
      include: include,
    );
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

class RendezVousUpdateTable extends _i1.UpdateTable<RendezVousTable> {
  RendezVousUpdateTable(super.table);

  _i1.ColumnValue<DateTime, DateTime> dateRdv(DateTime value) =>
      _i1.ColumnValue(
        table.dateRdv,
        value,
      );

  _i1.ColumnValue<DateTime, DateTime> heure(DateTime value) => _i1.ColumnValue(
    table.heure,
    value,
  );

  _i1.ColumnValue<String, String> status(String value) => _i1.ColumnValue(
    table.status,
    value,
  );

  _i1.ColumnValue<String, String> recapitulatifDescription(String? value) =>
      _i1.ColumnValue(
        table.recapitulatifDescription,
        value,
      );

  _i1.ColumnValue<String, String> codeRdv(String value) => _i1.ColumnValue(
    table.codeRdv,
    value,
  );

  _i1.ColumnValue<String, String> pieceJointeUrl(String? value) =>
      _i1.ColumnValue(
        table.pieceJointeUrl,
        value,
      );

  _i1.ColumnValue<int, int> plageHoraireId(int value) => _i1.ColumnValue(
    table.plageHoraireId,
    value,
  );

  _i1.ColumnValue<int, int> profilBeneficiaireId(int value) => _i1.ColumnValue(
    table.profilBeneficiaireId,
    value,
  );

  _i1.ColumnValue<int, int> pointDeServiceId(int value) => _i1.ColumnValue(
    table.pointDeServiceId,
    value,
  );
}

class RendezVousTable extends _i1.Table<int?> {
  RendezVousTable({super.tableRelation}) : super(tableName: 'rendez_vous') {
    updateTable = RendezVousUpdateTable(this);
    dateRdv = _i1.ColumnDateTime(
      'dateRdv',
      this,
    );
    heure = _i1.ColumnDateTime(
      'heure',
      this,
    );
    status = _i1.ColumnString(
      'status',
      this,
    );
    recapitulatifDescription = _i1.ColumnString(
      'recapitulatifDescription',
      this,
    );
    codeRdv = _i1.ColumnString(
      'codeRdv',
      this,
    );
    pieceJointeUrl = _i1.ColumnString(
      'pieceJointeUrl',
      this,
    );
    plageHoraireId = _i1.ColumnInt(
      'plageHoraireId',
      this,
    );
    profilBeneficiaireId = _i1.ColumnInt(
      'profilBeneficiaireId',
      this,
    );
    pointDeServiceId = _i1.ColumnInt(
      'pointDeServiceId',
      this,
    );
  }

  late final RendezVousUpdateTable updateTable;

  late final _i1.ColumnDateTime dateRdv;

  late final _i1.ColumnDateTime heure;

  late final _i1.ColumnString status;

  late final _i1.ColumnString recapitulatifDescription;

  late final _i1.ColumnString codeRdv;

  late final _i1.ColumnString pieceJointeUrl;

  late final _i1.ColumnInt plageHoraireId;

  _i2.PlageHoraireTable? _plageHoraire;

  late final _i1.ColumnInt profilBeneficiaireId;

  _i3.ProfilBeneficiaireTable? _profilBeneficiaire;

  late final _i1.ColumnInt pointDeServiceId;

  _i4.PointDeServiceTable? _pointDeService;

  _i2.PlageHoraireTable get plageHoraire {
    if (_plageHoraire != null) return _plageHoraire!;
    _plageHoraire = _i1.createRelationTable(
      relationFieldName: 'plageHoraire',
      field: RendezVous.t.plageHoraireId,
      foreignField: _i2.PlageHoraire.t.id,
      tableRelation: tableRelation,
      createTable: (foreignTableRelation) =>
          _i2.PlageHoraireTable(tableRelation: foreignTableRelation),
    );
    return _plageHoraire!;
  }

  _i3.ProfilBeneficiaireTable get profilBeneficiaire {
    if (_profilBeneficiaire != null) return _profilBeneficiaire!;
    _profilBeneficiaire = _i1.createRelationTable(
      relationFieldName: 'profilBeneficiaire',
      field: RendezVous.t.profilBeneficiaireId,
      foreignField: _i3.ProfilBeneficiaire.t.id,
      tableRelation: tableRelation,
      createTable: (foreignTableRelation) =>
          _i3.ProfilBeneficiaireTable(tableRelation: foreignTableRelation),
    );
    return _profilBeneficiaire!;
  }

  _i4.PointDeServiceTable get pointDeService {
    if (_pointDeService != null) return _pointDeService!;
    _pointDeService = _i1.createRelationTable(
      relationFieldName: 'pointDeService',
      field: RendezVous.t.pointDeServiceId,
      foreignField: _i4.PointDeService.t.id,
      tableRelation: tableRelation,
      createTable: (foreignTableRelation) =>
          _i4.PointDeServiceTable(tableRelation: foreignTableRelation),
    );
    return _pointDeService!;
  }

  @override
  List<_i1.Column> get columns => [
    id,
    dateRdv,
    heure,
    status,
    recapitulatifDescription,
    codeRdv,
    pieceJointeUrl,
    plageHoraireId,
    profilBeneficiaireId,
    pointDeServiceId,
  ];

  @override
  _i1.Table? getRelationTable(String relationField) {
    if (relationField == 'plageHoraire') {
      return plageHoraire;
    }
    if (relationField == 'profilBeneficiaire') {
      return profilBeneficiaire;
    }
    if (relationField == 'pointDeService') {
      return pointDeService;
    }
    return null;
  }
}

class RendezVousInclude extends _i1.IncludeObject {
  RendezVousInclude._({
    _i2.PlageHoraireInclude? plageHoraire,
    _i3.ProfilBeneficiaireInclude? profilBeneficiaire,
    _i4.PointDeServiceInclude? pointDeService,
  }) {
    _plageHoraire = plageHoraire;
    _profilBeneficiaire = profilBeneficiaire;
    _pointDeService = pointDeService;
  }

  _i2.PlageHoraireInclude? _plageHoraire;

  _i3.ProfilBeneficiaireInclude? _profilBeneficiaire;

  _i4.PointDeServiceInclude? _pointDeService;

  @override
  Map<String, _i1.Include?> get includes => {
    'plageHoraire': _plageHoraire,
    'profilBeneficiaire': _profilBeneficiaire,
    'pointDeService': _pointDeService,
  };

  @override
  _i1.Table<int?> get table => RendezVous.t;
}

class RendezVousIncludeList extends _i1.IncludeList {
  RendezVousIncludeList._({
    _i1.WhereExpressionBuilder<RendezVousTable>? where,
    super.limit,
    super.offset,
    super.orderBy,
    super.orderDescending,
    super.orderByList,
    super.include,
  }) {
    super.where = where?.call(RendezVous.t);
  }

  @override
  Map<String, _i1.Include?> get includes => include?.includes ?? {};

  @override
  _i1.Table<int?> get table => RendezVous.t;
}

class RendezVousRepository {
  const RendezVousRepository._();

  final attachRow = const RendezVousAttachRowRepository._();

  /// Returns a list of [RendezVous]s matching the given query parameters.
  ///
  /// Use [where] to specify which items to include in the return value.
  /// If none is specified, all items will be returned.
  ///
  /// To specify the order of the items use [orderBy] or [orderByList]
  /// when sorting by multiple columns.
  ///
  /// The maximum number of items can be set by [limit]. If no limit is set,
  /// all items matching the query will be returned.
  ///
  /// [offset] defines how many items to skip, after which [limit] (or all)
  /// items are read from the database.
  ///
  /// ```dart
  /// var persons = await Persons.db.find(
  ///   session,
  ///   where: (t) => t.lastName.equals('Jones'),
  ///   orderBy: (t) => t.firstName,
  ///   limit: 100,
  /// );
  /// ```
  Future<List<RendezVous>> find(
    _i1.DatabaseSession session, {
    _i1.WhereExpressionBuilder<RendezVousTable>? where,
    int? limit,
    int? offset,
    _i1.OrderByBuilder<RendezVousTable>? orderBy,
    bool orderDescending = false,
    _i1.OrderByListBuilder<RendezVousTable>? orderByList,
    _i1.Transaction? transaction,
    RendezVousInclude? include,
    _i1.LockMode? lockMode,
    _i1.LockBehavior? lockBehavior,
  }) async {
    return session.db.find<RendezVous>(
      where: where?.call(RendezVous.t),
      orderBy: orderBy?.call(RendezVous.t),
      orderByList: orderByList?.call(RendezVous.t),
      orderDescending: orderDescending,
      limit: limit,
      offset: offset,
      transaction: transaction,
      include: include,
      lockMode: lockMode,
      lockBehavior: lockBehavior,
    );
  }

  /// Returns the first matching [RendezVous] matching the given query parameters.
  ///
  /// Use [where] to specify which items to include in the return value.
  /// If none is specified, all items will be returned.
  ///
  /// To specify the order use [orderBy] or [orderByList]
  /// when sorting by multiple columns.
  ///
  /// [offset] defines how many items to skip, after which the next one will be picked.
  ///
  /// ```dart
  /// var youngestPerson = await Persons.db.findFirstRow(
  ///   session,
  ///   where: (t) => t.lastName.equals('Jones'),
  ///   orderBy: (t) => t.age,
  /// );
  /// ```
  Future<RendezVous?> findFirstRow(
    _i1.DatabaseSession session, {
    _i1.WhereExpressionBuilder<RendezVousTable>? where,
    int? offset,
    _i1.OrderByBuilder<RendezVousTable>? orderBy,
    bool orderDescending = false,
    _i1.OrderByListBuilder<RendezVousTable>? orderByList,
    _i1.Transaction? transaction,
    RendezVousInclude? include,
    _i1.LockMode? lockMode,
    _i1.LockBehavior? lockBehavior,
  }) async {
    return session.db.findFirstRow<RendezVous>(
      where: where?.call(RendezVous.t),
      orderBy: orderBy?.call(RendezVous.t),
      orderByList: orderByList?.call(RendezVous.t),
      orderDescending: orderDescending,
      offset: offset,
      transaction: transaction,
      include: include,
      lockMode: lockMode,
      lockBehavior: lockBehavior,
    );
  }

  /// Finds a single [RendezVous] by its [id] or null if no such row exists.
  Future<RendezVous?> findById(
    _i1.DatabaseSession session,
    int id, {
    _i1.Transaction? transaction,
    RendezVousInclude? include,
    _i1.LockMode? lockMode,
    _i1.LockBehavior? lockBehavior,
  }) async {
    return session.db.findById<RendezVous>(
      id,
      transaction: transaction,
      include: include,
      lockMode: lockMode,
      lockBehavior: lockBehavior,
    );
  }

  /// Inserts all [RendezVous]s in the list and returns the inserted rows.
  ///
  /// The returned [RendezVous]s will have their `id` fields set.
  ///
  /// This is an atomic operation, meaning that if one of the rows fails to
  /// insert, none of the rows will be inserted.
  ///
  /// If [ignoreConflicts] is set to `true`, rows that conflict with existing
  /// rows are silently skipped, and only the successfully inserted rows are
  /// returned.
  Future<List<RendezVous>> insert(
    _i1.DatabaseSession session,
    List<RendezVous> rows, {
    _i1.Transaction? transaction,
    bool ignoreConflicts = false,
  }) async {
    return session.db.insert<RendezVous>(
      rows,
      transaction: transaction,
      ignoreConflicts: ignoreConflicts,
    );
  }

  /// Inserts a single [RendezVous] and returns the inserted row.
  ///
  /// The returned [RendezVous] will have its `id` field set.
  Future<RendezVous> insertRow(
    _i1.DatabaseSession session,
    RendezVous row, {
    _i1.Transaction? transaction,
  }) async {
    return session.db.insertRow<RendezVous>(
      row,
      transaction: transaction,
    );
  }

  /// Updates all [RendezVous]s in the list and returns the updated rows. If
  /// [columns] is provided, only those columns will be updated. Defaults to
  /// all columns.
  /// This is an atomic operation, meaning that if one of the rows fails to
  /// update, none of the rows will be updated.
  Future<List<RendezVous>> update(
    _i1.DatabaseSession session,
    List<RendezVous> rows, {
    _i1.ColumnSelections<RendezVousTable>? columns,
    _i1.Transaction? transaction,
  }) async {
    return session.db.update<RendezVous>(
      rows,
      columns: columns?.call(RendezVous.t),
      transaction: transaction,
    );
  }

  /// Updates a single [RendezVous]. The row needs to have its id set.
  /// Optionally, a list of [columns] can be provided to only update those
  /// columns. Defaults to all columns.
  Future<RendezVous> updateRow(
    _i1.DatabaseSession session,
    RendezVous row, {
    _i1.ColumnSelections<RendezVousTable>? columns,
    _i1.Transaction? transaction,
  }) async {
    return session.db.updateRow<RendezVous>(
      row,
      columns: columns?.call(RendezVous.t),
      transaction: transaction,
    );
  }

  /// Updates a single [RendezVous] by its [id] with the specified [columnValues].
  /// Returns the updated row or null if no row with the given id exists.
  Future<RendezVous?> updateById(
    _i1.DatabaseSession session,
    int id, {
    required _i1.ColumnValueListBuilder<RendezVousUpdateTable> columnValues,
    _i1.Transaction? transaction,
  }) async {
    return session.db.updateById<RendezVous>(
      id,
      columnValues: columnValues(RendezVous.t.updateTable),
      transaction: transaction,
    );
  }

  /// Updates all [RendezVous]s matching the [where] expression with the specified [columnValues].
  /// Returns the list of updated rows.
  Future<List<RendezVous>> updateWhere(
    _i1.DatabaseSession session, {
    required _i1.ColumnValueListBuilder<RendezVousUpdateTable> columnValues,
    required _i1.WhereExpressionBuilder<RendezVousTable> where,
    int? limit,
    int? offset,
    _i1.OrderByBuilder<RendezVousTable>? orderBy,
    _i1.OrderByListBuilder<RendezVousTable>? orderByList,
    bool orderDescending = false,
    _i1.Transaction? transaction,
  }) async {
    return session.db.updateWhere<RendezVous>(
      columnValues: columnValues(RendezVous.t.updateTable),
      where: where(RendezVous.t),
      limit: limit,
      offset: offset,
      orderBy: orderBy?.call(RendezVous.t),
      orderByList: orderByList?.call(RendezVous.t),
      orderDescending: orderDescending,
      transaction: transaction,
    );
  }

  /// Deletes all [RendezVous]s in the list and returns the deleted rows.
  /// This is an atomic operation, meaning that if one of the rows fail to
  /// be deleted, none of the rows will be deleted.
  Future<List<RendezVous>> delete(
    _i1.DatabaseSession session,
    List<RendezVous> rows, {
    _i1.Transaction? transaction,
  }) async {
    return session.db.delete<RendezVous>(
      rows,
      transaction: transaction,
    );
  }

  /// Deletes a single [RendezVous].
  Future<RendezVous> deleteRow(
    _i1.DatabaseSession session,
    RendezVous row, {
    _i1.Transaction? transaction,
  }) async {
    return session.db.deleteRow<RendezVous>(
      row,
      transaction: transaction,
    );
  }

  /// Deletes all rows matching the [where] expression.
  Future<List<RendezVous>> deleteWhere(
    _i1.DatabaseSession session, {
    required _i1.WhereExpressionBuilder<RendezVousTable> where,
    _i1.Transaction? transaction,
  }) async {
    return session.db.deleteWhere<RendezVous>(
      where: where(RendezVous.t),
      transaction: transaction,
    );
  }

  /// Counts the number of rows matching the [where] expression. If omitted,
  /// will return the count of all rows in the table.
  Future<int> count(
    _i1.DatabaseSession session, {
    _i1.WhereExpressionBuilder<RendezVousTable>? where,
    int? limit,
    _i1.Transaction? transaction,
  }) async {
    return session.db.count<RendezVous>(
      where: where?.call(RendezVous.t),
      limit: limit,
      transaction: transaction,
    );
  }

  /// Acquires row-level locks on [RendezVous] rows matching the [where] expression.
  Future<void> lockRows(
    _i1.DatabaseSession session, {
    required _i1.WhereExpressionBuilder<RendezVousTable> where,
    required _i1.LockMode lockMode,
    required _i1.Transaction transaction,
    _i1.LockBehavior lockBehavior = _i1.LockBehavior.wait,
  }) async {
    return session.db.lockRows<RendezVous>(
      where: where(RendezVous.t),
      lockMode: lockMode,
      lockBehavior: lockBehavior,
      transaction: transaction,
    );
  }
}

class RendezVousAttachRowRepository {
  const RendezVousAttachRowRepository._();

  /// Creates a relation between the given [RendezVous] and [PlageHoraire]
  /// by setting the [RendezVous]'s foreign key `plageHoraireId` to refer to the [PlageHoraire].
  Future<void> plageHoraire(
    _i1.DatabaseSession session,
    RendezVous rendezVous,
    _i2.PlageHoraire plageHoraire, {
    _i1.Transaction? transaction,
  }) async {
    if (rendezVous.id == null) {
      throw ArgumentError.notNull('rendezVous.id');
    }
    if (plageHoraire.id == null) {
      throw ArgumentError.notNull('plageHoraire.id');
    }

    var $rendezVous = rendezVous.copyWith(plageHoraireId: plageHoraire.id);
    await session.db.updateRow<RendezVous>(
      $rendezVous,
      columns: [RendezVous.t.plageHoraireId],
      transaction: transaction,
    );
  }

  /// Creates a relation between the given [RendezVous] and [ProfilBeneficiaire]
  /// by setting the [RendezVous]'s foreign key `profilBeneficiaireId` to refer to the [ProfilBeneficiaire].
  Future<void> profilBeneficiaire(
    _i1.DatabaseSession session,
    RendezVous rendezVous,
    _i3.ProfilBeneficiaire profilBeneficiaire, {
    _i1.Transaction? transaction,
  }) async {
    if (rendezVous.id == null) {
      throw ArgumentError.notNull('rendezVous.id');
    }
    if (profilBeneficiaire.id == null) {
      throw ArgumentError.notNull('profilBeneficiaire.id');
    }

    var $rendezVous = rendezVous.copyWith(
      profilBeneficiaireId: profilBeneficiaire.id,
    );
    await session.db.updateRow<RendezVous>(
      $rendezVous,
      columns: [RendezVous.t.profilBeneficiaireId],
      transaction: transaction,
    );
  }

  /// Creates a relation between the given [RendezVous] and [PointDeService]
  /// by setting the [RendezVous]'s foreign key `pointDeServiceId` to refer to the [PointDeService].
  Future<void> pointDeService(
    _i1.DatabaseSession session,
    RendezVous rendezVous,
    _i4.PointDeService pointDeService, {
    _i1.Transaction? transaction,
  }) async {
    if (rendezVous.id == null) {
      throw ArgumentError.notNull('rendezVous.id');
    }
    if (pointDeService.id == null) {
      throw ArgumentError.notNull('pointDeService.id');
    }

    var $rendezVous = rendezVous.copyWith(pointDeServiceId: pointDeService.id);
    await session.db.updateRow<RendezVous>(
      $rendezVous,
      columns: [RendezVous.t.pointDeServiceId],
      transaction: transaction,
    );
  }
}
