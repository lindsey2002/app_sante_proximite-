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
import '../greetings/personnel_soignant.dart' as _i2;
import '../greetings/point_de_service.dart' as _i3;
import 'package:sante_proximite_server/src/generated/protocol.dart' as _i4;

abstract class PlageHoraire
    implements _i1.TableRow<int?>, _i1.ProtocolSerialization {
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

  static final t = PlageHoraireTable();

  static const db = PlageHoraireRepository._();

  @override
  int? id;

  int personnelSoignantId;

  _i2.PersonnelSoignant? personnelSoignant;

  DateTime dateDuJour;

  DateTime heureDebut;

  DateTime heureFin;

  bool estReservee;

  int pointDeServiceId;

  _i3.PointDeService? pointDeService;

  @override
  _i1.Table<int?> get table => t;

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
  Map<String, dynamic> toJsonForProtocol() {
    return {
      '__className__': 'PlageHoraire',
      if (id != null) 'id': id,
      'personnelSoignantId': personnelSoignantId,
      if (personnelSoignant != null)
        'personnelSoignant': personnelSoignant?.toJsonForProtocol(),
      'dateDuJour': dateDuJour.toJson(),
      'heureDebut': heureDebut.toJson(),
      'heureFin': heureFin.toJson(),
      'estReservee': estReservee,
      'pointDeServiceId': pointDeServiceId,
      if (pointDeService != null)
        'pointDeService': pointDeService?.toJsonForProtocol(),
    };
  }

  static PlageHoraireInclude include({
    _i2.PersonnelSoignantInclude? personnelSoignant,
    _i3.PointDeServiceInclude? pointDeService,
  }) {
    return PlageHoraireInclude._(
      personnelSoignant: personnelSoignant,
      pointDeService: pointDeService,
    );
  }

  static PlageHoraireIncludeList includeList({
    _i1.WhereExpressionBuilder<PlageHoraireTable>? where,
    int? limit,
    int? offset,
    _i1.OrderByBuilder<PlageHoraireTable>? orderBy,
    bool orderDescending = false,
    _i1.OrderByListBuilder<PlageHoraireTable>? orderByList,
    PlageHoraireInclude? include,
  }) {
    return PlageHoraireIncludeList._(
      where: where,
      limit: limit,
      offset: offset,
      orderBy: orderBy?.call(PlageHoraire.t),
      orderDescending: orderDescending,
      orderByList: orderByList?.call(PlageHoraire.t),
      include: include,
    );
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

class PlageHoraireUpdateTable extends _i1.UpdateTable<PlageHoraireTable> {
  PlageHoraireUpdateTable(super.table);

  _i1.ColumnValue<int, int> personnelSoignantId(int value) => _i1.ColumnValue(
    table.personnelSoignantId,
    value,
  );

  _i1.ColumnValue<DateTime, DateTime> dateDuJour(DateTime value) =>
      _i1.ColumnValue(
        table.dateDuJour,
        value,
      );

  _i1.ColumnValue<DateTime, DateTime> heureDebut(DateTime value) =>
      _i1.ColumnValue(
        table.heureDebut,
        value,
      );

  _i1.ColumnValue<DateTime, DateTime> heureFin(DateTime value) =>
      _i1.ColumnValue(
        table.heureFin,
        value,
      );

  _i1.ColumnValue<bool, bool> estReservee(bool value) => _i1.ColumnValue(
    table.estReservee,
    value,
  );

  _i1.ColumnValue<int, int> pointDeServiceId(int value) => _i1.ColumnValue(
    table.pointDeServiceId,
    value,
  );
}

class PlageHoraireTable extends _i1.Table<int?> {
  PlageHoraireTable({super.tableRelation}) : super(tableName: 'plage_horaire') {
    updateTable = PlageHoraireUpdateTable(this);
    personnelSoignantId = _i1.ColumnInt(
      'personnelSoignantId',
      this,
    );
    dateDuJour = _i1.ColumnDateTime(
      'dateDuJour',
      this,
    );
    heureDebut = _i1.ColumnDateTime(
      'heureDebut',
      this,
    );
    heureFin = _i1.ColumnDateTime(
      'heureFin',
      this,
    );
    estReservee = _i1.ColumnBool(
      'estReservee',
      this,
    );
    pointDeServiceId = _i1.ColumnInt(
      'pointDeServiceId',
      this,
    );
  }

  late final PlageHoraireUpdateTable updateTable;

  late final _i1.ColumnInt personnelSoignantId;

  _i2.PersonnelSoignantTable? _personnelSoignant;

  late final _i1.ColumnDateTime dateDuJour;

  late final _i1.ColumnDateTime heureDebut;

  late final _i1.ColumnDateTime heureFin;

  late final _i1.ColumnBool estReservee;

  late final _i1.ColumnInt pointDeServiceId;

  _i3.PointDeServiceTable? _pointDeService;

  _i2.PersonnelSoignantTable get personnelSoignant {
    if (_personnelSoignant != null) return _personnelSoignant!;
    _personnelSoignant = _i1.createRelationTable(
      relationFieldName: 'personnelSoignant',
      field: PlageHoraire.t.personnelSoignantId,
      foreignField: _i2.PersonnelSoignant.t.id,
      tableRelation: tableRelation,
      createTable: (foreignTableRelation) =>
          _i2.PersonnelSoignantTable(tableRelation: foreignTableRelation),
    );
    return _personnelSoignant!;
  }

  _i3.PointDeServiceTable get pointDeService {
    if (_pointDeService != null) return _pointDeService!;
    _pointDeService = _i1.createRelationTable(
      relationFieldName: 'pointDeService',
      field: PlageHoraire.t.pointDeServiceId,
      foreignField: _i3.PointDeService.t.id,
      tableRelation: tableRelation,
      createTable: (foreignTableRelation) =>
          _i3.PointDeServiceTable(tableRelation: foreignTableRelation),
    );
    return _pointDeService!;
  }

  @override
  List<_i1.Column> get columns => [
    id,
    personnelSoignantId,
    dateDuJour,
    heureDebut,
    heureFin,
    estReservee,
    pointDeServiceId,
  ];

  @override
  _i1.Table? getRelationTable(String relationField) {
    if (relationField == 'personnelSoignant') {
      return personnelSoignant;
    }
    if (relationField == 'pointDeService') {
      return pointDeService;
    }
    return null;
  }
}

class PlageHoraireInclude extends _i1.IncludeObject {
  PlageHoraireInclude._({
    _i2.PersonnelSoignantInclude? personnelSoignant,
    _i3.PointDeServiceInclude? pointDeService,
  }) {
    _personnelSoignant = personnelSoignant;
    _pointDeService = pointDeService;
  }

  _i2.PersonnelSoignantInclude? _personnelSoignant;

  _i3.PointDeServiceInclude? _pointDeService;

  @override
  Map<String, _i1.Include?> get includes => {
    'personnelSoignant': _personnelSoignant,
    'pointDeService': _pointDeService,
  };

  @override
  _i1.Table<int?> get table => PlageHoraire.t;
}

class PlageHoraireIncludeList extends _i1.IncludeList {
  PlageHoraireIncludeList._({
    _i1.WhereExpressionBuilder<PlageHoraireTable>? where,
    super.limit,
    super.offset,
    super.orderBy,
    super.orderDescending,
    super.orderByList,
    super.include,
  }) {
    super.where = where?.call(PlageHoraire.t);
  }

  @override
  Map<String, _i1.Include?> get includes => include?.includes ?? {};

  @override
  _i1.Table<int?> get table => PlageHoraire.t;
}

class PlageHoraireRepository {
  const PlageHoraireRepository._();

  final attachRow = const PlageHoraireAttachRowRepository._();

  /// Returns a list of [PlageHoraire]s matching the given query parameters.
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
  Future<List<PlageHoraire>> find(
    _i1.DatabaseSession session, {
    _i1.WhereExpressionBuilder<PlageHoraireTable>? where,
    int? limit,
    int? offset,
    _i1.OrderByBuilder<PlageHoraireTable>? orderBy,
    bool orderDescending = false,
    _i1.OrderByListBuilder<PlageHoraireTable>? orderByList,
    _i1.Transaction? transaction,
    PlageHoraireInclude? include,
    _i1.LockMode? lockMode,
    _i1.LockBehavior? lockBehavior,
  }) async {
    return session.db.find<PlageHoraire>(
      where: where?.call(PlageHoraire.t),
      orderBy: orderBy?.call(PlageHoraire.t),
      orderByList: orderByList?.call(PlageHoraire.t),
      orderDescending: orderDescending,
      limit: limit,
      offset: offset,
      transaction: transaction,
      include: include,
      lockMode: lockMode,
      lockBehavior: lockBehavior,
    );
  }

  /// Returns the first matching [PlageHoraire] matching the given query parameters.
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
  Future<PlageHoraire?> findFirstRow(
    _i1.DatabaseSession session, {
    _i1.WhereExpressionBuilder<PlageHoraireTable>? where,
    int? offset,
    _i1.OrderByBuilder<PlageHoraireTable>? orderBy,
    bool orderDescending = false,
    _i1.OrderByListBuilder<PlageHoraireTable>? orderByList,
    _i1.Transaction? transaction,
    PlageHoraireInclude? include,
    _i1.LockMode? lockMode,
    _i1.LockBehavior? lockBehavior,
  }) async {
    return session.db.findFirstRow<PlageHoraire>(
      where: where?.call(PlageHoraire.t),
      orderBy: orderBy?.call(PlageHoraire.t),
      orderByList: orderByList?.call(PlageHoraire.t),
      orderDescending: orderDescending,
      offset: offset,
      transaction: transaction,
      include: include,
      lockMode: lockMode,
      lockBehavior: lockBehavior,
    );
  }

  /// Finds a single [PlageHoraire] by its [id] or null if no such row exists.
  Future<PlageHoraire?> findById(
    _i1.DatabaseSession session,
    int id, {
    _i1.Transaction? transaction,
    PlageHoraireInclude? include,
    _i1.LockMode? lockMode,
    _i1.LockBehavior? lockBehavior,
  }) async {
    return session.db.findById<PlageHoraire>(
      id,
      transaction: transaction,
      include: include,
      lockMode: lockMode,
      lockBehavior: lockBehavior,
    );
  }

  /// Inserts all [PlageHoraire]s in the list and returns the inserted rows.
  ///
  /// The returned [PlageHoraire]s will have their `id` fields set.
  ///
  /// This is an atomic operation, meaning that if one of the rows fails to
  /// insert, none of the rows will be inserted.
  ///
  /// If [ignoreConflicts] is set to `true`, rows that conflict with existing
  /// rows are silently skipped, and only the successfully inserted rows are
  /// returned.
  Future<List<PlageHoraire>> insert(
    _i1.DatabaseSession session,
    List<PlageHoraire> rows, {
    _i1.Transaction? transaction,
    bool ignoreConflicts = false,
  }) async {
    return session.db.insert<PlageHoraire>(
      rows,
      transaction: transaction,
      ignoreConflicts: ignoreConflicts,
    );
  }

  /// Inserts a single [PlageHoraire] and returns the inserted row.
  ///
  /// The returned [PlageHoraire] will have its `id` field set.
  Future<PlageHoraire> insertRow(
    _i1.DatabaseSession session,
    PlageHoraire row, {
    _i1.Transaction? transaction,
  }) async {
    return session.db.insertRow<PlageHoraire>(
      row,
      transaction: transaction,
    );
  }

  /// Updates all [PlageHoraire]s in the list and returns the updated rows. If
  /// [columns] is provided, only those columns will be updated. Defaults to
  /// all columns.
  /// This is an atomic operation, meaning that if one of the rows fails to
  /// update, none of the rows will be updated.
  Future<List<PlageHoraire>> update(
    _i1.DatabaseSession session,
    List<PlageHoraire> rows, {
    _i1.ColumnSelections<PlageHoraireTable>? columns,
    _i1.Transaction? transaction,
  }) async {
    return session.db.update<PlageHoraire>(
      rows,
      columns: columns?.call(PlageHoraire.t),
      transaction: transaction,
    );
  }

  /// Updates a single [PlageHoraire]. The row needs to have its id set.
  /// Optionally, a list of [columns] can be provided to only update those
  /// columns. Defaults to all columns.
  Future<PlageHoraire> updateRow(
    _i1.DatabaseSession session,
    PlageHoraire row, {
    _i1.ColumnSelections<PlageHoraireTable>? columns,
    _i1.Transaction? transaction,
  }) async {
    return session.db.updateRow<PlageHoraire>(
      row,
      columns: columns?.call(PlageHoraire.t),
      transaction: transaction,
    );
  }

  /// Updates a single [PlageHoraire] by its [id] with the specified [columnValues].
  /// Returns the updated row or null if no row with the given id exists.
  Future<PlageHoraire?> updateById(
    _i1.DatabaseSession session,
    int id, {
    required _i1.ColumnValueListBuilder<PlageHoraireUpdateTable> columnValues,
    _i1.Transaction? transaction,
  }) async {
    return session.db.updateById<PlageHoraire>(
      id,
      columnValues: columnValues(PlageHoraire.t.updateTable),
      transaction: transaction,
    );
  }

  /// Updates all [PlageHoraire]s matching the [where] expression with the specified [columnValues].
  /// Returns the list of updated rows.
  Future<List<PlageHoraire>> updateWhere(
    _i1.DatabaseSession session, {
    required _i1.ColumnValueListBuilder<PlageHoraireUpdateTable> columnValues,
    required _i1.WhereExpressionBuilder<PlageHoraireTable> where,
    int? limit,
    int? offset,
    _i1.OrderByBuilder<PlageHoraireTable>? orderBy,
    _i1.OrderByListBuilder<PlageHoraireTable>? orderByList,
    bool orderDescending = false,
    _i1.Transaction? transaction,
  }) async {
    return session.db.updateWhere<PlageHoraire>(
      columnValues: columnValues(PlageHoraire.t.updateTable),
      where: where(PlageHoraire.t),
      limit: limit,
      offset: offset,
      orderBy: orderBy?.call(PlageHoraire.t),
      orderByList: orderByList?.call(PlageHoraire.t),
      orderDescending: orderDescending,
      transaction: transaction,
    );
  }

  /// Deletes all [PlageHoraire]s in the list and returns the deleted rows.
  /// This is an atomic operation, meaning that if one of the rows fail to
  /// be deleted, none of the rows will be deleted.
  Future<List<PlageHoraire>> delete(
    _i1.DatabaseSession session,
    List<PlageHoraire> rows, {
    _i1.Transaction? transaction,
  }) async {
    return session.db.delete<PlageHoraire>(
      rows,
      transaction: transaction,
    );
  }

  /// Deletes a single [PlageHoraire].
  Future<PlageHoraire> deleteRow(
    _i1.DatabaseSession session,
    PlageHoraire row, {
    _i1.Transaction? transaction,
  }) async {
    return session.db.deleteRow<PlageHoraire>(
      row,
      transaction: transaction,
    );
  }

  /// Deletes all rows matching the [where] expression.
  Future<List<PlageHoraire>> deleteWhere(
    _i1.DatabaseSession session, {
    required _i1.WhereExpressionBuilder<PlageHoraireTable> where,
    _i1.Transaction? transaction,
  }) async {
    return session.db.deleteWhere<PlageHoraire>(
      where: where(PlageHoraire.t),
      transaction: transaction,
    );
  }

  /// Counts the number of rows matching the [where] expression. If omitted,
  /// will return the count of all rows in the table.
  Future<int> count(
    _i1.DatabaseSession session, {
    _i1.WhereExpressionBuilder<PlageHoraireTable>? where,
    int? limit,
    _i1.Transaction? transaction,
  }) async {
    return session.db.count<PlageHoraire>(
      where: where?.call(PlageHoraire.t),
      limit: limit,
      transaction: transaction,
    );
  }

  /// Acquires row-level locks on [PlageHoraire] rows matching the [where] expression.
  Future<void> lockRows(
    _i1.DatabaseSession session, {
    required _i1.WhereExpressionBuilder<PlageHoraireTable> where,
    required _i1.LockMode lockMode,
    required _i1.Transaction transaction,
    _i1.LockBehavior lockBehavior = _i1.LockBehavior.wait,
  }) async {
    return session.db.lockRows<PlageHoraire>(
      where: where(PlageHoraire.t),
      lockMode: lockMode,
      lockBehavior: lockBehavior,
      transaction: transaction,
    );
  }
}

class PlageHoraireAttachRowRepository {
  const PlageHoraireAttachRowRepository._();

  /// Creates a relation between the given [PlageHoraire] and [PersonnelSoignant]
  /// by setting the [PlageHoraire]'s foreign key `personnelSoignantId` to refer to the [PersonnelSoignant].
  Future<void> personnelSoignant(
    _i1.DatabaseSession session,
    PlageHoraire plageHoraire,
    _i2.PersonnelSoignant personnelSoignant, {
    _i1.Transaction? transaction,
  }) async {
    if (plageHoraire.id == null) {
      throw ArgumentError.notNull('plageHoraire.id');
    }
    if (personnelSoignant.id == null) {
      throw ArgumentError.notNull('personnelSoignant.id');
    }

    var $plageHoraire = plageHoraire.copyWith(
      personnelSoignantId: personnelSoignant.id,
    );
    await session.db.updateRow<PlageHoraire>(
      $plageHoraire,
      columns: [PlageHoraire.t.personnelSoignantId],
      transaction: transaction,
    );
  }

  /// Creates a relation between the given [PlageHoraire] and [PointDeService]
  /// by setting the [PlageHoraire]'s foreign key `pointDeServiceId` to refer to the [PointDeService].
  Future<void> pointDeService(
    _i1.DatabaseSession session,
    PlageHoraire plageHoraire,
    _i3.PointDeService pointDeService, {
    _i1.Transaction? transaction,
  }) async {
    if (plageHoraire.id == null) {
      throw ArgumentError.notNull('plageHoraire.id');
    }
    if (pointDeService.id == null) {
      throw ArgumentError.notNull('pointDeService.id');
    }

    var $plageHoraire = plageHoraire.copyWith(
      pointDeServiceId: pointDeService.id,
    );
    await session.db.updateRow<PlageHoraire>(
      $plageHoraire,
      columns: [PlageHoraire.t.pointDeServiceId],
      transaction: transaction,
    );
  }
}
