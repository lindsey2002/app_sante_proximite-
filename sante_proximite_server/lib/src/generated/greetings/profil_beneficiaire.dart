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
import '../greetings/usager.dart' as _i2;
import 'package:sante_proximite_server/src/generated/protocol.dart' as _i3;

abstract class ProfilBeneficiaire
    implements _i1.TableRow<int?>, _i1.ProtocolSerialization {
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

  static final t = ProfilBeneficiaireTable();

  static const db = ProfilBeneficiaireRepository._();

  @override
  int? id;

  String nom;

  String prenom;

  String lienParente;

  int age;

  int usagerId;

  _i2.Usager? usager;

  @override
  _i1.Table<int?> get table => t;

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
  Map<String, dynamic> toJsonForProtocol() {
    return {
      '__className__': 'ProfilBeneficiaire',
      if (id != null) 'id': id,
      'nom': nom,
      'prenom': prenom,
      'lienParente': lienParente,
      'age': age,
      'usagerId': usagerId,
      if (usager != null) 'usager': usager?.toJsonForProtocol(),
    };
  }

  static ProfilBeneficiaireInclude include({_i2.UsagerInclude? usager}) {
    return ProfilBeneficiaireInclude._(usager: usager);
  }

  static ProfilBeneficiaireIncludeList includeList({
    _i1.WhereExpressionBuilder<ProfilBeneficiaireTable>? where,
    int? limit,
    int? offset,
    _i1.OrderByBuilder<ProfilBeneficiaireTable>? orderBy,
    bool orderDescending = false,
    _i1.OrderByListBuilder<ProfilBeneficiaireTable>? orderByList,
    ProfilBeneficiaireInclude? include,
  }) {
    return ProfilBeneficiaireIncludeList._(
      where: where,
      limit: limit,
      offset: offset,
      orderBy: orderBy?.call(ProfilBeneficiaire.t),
      orderDescending: orderDescending,
      orderByList: orderByList?.call(ProfilBeneficiaire.t),
      include: include,
    );
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

class ProfilBeneficiaireUpdateTable
    extends _i1.UpdateTable<ProfilBeneficiaireTable> {
  ProfilBeneficiaireUpdateTable(super.table);

  _i1.ColumnValue<String, String> nom(String value) => _i1.ColumnValue(
    table.nom,
    value,
  );

  _i1.ColumnValue<String, String> prenom(String value) => _i1.ColumnValue(
    table.prenom,
    value,
  );

  _i1.ColumnValue<String, String> lienParente(String value) => _i1.ColumnValue(
    table.lienParente,
    value,
  );

  _i1.ColumnValue<int, int> age(int value) => _i1.ColumnValue(
    table.age,
    value,
  );

  _i1.ColumnValue<int, int> usagerId(int value) => _i1.ColumnValue(
    table.usagerId,
    value,
  );
}

class ProfilBeneficiaireTable extends _i1.Table<int?> {
  ProfilBeneficiaireTable({super.tableRelation})
    : super(tableName: 'profil_beneficiaire') {
    updateTable = ProfilBeneficiaireUpdateTable(this);
    nom = _i1.ColumnString(
      'nom',
      this,
    );
    prenom = _i1.ColumnString(
      'prenom',
      this,
    );
    lienParente = _i1.ColumnString(
      'lienParente',
      this,
    );
    age = _i1.ColumnInt(
      'age',
      this,
    );
    usagerId = _i1.ColumnInt(
      'usagerId',
      this,
    );
  }

  late final ProfilBeneficiaireUpdateTable updateTable;

  late final _i1.ColumnString nom;

  late final _i1.ColumnString prenom;

  late final _i1.ColumnString lienParente;

  late final _i1.ColumnInt age;

  late final _i1.ColumnInt usagerId;

  _i2.UsagerTable? _usager;

  _i2.UsagerTable get usager {
    if (_usager != null) return _usager!;
    _usager = _i1.createRelationTable(
      relationFieldName: 'usager',
      field: ProfilBeneficiaire.t.usagerId,
      foreignField: _i2.Usager.t.id,
      tableRelation: tableRelation,
      createTable: (foreignTableRelation) =>
          _i2.UsagerTable(tableRelation: foreignTableRelation),
    );
    return _usager!;
  }

  @override
  List<_i1.Column> get columns => [
    id,
    nom,
    prenom,
    lienParente,
    age,
    usagerId,
  ];

  @override
  _i1.Table? getRelationTable(String relationField) {
    if (relationField == 'usager') {
      return usager;
    }
    return null;
  }
}

class ProfilBeneficiaireInclude extends _i1.IncludeObject {
  ProfilBeneficiaireInclude._({_i2.UsagerInclude? usager}) {
    _usager = usager;
  }

  _i2.UsagerInclude? _usager;

  @override
  Map<String, _i1.Include?> get includes => {'usager': _usager};

  @override
  _i1.Table<int?> get table => ProfilBeneficiaire.t;
}

class ProfilBeneficiaireIncludeList extends _i1.IncludeList {
  ProfilBeneficiaireIncludeList._({
    _i1.WhereExpressionBuilder<ProfilBeneficiaireTable>? where,
    super.limit,
    super.offset,
    super.orderBy,
    super.orderDescending,
    super.orderByList,
    super.include,
  }) {
    super.where = where?.call(ProfilBeneficiaire.t);
  }

  @override
  Map<String, _i1.Include?> get includes => include?.includes ?? {};

  @override
  _i1.Table<int?> get table => ProfilBeneficiaire.t;
}

class ProfilBeneficiaireRepository {
  const ProfilBeneficiaireRepository._();

  final attachRow = const ProfilBeneficiaireAttachRowRepository._();

  /// Returns a list of [ProfilBeneficiaire]s matching the given query parameters.
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
  Future<List<ProfilBeneficiaire>> find(
    _i1.DatabaseSession session, {
    _i1.WhereExpressionBuilder<ProfilBeneficiaireTable>? where,
    int? limit,
    int? offset,
    _i1.OrderByBuilder<ProfilBeneficiaireTable>? orderBy,
    bool orderDescending = false,
    _i1.OrderByListBuilder<ProfilBeneficiaireTable>? orderByList,
    _i1.Transaction? transaction,
    ProfilBeneficiaireInclude? include,
    _i1.LockMode? lockMode,
    _i1.LockBehavior? lockBehavior,
  }) async {
    return session.db.find<ProfilBeneficiaire>(
      where: where?.call(ProfilBeneficiaire.t),
      orderBy: orderBy?.call(ProfilBeneficiaire.t),
      orderByList: orderByList?.call(ProfilBeneficiaire.t),
      orderDescending: orderDescending,
      limit: limit,
      offset: offset,
      transaction: transaction,
      include: include,
      lockMode: lockMode,
      lockBehavior: lockBehavior,
    );
  }

  /// Returns the first matching [ProfilBeneficiaire] matching the given query parameters.
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
  Future<ProfilBeneficiaire?> findFirstRow(
    _i1.DatabaseSession session, {
    _i1.WhereExpressionBuilder<ProfilBeneficiaireTable>? where,
    int? offset,
    _i1.OrderByBuilder<ProfilBeneficiaireTable>? orderBy,
    bool orderDescending = false,
    _i1.OrderByListBuilder<ProfilBeneficiaireTable>? orderByList,
    _i1.Transaction? transaction,
    ProfilBeneficiaireInclude? include,
    _i1.LockMode? lockMode,
    _i1.LockBehavior? lockBehavior,
  }) async {
    return session.db.findFirstRow<ProfilBeneficiaire>(
      where: where?.call(ProfilBeneficiaire.t),
      orderBy: orderBy?.call(ProfilBeneficiaire.t),
      orderByList: orderByList?.call(ProfilBeneficiaire.t),
      orderDescending: orderDescending,
      offset: offset,
      transaction: transaction,
      include: include,
      lockMode: lockMode,
      lockBehavior: lockBehavior,
    );
  }

  /// Finds a single [ProfilBeneficiaire] by its [id] or null if no such row exists.
  Future<ProfilBeneficiaire?> findById(
    _i1.DatabaseSession session,
    int id, {
    _i1.Transaction? transaction,
    ProfilBeneficiaireInclude? include,
    _i1.LockMode? lockMode,
    _i1.LockBehavior? lockBehavior,
  }) async {
    return session.db.findById<ProfilBeneficiaire>(
      id,
      transaction: transaction,
      include: include,
      lockMode: lockMode,
      lockBehavior: lockBehavior,
    );
  }

  /// Inserts all [ProfilBeneficiaire]s in the list and returns the inserted rows.
  ///
  /// The returned [ProfilBeneficiaire]s will have their `id` fields set.
  ///
  /// This is an atomic operation, meaning that if one of the rows fails to
  /// insert, none of the rows will be inserted.
  ///
  /// If [ignoreConflicts] is set to `true`, rows that conflict with existing
  /// rows are silently skipped, and only the successfully inserted rows are
  /// returned.
  Future<List<ProfilBeneficiaire>> insert(
    _i1.DatabaseSession session,
    List<ProfilBeneficiaire> rows, {
    _i1.Transaction? transaction,
    bool ignoreConflicts = false,
  }) async {
    return session.db.insert<ProfilBeneficiaire>(
      rows,
      transaction: transaction,
      ignoreConflicts: ignoreConflicts,
    );
  }

  /// Inserts a single [ProfilBeneficiaire] and returns the inserted row.
  ///
  /// The returned [ProfilBeneficiaire] will have its `id` field set.
  Future<ProfilBeneficiaire> insertRow(
    _i1.DatabaseSession session,
    ProfilBeneficiaire row, {
    _i1.Transaction? transaction,
  }) async {
    return session.db.insertRow<ProfilBeneficiaire>(
      row,
      transaction: transaction,
    );
  }

  /// Updates all [ProfilBeneficiaire]s in the list and returns the updated rows. If
  /// [columns] is provided, only those columns will be updated. Defaults to
  /// all columns.
  /// This is an atomic operation, meaning that if one of the rows fails to
  /// update, none of the rows will be updated.
  Future<List<ProfilBeneficiaire>> update(
    _i1.DatabaseSession session,
    List<ProfilBeneficiaire> rows, {
    _i1.ColumnSelections<ProfilBeneficiaireTable>? columns,
    _i1.Transaction? transaction,
  }) async {
    return session.db.update<ProfilBeneficiaire>(
      rows,
      columns: columns?.call(ProfilBeneficiaire.t),
      transaction: transaction,
    );
  }

  /// Updates a single [ProfilBeneficiaire]. The row needs to have its id set.
  /// Optionally, a list of [columns] can be provided to only update those
  /// columns. Defaults to all columns.
  Future<ProfilBeneficiaire> updateRow(
    _i1.DatabaseSession session,
    ProfilBeneficiaire row, {
    _i1.ColumnSelections<ProfilBeneficiaireTable>? columns,
    _i1.Transaction? transaction,
  }) async {
    return session.db.updateRow<ProfilBeneficiaire>(
      row,
      columns: columns?.call(ProfilBeneficiaire.t),
      transaction: transaction,
    );
  }

  /// Updates a single [ProfilBeneficiaire] by its [id] with the specified [columnValues].
  /// Returns the updated row or null if no row with the given id exists.
  Future<ProfilBeneficiaire?> updateById(
    _i1.DatabaseSession session,
    int id, {
    required _i1.ColumnValueListBuilder<ProfilBeneficiaireUpdateTable>
    columnValues,
    _i1.Transaction? transaction,
  }) async {
    return session.db.updateById<ProfilBeneficiaire>(
      id,
      columnValues: columnValues(ProfilBeneficiaire.t.updateTable),
      transaction: transaction,
    );
  }

  /// Updates all [ProfilBeneficiaire]s matching the [where] expression with the specified [columnValues].
  /// Returns the list of updated rows.
  Future<List<ProfilBeneficiaire>> updateWhere(
    _i1.DatabaseSession session, {
    required _i1.ColumnValueListBuilder<ProfilBeneficiaireUpdateTable>
    columnValues,
    required _i1.WhereExpressionBuilder<ProfilBeneficiaireTable> where,
    int? limit,
    int? offset,
    _i1.OrderByBuilder<ProfilBeneficiaireTable>? orderBy,
    _i1.OrderByListBuilder<ProfilBeneficiaireTable>? orderByList,
    bool orderDescending = false,
    _i1.Transaction? transaction,
  }) async {
    return session.db.updateWhere<ProfilBeneficiaire>(
      columnValues: columnValues(ProfilBeneficiaire.t.updateTable),
      where: where(ProfilBeneficiaire.t),
      limit: limit,
      offset: offset,
      orderBy: orderBy?.call(ProfilBeneficiaire.t),
      orderByList: orderByList?.call(ProfilBeneficiaire.t),
      orderDescending: orderDescending,
      transaction: transaction,
    );
  }

  /// Deletes all [ProfilBeneficiaire]s in the list and returns the deleted rows.
  /// This is an atomic operation, meaning that if one of the rows fail to
  /// be deleted, none of the rows will be deleted.
  Future<List<ProfilBeneficiaire>> delete(
    _i1.DatabaseSession session,
    List<ProfilBeneficiaire> rows, {
    _i1.Transaction? transaction,
  }) async {
    return session.db.delete<ProfilBeneficiaire>(
      rows,
      transaction: transaction,
    );
  }

  /// Deletes a single [ProfilBeneficiaire].
  Future<ProfilBeneficiaire> deleteRow(
    _i1.DatabaseSession session,
    ProfilBeneficiaire row, {
    _i1.Transaction? transaction,
  }) async {
    return session.db.deleteRow<ProfilBeneficiaire>(
      row,
      transaction: transaction,
    );
  }

  /// Deletes all rows matching the [where] expression.
  Future<List<ProfilBeneficiaire>> deleteWhere(
    _i1.DatabaseSession session, {
    required _i1.WhereExpressionBuilder<ProfilBeneficiaireTable> where,
    _i1.Transaction? transaction,
  }) async {
    return session.db.deleteWhere<ProfilBeneficiaire>(
      where: where(ProfilBeneficiaire.t),
      transaction: transaction,
    );
  }

  /// Counts the number of rows matching the [where] expression. If omitted,
  /// will return the count of all rows in the table.
  Future<int> count(
    _i1.DatabaseSession session, {
    _i1.WhereExpressionBuilder<ProfilBeneficiaireTable>? where,
    int? limit,
    _i1.Transaction? transaction,
  }) async {
    return session.db.count<ProfilBeneficiaire>(
      where: where?.call(ProfilBeneficiaire.t),
      limit: limit,
      transaction: transaction,
    );
  }

  /// Acquires row-level locks on [ProfilBeneficiaire] rows matching the [where] expression.
  Future<void> lockRows(
    _i1.DatabaseSession session, {
    required _i1.WhereExpressionBuilder<ProfilBeneficiaireTable> where,
    required _i1.LockMode lockMode,
    required _i1.Transaction transaction,
    _i1.LockBehavior lockBehavior = _i1.LockBehavior.wait,
  }) async {
    return session.db.lockRows<ProfilBeneficiaire>(
      where: where(ProfilBeneficiaire.t),
      lockMode: lockMode,
      lockBehavior: lockBehavior,
      transaction: transaction,
    );
  }
}

class ProfilBeneficiaireAttachRowRepository {
  const ProfilBeneficiaireAttachRowRepository._();

  /// Creates a relation between the given [ProfilBeneficiaire] and [Usager]
  /// by setting the [ProfilBeneficiaire]'s foreign key `usagerId` to refer to the [Usager].
  Future<void> usager(
    _i1.DatabaseSession session,
    ProfilBeneficiaire profilBeneficiaire,
    _i2.Usager usager, {
    _i1.Transaction? transaction,
  }) async {
    if (profilBeneficiaire.id == null) {
      throw ArgumentError.notNull('profilBeneficiaire.id');
    }
    if (usager.id == null) {
      throw ArgumentError.notNull('usager.id');
    }

    var $profilBeneficiaire = profilBeneficiaire.copyWith(usagerId: usager.id);
    await session.db.updateRow<ProfilBeneficiaire>(
      $profilBeneficiaire,
      columns: [ProfilBeneficiaire.t.usagerId],
      transaction: transaction,
    );
  }
}
