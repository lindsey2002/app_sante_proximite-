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
import '../greetings/point_de_service.dart' as _i2;
import 'package:sante_proximite_server/src/generated/protocol.dart' as _i3;

abstract class PersonnelSoignant
    implements _i1.TableRow<int?>, _i1.ProtocolSerialization {
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

  static final t = PersonnelSoignantTable();

  static const db = PersonnelSoignantRepository._();

  @override
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

  @override
  _i1.Table<int?> get table => t;

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
  Map<String, dynamic> toJsonForProtocol() {
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
      if (pointDeService != null)
        'pointDeService': pointDeService?.toJsonForProtocol(),
    };
  }

  static PersonnelSoignantInclude include({
    _i2.PointDeServiceInclude? pointDeService,
  }) {
    return PersonnelSoignantInclude._(pointDeService: pointDeService);
  }

  static PersonnelSoignantIncludeList includeList({
    _i1.WhereExpressionBuilder<PersonnelSoignantTable>? where,
    int? limit,
    int? offset,
    _i1.OrderByBuilder<PersonnelSoignantTable>? orderBy,
    bool orderDescending = false,
    _i1.OrderByListBuilder<PersonnelSoignantTable>? orderByList,
    PersonnelSoignantInclude? include,
  }) {
    return PersonnelSoignantIncludeList._(
      where: where,
      limit: limit,
      offset: offset,
      orderBy: orderBy?.call(PersonnelSoignant.t),
      orderDescending: orderDescending,
      orderByList: orderByList?.call(PersonnelSoignant.t),
      include: include,
    );
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

class PersonnelSoignantUpdateTable
    extends _i1.UpdateTable<PersonnelSoignantTable> {
  PersonnelSoignantUpdateTable(super.table);

  _i1.ColumnValue<String, String> nomPersonnel(String value) => _i1.ColumnValue(
    table.nomPersonnel,
    value,
  );

  _i1.ColumnValue<String, String> prenomPersonnel(String value) =>
      _i1.ColumnValue(
        table.prenomPersonnel,
        value,
      );

  _i1.ColumnValue<String, String> email(String value) => _i1.ColumnValue(
    table.email,
    value,
  );

  _i1.ColumnValue<String, String> roleAcces(String value) => _i1.ColumnValue(
    table.roleAcces,
    value,
  );

  _i1.ColumnValue<String, String> motDePasseHash(String value) =>
      _i1.ColumnValue(
        table.motDePasseHash,
        value,
      );

  _i1.ColumnValue<String, String> tokenSession(String? value) =>
      _i1.ColumnValue(
        table.tokenSession,
        value,
      );

  _i1.ColumnValue<DateTime, DateTime> dateDerniereConnexion(DateTime? value) =>
      _i1.ColumnValue(
        table.dateDerniereConnexion,
        value,
      );

  _i1.ColumnValue<String, String> qualification(String value) =>
      _i1.ColumnValue(
        table.qualification,
        value,
      );

  _i1.ColumnValue<int, int> pointDeServiceId(int value) => _i1.ColumnValue(
    table.pointDeServiceId,
    value,
  );
}

class PersonnelSoignantTable extends _i1.Table<int?> {
  PersonnelSoignantTable({super.tableRelation})
    : super(tableName: 'personnel_soignant') {
    updateTable = PersonnelSoignantUpdateTable(this);
    nomPersonnel = _i1.ColumnString(
      'nomPersonnel',
      this,
    );
    prenomPersonnel = _i1.ColumnString(
      'prenomPersonnel',
      this,
    );
    email = _i1.ColumnString(
      'email',
      this,
    );
    roleAcces = _i1.ColumnString(
      'roleAcces',
      this,
    );
    motDePasseHash = _i1.ColumnString(
      'motDePasseHash',
      this,
    );
    tokenSession = _i1.ColumnString(
      'tokenSession',
      this,
    );
    dateDerniereConnexion = _i1.ColumnDateTime(
      'dateDerniereConnexion',
      this,
    );
    qualification = _i1.ColumnString(
      'qualification',
      this,
    );
    pointDeServiceId = _i1.ColumnInt(
      'pointDeServiceId',
      this,
    );
  }

  late final PersonnelSoignantUpdateTable updateTable;

  late final _i1.ColumnString nomPersonnel;

  late final _i1.ColumnString prenomPersonnel;

  late final _i1.ColumnString email;

  late final _i1.ColumnString roleAcces;

  late final _i1.ColumnString motDePasseHash;

  late final _i1.ColumnString tokenSession;

  late final _i1.ColumnDateTime dateDerniereConnexion;

  late final _i1.ColumnString qualification;

  late final _i1.ColumnInt pointDeServiceId;

  _i2.PointDeServiceTable? _pointDeService;

  _i2.PointDeServiceTable get pointDeService {
    if (_pointDeService != null) return _pointDeService!;
    _pointDeService = _i1.createRelationTable(
      relationFieldName: 'pointDeService',
      field: PersonnelSoignant.t.pointDeServiceId,
      foreignField: _i2.PointDeService.t.id,
      tableRelation: tableRelation,
      createTable: (foreignTableRelation) =>
          _i2.PointDeServiceTable(tableRelation: foreignTableRelation),
    );
    return _pointDeService!;
  }

  @override
  List<_i1.Column> get columns => [
    id,
    nomPersonnel,
    prenomPersonnel,
    email,
    roleAcces,
    motDePasseHash,
    tokenSession,
    dateDerniereConnexion,
    qualification,
    pointDeServiceId,
  ];

  @override
  _i1.Table? getRelationTable(String relationField) {
    if (relationField == 'pointDeService') {
      return pointDeService;
    }
    return null;
  }
}

class PersonnelSoignantInclude extends _i1.IncludeObject {
  PersonnelSoignantInclude._({_i2.PointDeServiceInclude? pointDeService}) {
    _pointDeService = pointDeService;
  }

  _i2.PointDeServiceInclude? _pointDeService;

  @override
  Map<String, _i1.Include?> get includes => {'pointDeService': _pointDeService};

  @override
  _i1.Table<int?> get table => PersonnelSoignant.t;
}

class PersonnelSoignantIncludeList extends _i1.IncludeList {
  PersonnelSoignantIncludeList._({
    _i1.WhereExpressionBuilder<PersonnelSoignantTable>? where,
    super.limit,
    super.offset,
    super.orderBy,
    super.orderDescending,
    super.orderByList,
    super.include,
  }) {
    super.where = where?.call(PersonnelSoignant.t);
  }

  @override
  Map<String, _i1.Include?> get includes => include?.includes ?? {};

  @override
  _i1.Table<int?> get table => PersonnelSoignant.t;
}

class PersonnelSoignantRepository {
  const PersonnelSoignantRepository._();

  final attachRow = const PersonnelSoignantAttachRowRepository._();

  /// Returns a list of [PersonnelSoignant]s matching the given query parameters.
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
  Future<List<PersonnelSoignant>> find(
    _i1.DatabaseSession session, {
    _i1.WhereExpressionBuilder<PersonnelSoignantTable>? where,
    int? limit,
    int? offset,
    _i1.OrderByBuilder<PersonnelSoignantTable>? orderBy,
    bool orderDescending = false,
    _i1.OrderByListBuilder<PersonnelSoignantTable>? orderByList,
    _i1.Transaction? transaction,
    PersonnelSoignantInclude? include,
    _i1.LockMode? lockMode,
    _i1.LockBehavior? lockBehavior,
  }) async {
    return session.db.find<PersonnelSoignant>(
      where: where?.call(PersonnelSoignant.t),
      orderBy: orderBy?.call(PersonnelSoignant.t),
      orderByList: orderByList?.call(PersonnelSoignant.t),
      orderDescending: orderDescending,
      limit: limit,
      offset: offset,
      transaction: transaction,
      include: include,
      lockMode: lockMode,
      lockBehavior: lockBehavior,
    );
  }

  /// Returns the first matching [PersonnelSoignant] matching the given query parameters.
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
  Future<PersonnelSoignant?> findFirstRow(
    _i1.DatabaseSession session, {
    _i1.WhereExpressionBuilder<PersonnelSoignantTable>? where,
    int? offset,
    _i1.OrderByBuilder<PersonnelSoignantTable>? orderBy,
    bool orderDescending = false,
    _i1.OrderByListBuilder<PersonnelSoignantTable>? orderByList,
    _i1.Transaction? transaction,
    PersonnelSoignantInclude? include,
    _i1.LockMode? lockMode,
    _i1.LockBehavior? lockBehavior,
  }) async {
    return session.db.findFirstRow<PersonnelSoignant>(
      where: where?.call(PersonnelSoignant.t),
      orderBy: orderBy?.call(PersonnelSoignant.t),
      orderByList: orderByList?.call(PersonnelSoignant.t),
      orderDescending: orderDescending,
      offset: offset,
      transaction: transaction,
      include: include,
      lockMode: lockMode,
      lockBehavior: lockBehavior,
    );
  }

  /// Finds a single [PersonnelSoignant] by its [id] or null if no such row exists.
  Future<PersonnelSoignant?> findById(
    _i1.DatabaseSession session,
    int id, {
    _i1.Transaction? transaction,
    PersonnelSoignantInclude? include,
    _i1.LockMode? lockMode,
    _i1.LockBehavior? lockBehavior,
  }) async {
    return session.db.findById<PersonnelSoignant>(
      id,
      transaction: transaction,
      include: include,
      lockMode: lockMode,
      lockBehavior: lockBehavior,
    );
  }

  /// Inserts all [PersonnelSoignant]s in the list and returns the inserted rows.
  ///
  /// The returned [PersonnelSoignant]s will have their `id` fields set.
  ///
  /// This is an atomic operation, meaning that if one of the rows fails to
  /// insert, none of the rows will be inserted.
  ///
  /// If [ignoreConflicts] is set to `true`, rows that conflict with existing
  /// rows are silently skipped, and only the successfully inserted rows are
  /// returned.
  Future<List<PersonnelSoignant>> insert(
    _i1.DatabaseSession session,
    List<PersonnelSoignant> rows, {
    _i1.Transaction? transaction,
    bool ignoreConflicts = false,
  }) async {
    return session.db.insert<PersonnelSoignant>(
      rows,
      transaction: transaction,
      ignoreConflicts: ignoreConflicts,
    );
  }

  /// Inserts a single [PersonnelSoignant] and returns the inserted row.
  ///
  /// The returned [PersonnelSoignant] will have its `id` field set.
  Future<PersonnelSoignant> insertRow(
    _i1.DatabaseSession session,
    PersonnelSoignant row, {
    _i1.Transaction? transaction,
  }) async {
    return session.db.insertRow<PersonnelSoignant>(
      row,
      transaction: transaction,
    );
  }

  /// Updates all [PersonnelSoignant]s in the list and returns the updated rows. If
  /// [columns] is provided, only those columns will be updated. Defaults to
  /// all columns.
  /// This is an atomic operation, meaning that if one of the rows fails to
  /// update, none of the rows will be updated.
  Future<List<PersonnelSoignant>> update(
    _i1.DatabaseSession session,
    List<PersonnelSoignant> rows, {
    _i1.ColumnSelections<PersonnelSoignantTable>? columns,
    _i1.Transaction? transaction,
  }) async {
    return session.db.update<PersonnelSoignant>(
      rows,
      columns: columns?.call(PersonnelSoignant.t),
      transaction: transaction,
    );
  }

  /// Updates a single [PersonnelSoignant]. The row needs to have its id set.
  /// Optionally, a list of [columns] can be provided to only update those
  /// columns. Defaults to all columns.
  Future<PersonnelSoignant> updateRow(
    _i1.DatabaseSession session,
    PersonnelSoignant row, {
    _i1.ColumnSelections<PersonnelSoignantTable>? columns,
    _i1.Transaction? transaction,
  }) async {
    return session.db.updateRow<PersonnelSoignant>(
      row,
      columns: columns?.call(PersonnelSoignant.t),
      transaction: transaction,
    );
  }

  /// Updates a single [PersonnelSoignant] by its [id] with the specified [columnValues].
  /// Returns the updated row or null if no row with the given id exists.
  Future<PersonnelSoignant?> updateById(
    _i1.DatabaseSession session,
    int id, {
    required _i1.ColumnValueListBuilder<PersonnelSoignantUpdateTable>
    columnValues,
    _i1.Transaction? transaction,
  }) async {
    return session.db.updateById<PersonnelSoignant>(
      id,
      columnValues: columnValues(PersonnelSoignant.t.updateTable),
      transaction: transaction,
    );
  }

  /// Updates all [PersonnelSoignant]s matching the [where] expression with the specified [columnValues].
  /// Returns the list of updated rows.
  Future<List<PersonnelSoignant>> updateWhere(
    _i1.DatabaseSession session, {
    required _i1.ColumnValueListBuilder<PersonnelSoignantUpdateTable>
    columnValues,
    required _i1.WhereExpressionBuilder<PersonnelSoignantTable> where,
    int? limit,
    int? offset,
    _i1.OrderByBuilder<PersonnelSoignantTable>? orderBy,
    _i1.OrderByListBuilder<PersonnelSoignantTable>? orderByList,
    bool orderDescending = false,
    _i1.Transaction? transaction,
  }) async {
    return session.db.updateWhere<PersonnelSoignant>(
      columnValues: columnValues(PersonnelSoignant.t.updateTable),
      where: where(PersonnelSoignant.t),
      limit: limit,
      offset: offset,
      orderBy: orderBy?.call(PersonnelSoignant.t),
      orderByList: orderByList?.call(PersonnelSoignant.t),
      orderDescending: orderDescending,
      transaction: transaction,
    );
  }

  /// Deletes all [PersonnelSoignant]s in the list and returns the deleted rows.
  /// This is an atomic operation, meaning that if one of the rows fail to
  /// be deleted, none of the rows will be deleted.
  Future<List<PersonnelSoignant>> delete(
    _i1.DatabaseSession session,
    List<PersonnelSoignant> rows, {
    _i1.Transaction? transaction,
  }) async {
    return session.db.delete<PersonnelSoignant>(
      rows,
      transaction: transaction,
    );
  }

  /// Deletes a single [PersonnelSoignant].
  Future<PersonnelSoignant> deleteRow(
    _i1.DatabaseSession session,
    PersonnelSoignant row, {
    _i1.Transaction? transaction,
  }) async {
    return session.db.deleteRow<PersonnelSoignant>(
      row,
      transaction: transaction,
    );
  }

  /// Deletes all rows matching the [where] expression.
  Future<List<PersonnelSoignant>> deleteWhere(
    _i1.DatabaseSession session, {
    required _i1.WhereExpressionBuilder<PersonnelSoignantTable> where,
    _i1.Transaction? transaction,
  }) async {
    return session.db.deleteWhere<PersonnelSoignant>(
      where: where(PersonnelSoignant.t),
      transaction: transaction,
    );
  }

  /// Counts the number of rows matching the [where] expression. If omitted,
  /// will return the count of all rows in the table.
  Future<int> count(
    _i1.DatabaseSession session, {
    _i1.WhereExpressionBuilder<PersonnelSoignantTable>? where,
    int? limit,
    _i1.Transaction? transaction,
  }) async {
    return session.db.count<PersonnelSoignant>(
      where: where?.call(PersonnelSoignant.t),
      limit: limit,
      transaction: transaction,
    );
  }

  /// Acquires row-level locks on [PersonnelSoignant] rows matching the [where] expression.
  Future<void> lockRows(
    _i1.DatabaseSession session, {
    required _i1.WhereExpressionBuilder<PersonnelSoignantTable> where,
    required _i1.LockMode lockMode,
    required _i1.Transaction transaction,
    _i1.LockBehavior lockBehavior = _i1.LockBehavior.wait,
  }) async {
    return session.db.lockRows<PersonnelSoignant>(
      where: where(PersonnelSoignant.t),
      lockMode: lockMode,
      lockBehavior: lockBehavior,
      transaction: transaction,
    );
  }
}

class PersonnelSoignantAttachRowRepository {
  const PersonnelSoignantAttachRowRepository._();

  /// Creates a relation between the given [PersonnelSoignant] and [PointDeService]
  /// by setting the [PersonnelSoignant]'s foreign key `pointDeServiceId` to refer to the [PointDeService].
  Future<void> pointDeService(
    _i1.DatabaseSession session,
    PersonnelSoignant personnelSoignant,
    _i2.PointDeService pointDeService, {
    _i1.Transaction? transaction,
  }) async {
    if (personnelSoignant.id == null) {
      throw ArgumentError.notNull('personnelSoignant.id');
    }
    if (pointDeService.id == null) {
      throw ArgumentError.notNull('pointDeService.id');
    }

    var $personnelSoignant = personnelSoignant.copyWith(
      pointDeServiceId: pointDeService.id,
    );
    await session.db.updateRow<PersonnelSoignant>(
      $personnelSoignant,
      columns: [PersonnelSoignant.t.pointDeServiceId],
      transaction: transaction,
    );
  }
}
