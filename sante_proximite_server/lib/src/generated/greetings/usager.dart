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

abstract class Usager implements _i1.TableRow<int?>, _i1.ProtocolSerialization {
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

  static final t = UsagerTable();

  static const db = UsagerRepository._();

  @override
  int? id;

  String nom;

  String prenom;

  String telephone;

  String email;

  String motDePasseHash;

  String? tokenSession;

  DateTime dateDerniereConnexion;

  @override
  _i1.Table<int?> get table => t;

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
  Map<String, dynamic> toJsonForProtocol() {
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

  static UsagerInclude include() {
    return UsagerInclude._();
  }

  static UsagerIncludeList includeList({
    _i1.WhereExpressionBuilder<UsagerTable>? where,
    int? limit,
    int? offset,
    _i1.OrderByBuilder<UsagerTable>? orderBy,
    bool orderDescending = false,
    _i1.OrderByListBuilder<UsagerTable>? orderByList,
    UsagerInclude? include,
  }) {
    return UsagerIncludeList._(
      where: where,
      limit: limit,
      offset: offset,
      orderBy: orderBy?.call(Usager.t),
      orderDescending: orderDescending,
      orderByList: orderByList?.call(Usager.t),
      include: include,
    );
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

class UsagerUpdateTable extends _i1.UpdateTable<UsagerTable> {
  UsagerUpdateTable(super.table);

  _i1.ColumnValue<String, String> nom(String value) => _i1.ColumnValue(
    table.nom,
    value,
  );

  _i1.ColumnValue<String, String> prenom(String value) => _i1.ColumnValue(
    table.prenom,
    value,
  );

  _i1.ColumnValue<String, String> telephone(String value) => _i1.ColumnValue(
    table.telephone,
    value,
  );

  _i1.ColumnValue<String, String> email(String value) => _i1.ColumnValue(
    table.email,
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

  _i1.ColumnValue<DateTime, DateTime> dateDerniereConnexion(DateTime value) =>
      _i1.ColumnValue(
        table.dateDerniereConnexion,
        value,
      );
}

class UsagerTable extends _i1.Table<int?> {
  UsagerTable({super.tableRelation}) : super(tableName: 'usager') {
    updateTable = UsagerUpdateTable(this);
    nom = _i1.ColumnString(
      'nom',
      this,
    );
    prenom = _i1.ColumnString(
      'prenom',
      this,
    );
    telephone = _i1.ColumnString(
      'telephone',
      this,
    );
    email = _i1.ColumnString(
      'email',
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
  }

  late final UsagerUpdateTable updateTable;

  late final _i1.ColumnString nom;

  late final _i1.ColumnString prenom;

  late final _i1.ColumnString telephone;

  late final _i1.ColumnString email;

  late final _i1.ColumnString motDePasseHash;

  late final _i1.ColumnString tokenSession;

  late final _i1.ColumnDateTime dateDerniereConnexion;

  @override
  List<_i1.Column> get columns => [
    id,
    nom,
    prenom,
    telephone,
    email,
    motDePasseHash,
    tokenSession,
    dateDerniereConnexion,
  ];
}

class UsagerInclude extends _i1.IncludeObject {
  UsagerInclude._();

  @override
  Map<String, _i1.Include?> get includes => {};

  @override
  _i1.Table<int?> get table => Usager.t;
}

class UsagerIncludeList extends _i1.IncludeList {
  UsagerIncludeList._({
    _i1.WhereExpressionBuilder<UsagerTable>? where,
    super.limit,
    super.offset,
    super.orderBy,
    super.orderDescending,
    super.orderByList,
    super.include,
  }) {
    super.where = where?.call(Usager.t);
  }

  @override
  Map<String, _i1.Include?> get includes => include?.includes ?? {};

  @override
  _i1.Table<int?> get table => Usager.t;
}

class UsagerRepository {
  const UsagerRepository._();

  /// Returns a list of [Usager]s matching the given query parameters.
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
  Future<List<Usager>> find(
    _i1.DatabaseSession session, {
    _i1.WhereExpressionBuilder<UsagerTable>? where,
    int? limit,
    int? offset,
    _i1.OrderByBuilder<UsagerTable>? orderBy,
    bool orderDescending = false,
    _i1.OrderByListBuilder<UsagerTable>? orderByList,
    _i1.Transaction? transaction,
    _i1.LockMode? lockMode,
    _i1.LockBehavior? lockBehavior,
  }) async {
    return session.db.find<Usager>(
      where: where?.call(Usager.t),
      orderBy: orderBy?.call(Usager.t),
      orderByList: orderByList?.call(Usager.t),
      orderDescending: orderDescending,
      limit: limit,
      offset: offset,
      transaction: transaction,
      lockMode: lockMode,
      lockBehavior: lockBehavior,
    );
  }

  /// Returns the first matching [Usager] matching the given query parameters.
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
  Future<Usager?> findFirstRow(
    _i1.DatabaseSession session, {
    _i1.WhereExpressionBuilder<UsagerTable>? where,
    int? offset,
    _i1.OrderByBuilder<UsagerTable>? orderBy,
    bool orderDescending = false,
    _i1.OrderByListBuilder<UsagerTable>? orderByList,
    _i1.Transaction? transaction,
    _i1.LockMode? lockMode,
    _i1.LockBehavior? lockBehavior,
  }) async {
    return session.db.findFirstRow<Usager>(
      where: where?.call(Usager.t),
      orderBy: orderBy?.call(Usager.t),
      orderByList: orderByList?.call(Usager.t),
      orderDescending: orderDescending,
      offset: offset,
      transaction: transaction,
      lockMode: lockMode,
      lockBehavior: lockBehavior,
    );
  }

  /// Finds a single [Usager] by its [id] or null if no such row exists.
  Future<Usager?> findById(
    _i1.DatabaseSession session,
    int id, {
    _i1.Transaction? transaction,
    _i1.LockMode? lockMode,
    _i1.LockBehavior? lockBehavior,
  }) async {
    return session.db.findById<Usager>(
      id,
      transaction: transaction,
      lockMode: lockMode,
      lockBehavior: lockBehavior,
    );
  }

  /// Inserts all [Usager]s in the list and returns the inserted rows.
  ///
  /// The returned [Usager]s will have their `id` fields set.
  ///
  /// This is an atomic operation, meaning that if one of the rows fails to
  /// insert, none of the rows will be inserted.
  ///
  /// If [ignoreConflicts] is set to `true`, rows that conflict with existing
  /// rows are silently skipped, and only the successfully inserted rows are
  /// returned.
  Future<List<Usager>> insert(
    _i1.DatabaseSession session,
    List<Usager> rows, {
    _i1.Transaction? transaction,
    bool ignoreConflicts = false,
  }) async {
    return session.db.insert<Usager>(
      rows,
      transaction: transaction,
      ignoreConflicts: ignoreConflicts,
    );
  }

  /// Inserts a single [Usager] and returns the inserted row.
  ///
  /// The returned [Usager] will have its `id` field set.
  Future<Usager> insertRow(
    _i1.DatabaseSession session,
    Usager row, {
    _i1.Transaction? transaction,
  }) async {
    return session.db.insertRow<Usager>(
      row,
      transaction: transaction,
    );
  }

  /// Updates all [Usager]s in the list and returns the updated rows. If
  /// [columns] is provided, only those columns will be updated. Defaults to
  /// all columns.
  /// This is an atomic operation, meaning that if one of the rows fails to
  /// update, none of the rows will be updated.
  Future<List<Usager>> update(
    _i1.DatabaseSession session,
    List<Usager> rows, {
    _i1.ColumnSelections<UsagerTable>? columns,
    _i1.Transaction? transaction,
  }) async {
    return session.db.update<Usager>(
      rows,
      columns: columns?.call(Usager.t),
      transaction: transaction,
    );
  }

  /// Updates a single [Usager]. The row needs to have its id set.
  /// Optionally, a list of [columns] can be provided to only update those
  /// columns. Defaults to all columns.
  Future<Usager> updateRow(
    _i1.DatabaseSession session,
    Usager row, {
    _i1.ColumnSelections<UsagerTable>? columns,
    _i1.Transaction? transaction,
  }) async {
    return session.db.updateRow<Usager>(
      row,
      columns: columns?.call(Usager.t),
      transaction: transaction,
    );
  }

  /// Updates a single [Usager] by its [id] with the specified [columnValues].
  /// Returns the updated row or null if no row with the given id exists.
  Future<Usager?> updateById(
    _i1.DatabaseSession session,
    int id, {
    required _i1.ColumnValueListBuilder<UsagerUpdateTable> columnValues,
    _i1.Transaction? transaction,
  }) async {
    return session.db.updateById<Usager>(
      id,
      columnValues: columnValues(Usager.t.updateTable),
      transaction: transaction,
    );
  }

  /// Updates all [Usager]s matching the [where] expression with the specified [columnValues].
  /// Returns the list of updated rows.
  Future<List<Usager>> updateWhere(
    _i1.DatabaseSession session, {
    required _i1.ColumnValueListBuilder<UsagerUpdateTable> columnValues,
    required _i1.WhereExpressionBuilder<UsagerTable> where,
    int? limit,
    int? offset,
    _i1.OrderByBuilder<UsagerTable>? orderBy,
    _i1.OrderByListBuilder<UsagerTable>? orderByList,
    bool orderDescending = false,
    _i1.Transaction? transaction,
  }) async {
    return session.db.updateWhere<Usager>(
      columnValues: columnValues(Usager.t.updateTable),
      where: where(Usager.t),
      limit: limit,
      offset: offset,
      orderBy: orderBy?.call(Usager.t),
      orderByList: orderByList?.call(Usager.t),
      orderDescending: orderDescending,
      transaction: transaction,
    );
  }

  /// Deletes all [Usager]s in the list and returns the deleted rows.
  /// This is an atomic operation, meaning that if one of the rows fail to
  /// be deleted, none of the rows will be deleted.
  Future<List<Usager>> delete(
    _i1.DatabaseSession session,
    List<Usager> rows, {
    _i1.Transaction? transaction,
  }) async {
    return session.db.delete<Usager>(
      rows,
      transaction: transaction,
    );
  }

  /// Deletes a single [Usager].
  Future<Usager> deleteRow(
    _i1.DatabaseSession session,
    Usager row, {
    _i1.Transaction? transaction,
  }) async {
    return session.db.deleteRow<Usager>(
      row,
      transaction: transaction,
    );
  }

  /// Deletes all rows matching the [where] expression.
  Future<List<Usager>> deleteWhere(
    _i1.DatabaseSession session, {
    required _i1.WhereExpressionBuilder<UsagerTable> where,
    _i1.Transaction? transaction,
  }) async {
    return session.db.deleteWhere<Usager>(
      where: where(Usager.t),
      transaction: transaction,
    );
  }

  /// Counts the number of rows matching the [where] expression. If omitted,
  /// will return the count of all rows in the table.
  Future<int> count(
    _i1.DatabaseSession session, {
    _i1.WhereExpressionBuilder<UsagerTable>? where,
    int? limit,
    _i1.Transaction? transaction,
  }) async {
    return session.db.count<Usager>(
      where: where?.call(Usager.t),
      limit: limit,
      transaction: transaction,
    );
  }

  /// Acquires row-level locks on [Usager] rows matching the [where] expression.
  Future<void> lockRows(
    _i1.DatabaseSession session, {
    required _i1.WhereExpressionBuilder<UsagerTable> where,
    required _i1.LockMode lockMode,
    required _i1.Transaction transaction,
    _i1.LockBehavior lockBehavior = _i1.LockBehavior.wait,
  }) async {
    return session.db.lockRows<Usager>(
      where: where(Usager.t),
      lockMode: lockMode,
      lockBehavior: lockBehavior,
      transaction: transaction,
    );
  }
}
