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

import 'package:serverpod/serverpod.dart' as _i1;

abstract class PointDeService
    implements _i1.TableRow<int?>, _i1.ProtocolSerialization {
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

  static final t = PointDeServiceTable();

  static const db = PointDeServiceRepository._();

  @override
  int? id;

  String nomEtablissement;

  String typeStructure;

  String adresse;

  double latitude;

  double longitude;

  String? telephone;

  bool estActif;

  @override
  _i1.Table<int?> get table => t;

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
  Map<String, dynamic> toJsonForProtocol() {
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

  static PointDeServiceInclude include() {
    return PointDeServiceInclude._();
  }

  static PointDeServiceIncludeList includeList({
    _i1.WhereExpressionBuilder<PointDeServiceTable>? where,
    int? limit,
    int? offset,
    _i1.OrderByBuilder<PointDeServiceTable>? orderBy,
    bool orderDescending = false,
    _i1.OrderByListBuilder<PointDeServiceTable>? orderByList,
    PointDeServiceInclude? include,
  }) {
    return PointDeServiceIncludeList._(
      where: where,
      limit: limit,
      offset: offset,
      orderBy: orderBy?.call(PointDeService.t),
      orderDescending: orderDescending,
      orderByList: orderByList?.call(PointDeService.t),
      include: include,
    );
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

class PointDeServiceUpdateTable extends _i1.UpdateTable<PointDeServiceTable> {
  PointDeServiceUpdateTable(super.table);

  _i1.ColumnValue<String, String> nomEtablissement(String value) =>
      _i1.ColumnValue(
        table.nomEtablissement,
        value,
      );

  _i1.ColumnValue<String, String> typeStructure(String value) =>
      _i1.ColumnValue(
        table.typeStructure,
        value,
      );

  _i1.ColumnValue<String, String> adresse(String value) => _i1.ColumnValue(
    table.adresse,
    value,
  );

  _i1.ColumnValue<double, double> latitude(double value) => _i1.ColumnValue(
    table.latitude,
    value,
  );

  _i1.ColumnValue<double, double> longitude(double value) => _i1.ColumnValue(
    table.longitude,
    value,
  );

  _i1.ColumnValue<String, String> telephone(String? value) => _i1.ColumnValue(
    table.telephone,
    value,
  );

  _i1.ColumnValue<bool, bool> estActif(bool value) => _i1.ColumnValue(
    table.estActif,
    value,
  );
}

class PointDeServiceTable extends _i1.Table<int?> {
  PointDeServiceTable({super.tableRelation})
    : super(tableName: 'point_de_service') {
    updateTable = PointDeServiceUpdateTable(this);
    nomEtablissement = _i1.ColumnString(
      'nomEtablissement',
      this,
    );
    typeStructure = _i1.ColumnString(
      'typeStructure',
      this,
    );
    adresse = _i1.ColumnString(
      'adresse',
      this,
    );
    latitude = _i1.ColumnDouble(
      'latitude',
      this,
    );
    longitude = _i1.ColumnDouble(
      'longitude',
      this,
    );
    telephone = _i1.ColumnString(
      'telephone',
      this,
    );
    estActif = _i1.ColumnBool(
      'estActif',
      this,
      hasDefault: true,
    );
  }

  late final PointDeServiceUpdateTable updateTable;

  late final _i1.ColumnString nomEtablissement;

  late final _i1.ColumnString typeStructure;

  late final _i1.ColumnString adresse;

  late final _i1.ColumnDouble latitude;

  late final _i1.ColumnDouble longitude;

  late final _i1.ColumnString telephone;

  late final _i1.ColumnBool estActif;

  @override
  List<_i1.Column> get columns => [
    id,
    nomEtablissement,
    typeStructure,
    adresse,
    latitude,
    longitude,
    telephone,
    estActif,
  ];
}

class PointDeServiceInclude extends _i1.IncludeObject {
  PointDeServiceInclude._();

  @override
  Map<String, _i1.Include?> get includes => {};

  @override
  _i1.Table<int?> get table => PointDeService.t;
}

class PointDeServiceIncludeList extends _i1.IncludeList {
  PointDeServiceIncludeList._({
    _i1.WhereExpressionBuilder<PointDeServiceTable>? where,
    super.limit,
    super.offset,
    super.orderBy,
    super.orderDescending,
    super.orderByList,
    super.include,
  }) {
    super.where = where?.call(PointDeService.t);
  }

  @override
  Map<String, _i1.Include?> get includes => include?.includes ?? {};

  @override
  _i1.Table<int?> get table => PointDeService.t;
}

class PointDeServiceRepository {
  const PointDeServiceRepository._();

  /// Returns a list of [PointDeService]s matching the given query parameters.
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
  Future<List<PointDeService>> find(
    _i1.DatabaseSession session, {
    _i1.WhereExpressionBuilder<PointDeServiceTable>? where,
    int? limit,
    int? offset,
    _i1.OrderByBuilder<PointDeServiceTable>? orderBy,
    bool orderDescending = false,
    _i1.OrderByListBuilder<PointDeServiceTable>? orderByList,
    _i1.Transaction? transaction,
    _i1.LockMode? lockMode,
    _i1.LockBehavior? lockBehavior,
  }) async {
    return session.db.find<PointDeService>(
      where: where?.call(PointDeService.t),
      orderBy: orderBy?.call(PointDeService.t),
      orderByList: orderByList?.call(PointDeService.t),
      orderDescending: orderDescending,
      limit: limit,
      offset: offset,
      transaction: transaction,
      lockMode: lockMode,
      lockBehavior: lockBehavior,
    );
  }

  /// Returns the first matching [PointDeService] matching the given query parameters.
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
  Future<PointDeService?> findFirstRow(
    _i1.DatabaseSession session, {
    _i1.WhereExpressionBuilder<PointDeServiceTable>? where,
    int? offset,
    _i1.OrderByBuilder<PointDeServiceTable>? orderBy,
    bool orderDescending = false,
    _i1.OrderByListBuilder<PointDeServiceTable>? orderByList,
    _i1.Transaction? transaction,
    _i1.LockMode? lockMode,
    _i1.LockBehavior? lockBehavior,
  }) async {
    return session.db.findFirstRow<PointDeService>(
      where: where?.call(PointDeService.t),
      orderBy: orderBy?.call(PointDeService.t),
      orderByList: orderByList?.call(PointDeService.t),
      orderDescending: orderDescending,
      offset: offset,
      transaction: transaction,
      lockMode: lockMode,
      lockBehavior: lockBehavior,
    );
  }

  /// Finds a single [PointDeService] by its [id] or null if no such row exists.
  Future<PointDeService?> findById(
    _i1.DatabaseSession session,
    int id, {
    _i1.Transaction? transaction,
    _i1.LockMode? lockMode,
    _i1.LockBehavior? lockBehavior,
  }) async {
    return session.db.findById<PointDeService>(
      id,
      transaction: transaction,
      lockMode: lockMode,
      lockBehavior: lockBehavior,
    );
  }

  /// Inserts all [PointDeService]s in the list and returns the inserted rows.
  ///
  /// The returned [PointDeService]s will have their `id` fields set.
  ///
  /// This is an atomic operation, meaning that if one of the rows fails to
  /// insert, none of the rows will be inserted.
  ///
  /// If [ignoreConflicts] is set to `true`, rows that conflict with existing
  /// rows are silently skipped, and only the successfully inserted rows are
  /// returned.
  Future<List<PointDeService>> insert(
    _i1.DatabaseSession session,
    List<PointDeService> rows, {
    _i1.Transaction? transaction,
    bool ignoreConflicts = false,
  }) async {
    return session.db.insert<PointDeService>(
      rows,
      transaction: transaction,
      ignoreConflicts: ignoreConflicts,
    );
  }

  /// Inserts a single [PointDeService] and returns the inserted row.
  ///
  /// The returned [PointDeService] will have its `id` field set.
  Future<PointDeService> insertRow(
    _i1.DatabaseSession session,
    PointDeService row, {
    _i1.Transaction? transaction,
  }) async {
    return session.db.insertRow<PointDeService>(
      row,
      transaction: transaction,
    );
  }

  /// Updates all [PointDeService]s in the list and returns the updated rows. If
  /// [columns] is provided, only those columns will be updated. Defaults to
  /// all columns.
  /// This is an atomic operation, meaning that if one of the rows fails to
  /// update, none of the rows will be updated.
  Future<List<PointDeService>> update(
    _i1.DatabaseSession session,
    List<PointDeService> rows, {
    _i1.ColumnSelections<PointDeServiceTable>? columns,
    _i1.Transaction? transaction,
  }) async {
    return session.db.update<PointDeService>(
      rows,
      columns: columns?.call(PointDeService.t),
      transaction: transaction,
    );
  }

  /// Updates a single [PointDeService]. The row needs to have its id set.
  /// Optionally, a list of [columns] can be provided to only update those
  /// columns. Defaults to all columns.
  Future<PointDeService> updateRow(
    _i1.DatabaseSession session,
    PointDeService row, {
    _i1.ColumnSelections<PointDeServiceTable>? columns,
    _i1.Transaction? transaction,
  }) async {
    return session.db.updateRow<PointDeService>(
      row,
      columns: columns?.call(PointDeService.t),
      transaction: transaction,
    );
  }

  /// Updates a single [PointDeService] by its [id] with the specified [columnValues].
  /// Returns the updated row or null if no row with the given id exists.
  Future<PointDeService?> updateById(
    _i1.DatabaseSession session,
    int id, {
    required _i1.ColumnValueListBuilder<PointDeServiceUpdateTable> columnValues,
    _i1.Transaction? transaction,
  }) async {
    return session.db.updateById<PointDeService>(
      id,
      columnValues: columnValues(PointDeService.t.updateTable),
      transaction: transaction,
    );
  }

  /// Updates all [PointDeService]s matching the [where] expression with the specified [columnValues].
  /// Returns the list of updated rows.
  Future<List<PointDeService>> updateWhere(
    _i1.DatabaseSession session, {
    required _i1.ColumnValueListBuilder<PointDeServiceUpdateTable> columnValues,
    required _i1.WhereExpressionBuilder<PointDeServiceTable> where,
    int? limit,
    int? offset,
    _i1.OrderByBuilder<PointDeServiceTable>? orderBy,
    _i1.OrderByListBuilder<PointDeServiceTable>? orderByList,
    bool orderDescending = false,
    _i1.Transaction? transaction,
  }) async {
    return session.db.updateWhere<PointDeService>(
      columnValues: columnValues(PointDeService.t.updateTable),
      where: where(PointDeService.t),
      limit: limit,
      offset: offset,
      orderBy: orderBy?.call(PointDeService.t),
      orderByList: orderByList?.call(PointDeService.t),
      orderDescending: orderDescending,
      transaction: transaction,
    );
  }

  /// Deletes all [PointDeService]s in the list and returns the deleted rows.
  /// This is an atomic operation, meaning that if one of the rows fail to
  /// be deleted, none of the rows will be deleted.
  Future<List<PointDeService>> delete(
    _i1.DatabaseSession session,
    List<PointDeService> rows, {
    _i1.Transaction? transaction,
  }) async {
    return session.db.delete<PointDeService>(
      rows,
      transaction: transaction,
    );
  }

  /// Deletes a single [PointDeService].
  Future<PointDeService> deleteRow(
    _i1.DatabaseSession session,
    PointDeService row, {
    _i1.Transaction? transaction,
  }) async {
    return session.db.deleteRow<PointDeService>(
      row,
      transaction: transaction,
    );
  }

  /// Deletes all rows matching the [where] expression.
  Future<List<PointDeService>> deleteWhere(
    _i1.DatabaseSession session, {
    required _i1.WhereExpressionBuilder<PointDeServiceTable> where,
    _i1.Transaction? transaction,
  }) async {
    return session.db.deleteWhere<PointDeService>(
      where: where(PointDeService.t),
      transaction: transaction,
    );
  }

  /// Counts the number of rows matching the [where] expression. If omitted,
  /// will return the count of all rows in the table.
  Future<int> count(
    _i1.DatabaseSession session, {
    _i1.WhereExpressionBuilder<PointDeServiceTable>? where,
    int? limit,
    _i1.Transaction? transaction,
  }) async {
    return session.db.count<PointDeService>(
      where: where?.call(PointDeService.t),
      limit: limit,
      transaction: transaction,
    );
  }

  /// Acquires row-level locks on [PointDeService] rows matching the [where] expression.
  Future<void> lockRows(
    _i1.DatabaseSession session, {
    required _i1.WhereExpressionBuilder<PointDeServiceTable> where,
    required _i1.LockMode lockMode,
    required _i1.Transaction transaction,
    _i1.LockBehavior lockBehavior = _i1.LockBehavior.wait,
  }) async {
    return session.db.lockRows<PointDeService>(
      where: where(PointDeService.t),
      lockMode: lockMode,
      lockBehavior: lockBehavior,
      transaction: transaction,
    );
  }
}
