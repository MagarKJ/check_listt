// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'app_database.dart';

// ignore_for_file: type=lint
class $ChecklistTableTable extends ChecklistTable
    with TableInfo<$ChecklistTableTable, ChecklistTableData> {
  @override
  final GeneratedDatabase attachedDatabase;
  final String? _alias;
  $ChecklistTableTable(this.attachedDatabase, [this._alias]);
  static const VerificationMeta _idMeta = const VerificationMeta('id');
  @override
  late final GeneratedColumn<String> id = GeneratedColumn<String>(
    'id',
    aliasedName,
    false,
    type: DriftSqlType.string,
    requiredDuringInsert: true,
  );
  static const VerificationMeta _nameMeta = const VerificationMeta('name');
  @override
  late final GeneratedColumn<String> name = GeneratedColumn<String>(
    'name',
    aliasedName,
    false,
    type: DriftSqlType.string,
    requiredDuringInsert: true,
  );
  static const VerificationMeta _descriptionMeta = const VerificationMeta(
    'description',
  );
  @override
  late final GeneratedColumn<String> description = GeneratedColumn<String>(
    'description',
    aliasedName,
    true,
    type: DriftSqlType.string,
    requiredDuringInsert: false,
  );
  static const VerificationMeta _createdAtMeta = const VerificationMeta(
    'createdAt',
  );
  @override
  late final GeneratedColumn<String> createdAt = GeneratedColumn<String>(
    'created_at',
    aliasedName,
    false,
    type: DriftSqlType.string,
    requiredDuringInsert: true,
  );
  static const VerificationMeta _updatedAtMeta = const VerificationMeta(
    'updatedAt',
  );
  @override
  late final GeneratedColumn<String> updatedAt = GeneratedColumn<String>(
    'updated_at',
    aliasedName,
    false,
    type: DriftSqlType.string,
    requiredDuringInsert: true,
  );
  @override
  List<GeneratedColumn> get $columns => [
    id,
    name,
    description,
    createdAt,
    updatedAt,
  ];
  @override
  String get aliasedName => _alias ?? actualTableName;
  @override
  String get actualTableName => $name;
  static const String $name = 'checklist_table';
  @override
  VerificationContext validateIntegrity(
    Insertable<ChecklistTableData> instance, {
    bool isInserting = false,
  }) {
    final context = VerificationContext();
    final data = instance.toColumns(true);
    if (data.containsKey('id')) {
      context.handle(_idMeta, id.isAcceptableOrUnknown(data['id']!, _idMeta));
    } else if (isInserting) {
      context.missing(_idMeta);
    }
    if (data.containsKey('name')) {
      context.handle(
        _nameMeta,
        name.isAcceptableOrUnknown(data['name']!, _nameMeta),
      );
    } else if (isInserting) {
      context.missing(_nameMeta);
    }
    if (data.containsKey('description')) {
      context.handle(
        _descriptionMeta,
        description.isAcceptableOrUnknown(
          data['description']!,
          _descriptionMeta,
        ),
      );
    }
    if (data.containsKey('created_at')) {
      context.handle(
        _createdAtMeta,
        createdAt.isAcceptableOrUnknown(data['created_at']!, _createdAtMeta),
      );
    } else if (isInserting) {
      context.missing(_createdAtMeta);
    }
    if (data.containsKey('updated_at')) {
      context.handle(
        _updatedAtMeta,
        updatedAt.isAcceptableOrUnknown(data['updated_at']!, _updatedAtMeta),
      );
    } else if (isInserting) {
      context.missing(_updatedAtMeta);
    }
    return context;
  }

  @override
  Set<GeneratedColumn> get $primaryKey => {id};
  @override
  ChecklistTableData map(Map<String, dynamic> data, {String? tablePrefix}) {
    final effectivePrefix = tablePrefix != null ? '$tablePrefix.' : '';
    return ChecklistTableData(
      id: attachedDatabase.typeMapping.read(
        DriftSqlType.string,
        data['${effectivePrefix}id'],
      )!,
      name: attachedDatabase.typeMapping.read(
        DriftSqlType.string,
        data['${effectivePrefix}name'],
      )!,
      description: attachedDatabase.typeMapping.read(
        DriftSqlType.string,
        data['${effectivePrefix}description'],
      ),
      createdAt: attachedDatabase.typeMapping.read(
        DriftSqlType.string,
        data['${effectivePrefix}created_at'],
      )!,
      updatedAt: attachedDatabase.typeMapping.read(
        DriftSqlType.string,
        data['${effectivePrefix}updated_at'],
      )!,
    );
  }

  @override
  $ChecklistTableTable createAlias(String alias) {
    return $ChecklistTableTable(attachedDatabase, alias);
  }
}

class ChecklistTableData extends DataClass
    implements Insertable<ChecklistTableData> {
  final String id;
  final String name;
  final String? description;
  final String createdAt;
  final String updatedAt;
  const ChecklistTableData({
    required this.id,
    required this.name,
    this.description,
    required this.createdAt,
    required this.updatedAt,
  });
  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    map['id'] = Variable<String>(id);
    map['name'] = Variable<String>(name);
    if (!nullToAbsent || description != null) {
      map['description'] = Variable<String>(description);
    }
    map['created_at'] = Variable<String>(createdAt);
    map['updated_at'] = Variable<String>(updatedAt);
    return map;
  }

  ChecklistTableCompanion toCompanion(bool nullToAbsent) {
    return ChecklistTableCompanion(
      id: Value(id),
      name: Value(name),
      description: description == null && nullToAbsent
          ? const Value.absent()
          : Value(description),
      createdAt: Value(createdAt),
      updatedAt: Value(updatedAt),
    );
  }

  factory ChecklistTableData.fromJson(
    Map<String, dynamic> json, {
    ValueSerializer? serializer,
  }) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return ChecklistTableData(
      id: serializer.fromJson<String>(json['id']),
      name: serializer.fromJson<String>(json['name']),
      description: serializer.fromJson<String?>(json['description']),
      createdAt: serializer.fromJson<String>(json['createdAt']),
      updatedAt: serializer.fromJson<String>(json['updatedAt']),
    );
  }
  @override
  Map<String, dynamic> toJson({ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return <String, dynamic>{
      'id': serializer.toJson<String>(id),
      'name': serializer.toJson<String>(name),
      'description': serializer.toJson<String?>(description),
      'createdAt': serializer.toJson<String>(createdAt),
      'updatedAt': serializer.toJson<String>(updatedAt),
    };
  }

  ChecklistTableData copyWith({
    String? id,
    String? name,
    Value<String?> description = const Value.absent(),
    String? createdAt,
    String? updatedAt,
  }) => ChecklistTableData(
    id: id ?? this.id,
    name: name ?? this.name,
    description: description.present ? description.value : this.description,
    createdAt: createdAt ?? this.createdAt,
    updatedAt: updatedAt ?? this.updatedAt,
  );
  ChecklistTableData copyWithCompanion(ChecklistTableCompanion data) {
    return ChecklistTableData(
      id: data.id.present ? data.id.value : this.id,
      name: data.name.present ? data.name.value : this.name,
      description: data.description.present
          ? data.description.value
          : this.description,
      createdAt: data.createdAt.present ? data.createdAt.value : this.createdAt,
      updatedAt: data.updatedAt.present ? data.updatedAt.value : this.updatedAt,
    );
  }

  @override
  String toString() {
    return (StringBuffer('ChecklistTableData(')
          ..write('id: $id, ')
          ..write('name: $name, ')
          ..write('description: $description, ')
          ..write('createdAt: $createdAt, ')
          ..write('updatedAt: $updatedAt')
          ..write(')'))
        .toString();
  }

  @override
  int get hashCode => Object.hash(id, name, description, createdAt, updatedAt);
  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other is ChecklistTableData &&
          other.id == this.id &&
          other.name == this.name &&
          other.description == this.description &&
          other.createdAt == this.createdAt &&
          other.updatedAt == this.updatedAt);
}

class ChecklistTableCompanion extends UpdateCompanion<ChecklistTableData> {
  final Value<String> id;
  final Value<String> name;
  final Value<String?> description;
  final Value<String> createdAt;
  final Value<String> updatedAt;
  final Value<int> rowid;
  const ChecklistTableCompanion({
    this.id = const Value.absent(),
    this.name = const Value.absent(),
    this.description = const Value.absent(),
    this.createdAt = const Value.absent(),
    this.updatedAt = const Value.absent(),
    this.rowid = const Value.absent(),
  });
  ChecklistTableCompanion.insert({
    required String id,
    required String name,
    this.description = const Value.absent(),
    required String createdAt,
    required String updatedAt,
    this.rowid = const Value.absent(),
  }) : id = Value(id),
       name = Value(name),
       createdAt = Value(createdAt),
       updatedAt = Value(updatedAt);
  static Insertable<ChecklistTableData> custom({
    Expression<String>? id,
    Expression<String>? name,
    Expression<String>? description,
    Expression<String>? createdAt,
    Expression<String>? updatedAt,
    Expression<int>? rowid,
  }) {
    return RawValuesInsertable({
      if (id != null) 'id': id,
      if (name != null) 'name': name,
      if (description != null) 'description': description,
      if (createdAt != null) 'created_at': createdAt,
      if (updatedAt != null) 'updated_at': updatedAt,
      if (rowid != null) 'rowid': rowid,
    });
  }

  ChecklistTableCompanion copyWith({
    Value<String>? id,
    Value<String>? name,
    Value<String?>? description,
    Value<String>? createdAt,
    Value<String>? updatedAt,
    Value<int>? rowid,
  }) {
    return ChecklistTableCompanion(
      id: id ?? this.id,
      name: name ?? this.name,
      description: description ?? this.description,
      createdAt: createdAt ?? this.createdAt,
      updatedAt: updatedAt ?? this.updatedAt,
      rowid: rowid ?? this.rowid,
    );
  }

  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    if (id.present) {
      map['id'] = Variable<String>(id.value);
    }
    if (name.present) {
      map['name'] = Variable<String>(name.value);
    }
    if (description.present) {
      map['description'] = Variable<String>(description.value);
    }
    if (createdAt.present) {
      map['created_at'] = Variable<String>(createdAt.value);
    }
    if (updatedAt.present) {
      map['updated_at'] = Variable<String>(updatedAt.value);
    }
    if (rowid.present) {
      map['rowid'] = Variable<int>(rowid.value);
    }
    return map;
  }

  @override
  String toString() {
    return (StringBuffer('ChecklistTableCompanion(')
          ..write('id: $id, ')
          ..write('name: $name, ')
          ..write('description: $description, ')
          ..write('createdAt: $createdAt, ')
          ..write('updatedAt: $updatedAt, ')
          ..write('rowid: $rowid')
          ..write(')'))
        .toString();
  }
}

class $CheckListItemsTableTable extends CheckListItemsTable
    with TableInfo<$CheckListItemsTableTable, CheckListItemsTableData> {
  @override
  final GeneratedDatabase attachedDatabase;
  final String? _alias;
  $CheckListItemsTableTable(this.attachedDatabase, [this._alias]);
  static const VerificationMeta _idMeta = const VerificationMeta('id');
  @override
  late final GeneratedColumn<String> id = GeneratedColumn<String>(
    'id',
    aliasedName,
    false,
    type: DriftSqlType.string,
    requiredDuringInsert: true,
  );
  static const VerificationMeta _checkListIdMeta = const VerificationMeta(
    'checkListId',
  );
  @override
  late final GeneratedColumn<String> checkListId = GeneratedColumn<String>(
    'check_list_id',
    aliasedName,
    false,
    type: DriftSqlType.string,
    requiredDuringInsert: true,
  );
  static const VerificationMeta _nameMeta = const VerificationMeta('name');
  @override
  late final GeneratedColumn<String> name = GeneratedColumn<String>(
    'name',
    aliasedName,
    false,
    type: DriftSqlType.string,
    requiredDuringInsert: true,
  );
  static const VerificationMeta _isCheckedMeta = const VerificationMeta(
    'isChecked',
  );
  @override
  late final GeneratedColumn<bool> isChecked = GeneratedColumn<bool>(
    'is_checked',
    aliasedName,
    false,
    type: DriftSqlType.bool,
    requiredDuringInsert: false,
    defaultConstraints: GeneratedColumn.constraintIsAlways(
      'CHECK ("is_checked" IN (0, 1))',
    ),
    defaultValue: const Constant(false),
  );
  static const VerificationMeta _createdAtMeta = const VerificationMeta(
    'createdAt',
  );
  @override
  late final GeneratedColumn<String> createdAt = GeneratedColumn<String>(
    'created_at',
    aliasedName,
    false,
    type: DriftSqlType.string,
    requiredDuringInsert: true,
  );
  static const VerificationMeta _updatedAtMeta = const VerificationMeta(
    'updatedAt',
  );
  @override
  late final GeneratedColumn<String> updatedAt = GeneratedColumn<String>(
    'updated_at',
    aliasedName,
    false,
    type: DriftSqlType.string,
    requiredDuringInsert: true,
  );
  @override
  List<GeneratedColumn> get $columns => [
    id,
    checkListId,
    name,
    isChecked,
    createdAt,
    updatedAt,
  ];
  @override
  String get aliasedName => _alias ?? actualTableName;
  @override
  String get actualTableName => $name;
  static const String $name = 'check_list_items_table';
  @override
  VerificationContext validateIntegrity(
    Insertable<CheckListItemsTableData> instance, {
    bool isInserting = false,
  }) {
    final context = VerificationContext();
    final data = instance.toColumns(true);
    if (data.containsKey('id')) {
      context.handle(_idMeta, id.isAcceptableOrUnknown(data['id']!, _idMeta));
    } else if (isInserting) {
      context.missing(_idMeta);
    }
    if (data.containsKey('check_list_id')) {
      context.handle(
        _checkListIdMeta,
        checkListId.isAcceptableOrUnknown(
          data['check_list_id']!,
          _checkListIdMeta,
        ),
      );
    } else if (isInserting) {
      context.missing(_checkListIdMeta);
    }
    if (data.containsKey('name')) {
      context.handle(
        _nameMeta,
        name.isAcceptableOrUnknown(data['name']!, _nameMeta),
      );
    } else if (isInserting) {
      context.missing(_nameMeta);
    }
    if (data.containsKey('is_checked')) {
      context.handle(
        _isCheckedMeta,
        isChecked.isAcceptableOrUnknown(data['is_checked']!, _isCheckedMeta),
      );
    }
    if (data.containsKey('created_at')) {
      context.handle(
        _createdAtMeta,
        createdAt.isAcceptableOrUnknown(data['created_at']!, _createdAtMeta),
      );
    } else if (isInserting) {
      context.missing(_createdAtMeta);
    }
    if (data.containsKey('updated_at')) {
      context.handle(
        _updatedAtMeta,
        updatedAt.isAcceptableOrUnknown(data['updated_at']!, _updatedAtMeta),
      );
    } else if (isInserting) {
      context.missing(_updatedAtMeta);
    }
    return context;
  }

  @override
  Set<GeneratedColumn> get $primaryKey => {id};
  @override
  CheckListItemsTableData map(
    Map<String, dynamic> data, {
    String? tablePrefix,
  }) {
    final effectivePrefix = tablePrefix != null ? '$tablePrefix.' : '';
    return CheckListItemsTableData(
      id: attachedDatabase.typeMapping.read(
        DriftSqlType.string,
        data['${effectivePrefix}id'],
      )!,
      checkListId: attachedDatabase.typeMapping.read(
        DriftSqlType.string,
        data['${effectivePrefix}check_list_id'],
      )!,
      name: attachedDatabase.typeMapping.read(
        DriftSqlType.string,
        data['${effectivePrefix}name'],
      )!,
      isChecked: attachedDatabase.typeMapping.read(
        DriftSqlType.bool,
        data['${effectivePrefix}is_checked'],
      )!,
      createdAt: attachedDatabase.typeMapping.read(
        DriftSqlType.string,
        data['${effectivePrefix}created_at'],
      )!,
      updatedAt: attachedDatabase.typeMapping.read(
        DriftSqlType.string,
        data['${effectivePrefix}updated_at'],
      )!,
    );
  }

  @override
  $CheckListItemsTableTable createAlias(String alias) {
    return $CheckListItemsTableTable(attachedDatabase, alias);
  }
}

class CheckListItemsTableData extends DataClass
    implements Insertable<CheckListItemsTableData> {
  final String id;
  final String checkListId;
  final String name;
  final bool isChecked;
  final String createdAt;
  final String updatedAt;
  const CheckListItemsTableData({
    required this.id,
    required this.checkListId,
    required this.name,
    required this.isChecked,
    required this.createdAt,
    required this.updatedAt,
  });
  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    map['id'] = Variable<String>(id);
    map['check_list_id'] = Variable<String>(checkListId);
    map['name'] = Variable<String>(name);
    map['is_checked'] = Variable<bool>(isChecked);
    map['created_at'] = Variable<String>(createdAt);
    map['updated_at'] = Variable<String>(updatedAt);
    return map;
  }

  CheckListItemsTableCompanion toCompanion(bool nullToAbsent) {
    return CheckListItemsTableCompanion(
      id: Value(id),
      checkListId: Value(checkListId),
      name: Value(name),
      isChecked: Value(isChecked),
      createdAt: Value(createdAt),
      updatedAt: Value(updatedAt),
    );
  }

  factory CheckListItemsTableData.fromJson(
    Map<String, dynamic> json, {
    ValueSerializer? serializer,
  }) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return CheckListItemsTableData(
      id: serializer.fromJson<String>(json['id']),
      checkListId: serializer.fromJson<String>(json['checkListId']),
      name: serializer.fromJson<String>(json['name']),
      isChecked: serializer.fromJson<bool>(json['isChecked']),
      createdAt: serializer.fromJson<String>(json['createdAt']),
      updatedAt: serializer.fromJson<String>(json['updatedAt']),
    );
  }
  @override
  Map<String, dynamic> toJson({ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return <String, dynamic>{
      'id': serializer.toJson<String>(id),
      'checkListId': serializer.toJson<String>(checkListId),
      'name': serializer.toJson<String>(name),
      'isChecked': serializer.toJson<bool>(isChecked),
      'createdAt': serializer.toJson<String>(createdAt),
      'updatedAt': serializer.toJson<String>(updatedAt),
    };
  }

  CheckListItemsTableData copyWith({
    String? id,
    String? checkListId,
    String? name,
    bool? isChecked,
    String? createdAt,
    String? updatedAt,
  }) => CheckListItemsTableData(
    id: id ?? this.id,
    checkListId: checkListId ?? this.checkListId,
    name: name ?? this.name,
    isChecked: isChecked ?? this.isChecked,
    createdAt: createdAt ?? this.createdAt,
    updatedAt: updatedAt ?? this.updatedAt,
  );
  CheckListItemsTableData copyWithCompanion(CheckListItemsTableCompanion data) {
    return CheckListItemsTableData(
      id: data.id.present ? data.id.value : this.id,
      checkListId: data.checkListId.present
          ? data.checkListId.value
          : this.checkListId,
      name: data.name.present ? data.name.value : this.name,
      isChecked: data.isChecked.present ? data.isChecked.value : this.isChecked,
      createdAt: data.createdAt.present ? data.createdAt.value : this.createdAt,
      updatedAt: data.updatedAt.present ? data.updatedAt.value : this.updatedAt,
    );
  }

  @override
  String toString() {
    return (StringBuffer('CheckListItemsTableData(')
          ..write('id: $id, ')
          ..write('checkListId: $checkListId, ')
          ..write('name: $name, ')
          ..write('isChecked: $isChecked, ')
          ..write('createdAt: $createdAt, ')
          ..write('updatedAt: $updatedAt')
          ..write(')'))
        .toString();
  }

  @override
  int get hashCode =>
      Object.hash(id, checkListId, name, isChecked, createdAt, updatedAt);
  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other is CheckListItemsTableData &&
          other.id == this.id &&
          other.checkListId == this.checkListId &&
          other.name == this.name &&
          other.isChecked == this.isChecked &&
          other.createdAt == this.createdAt &&
          other.updatedAt == this.updatedAt);
}

class CheckListItemsTableCompanion
    extends UpdateCompanion<CheckListItemsTableData> {
  final Value<String> id;
  final Value<String> checkListId;
  final Value<String> name;
  final Value<bool> isChecked;
  final Value<String> createdAt;
  final Value<String> updatedAt;
  final Value<int> rowid;
  const CheckListItemsTableCompanion({
    this.id = const Value.absent(),
    this.checkListId = const Value.absent(),
    this.name = const Value.absent(),
    this.isChecked = const Value.absent(),
    this.createdAt = const Value.absent(),
    this.updatedAt = const Value.absent(),
    this.rowid = const Value.absent(),
  });
  CheckListItemsTableCompanion.insert({
    required String id,
    required String checkListId,
    required String name,
    this.isChecked = const Value.absent(),
    required String createdAt,
    required String updatedAt,
    this.rowid = const Value.absent(),
  }) : id = Value(id),
       checkListId = Value(checkListId),
       name = Value(name),
       createdAt = Value(createdAt),
       updatedAt = Value(updatedAt);
  static Insertable<CheckListItemsTableData> custom({
    Expression<String>? id,
    Expression<String>? checkListId,
    Expression<String>? name,
    Expression<bool>? isChecked,
    Expression<String>? createdAt,
    Expression<String>? updatedAt,
    Expression<int>? rowid,
  }) {
    return RawValuesInsertable({
      if (id != null) 'id': id,
      if (checkListId != null) 'check_list_id': checkListId,
      if (name != null) 'name': name,
      if (isChecked != null) 'is_checked': isChecked,
      if (createdAt != null) 'created_at': createdAt,
      if (updatedAt != null) 'updated_at': updatedAt,
      if (rowid != null) 'rowid': rowid,
    });
  }

  CheckListItemsTableCompanion copyWith({
    Value<String>? id,
    Value<String>? checkListId,
    Value<String>? name,
    Value<bool>? isChecked,
    Value<String>? createdAt,
    Value<String>? updatedAt,
    Value<int>? rowid,
  }) {
    return CheckListItemsTableCompanion(
      id: id ?? this.id,
      checkListId: checkListId ?? this.checkListId,
      name: name ?? this.name,
      isChecked: isChecked ?? this.isChecked,
      createdAt: createdAt ?? this.createdAt,
      updatedAt: updatedAt ?? this.updatedAt,
      rowid: rowid ?? this.rowid,
    );
  }

  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    if (id.present) {
      map['id'] = Variable<String>(id.value);
    }
    if (checkListId.present) {
      map['check_list_id'] = Variable<String>(checkListId.value);
    }
    if (name.present) {
      map['name'] = Variable<String>(name.value);
    }
    if (isChecked.present) {
      map['is_checked'] = Variable<bool>(isChecked.value);
    }
    if (createdAt.present) {
      map['created_at'] = Variable<String>(createdAt.value);
    }
    if (updatedAt.present) {
      map['updated_at'] = Variable<String>(updatedAt.value);
    }
    if (rowid.present) {
      map['rowid'] = Variable<int>(rowid.value);
    }
    return map;
  }

  @override
  String toString() {
    return (StringBuffer('CheckListItemsTableCompanion(')
          ..write('id: $id, ')
          ..write('checkListId: $checkListId, ')
          ..write('name: $name, ')
          ..write('isChecked: $isChecked, ')
          ..write('createdAt: $createdAt, ')
          ..write('updatedAt: $updatedAt, ')
          ..write('rowid: $rowid')
          ..write(')'))
        .toString();
  }
}

abstract class _$AppDatabase extends GeneratedDatabase {
  _$AppDatabase(QueryExecutor e) : super(e);
  $AppDatabaseManager get managers => $AppDatabaseManager(this);
  late final $ChecklistTableTable checklistTable = $ChecklistTableTable(this);
  late final $CheckListItemsTableTable checkListItemsTable =
      $CheckListItemsTableTable(this);
  @override
  Iterable<TableInfo<Table, Object?>> get allTables =>
      allSchemaEntities.whereType<TableInfo<Table, Object?>>();
  @override
  List<DatabaseSchemaEntity> get allSchemaEntities => [
    checklistTable,
    checkListItemsTable,
  ];
}

typedef $$ChecklistTableTableCreateCompanionBuilder =
    ChecklistTableCompanion Function({
      required String id,
      required String name,
      Value<String?> description,
      required String createdAt,
      required String updatedAt,
      Value<int> rowid,
    });
typedef $$ChecklistTableTableUpdateCompanionBuilder =
    ChecklistTableCompanion Function({
      Value<String> id,
      Value<String> name,
      Value<String?> description,
      Value<String> createdAt,
      Value<String> updatedAt,
      Value<int> rowid,
    });

class $$ChecklistTableTableFilterComposer
    extends Composer<_$AppDatabase, $ChecklistTableTable> {
  $$ChecklistTableTableFilterComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  ColumnFilters<String> get id => $composableBuilder(
    column: $table.id,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<String> get name => $composableBuilder(
    column: $table.name,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<String> get description => $composableBuilder(
    column: $table.description,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<String> get createdAt => $composableBuilder(
    column: $table.createdAt,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<String> get updatedAt => $composableBuilder(
    column: $table.updatedAt,
    builder: (column) => ColumnFilters(column),
  );
}

class $$ChecklistTableTableOrderingComposer
    extends Composer<_$AppDatabase, $ChecklistTableTable> {
  $$ChecklistTableTableOrderingComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  ColumnOrderings<String> get id => $composableBuilder(
    column: $table.id,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<String> get name => $composableBuilder(
    column: $table.name,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<String> get description => $composableBuilder(
    column: $table.description,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<String> get createdAt => $composableBuilder(
    column: $table.createdAt,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<String> get updatedAt => $composableBuilder(
    column: $table.updatedAt,
    builder: (column) => ColumnOrderings(column),
  );
}

class $$ChecklistTableTableAnnotationComposer
    extends Composer<_$AppDatabase, $ChecklistTableTable> {
  $$ChecklistTableTableAnnotationComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  GeneratedColumn<String> get id =>
      $composableBuilder(column: $table.id, builder: (column) => column);

  GeneratedColumn<String> get name =>
      $composableBuilder(column: $table.name, builder: (column) => column);

  GeneratedColumn<String> get description => $composableBuilder(
    column: $table.description,
    builder: (column) => column,
  );

  GeneratedColumn<String> get createdAt =>
      $composableBuilder(column: $table.createdAt, builder: (column) => column);

  GeneratedColumn<String> get updatedAt =>
      $composableBuilder(column: $table.updatedAt, builder: (column) => column);
}

class $$ChecklistTableTableTableManager
    extends
        RootTableManager<
          _$AppDatabase,
          $ChecklistTableTable,
          ChecklistTableData,
          $$ChecklistTableTableFilterComposer,
          $$ChecklistTableTableOrderingComposer,
          $$ChecklistTableTableAnnotationComposer,
          $$ChecklistTableTableCreateCompanionBuilder,
          $$ChecklistTableTableUpdateCompanionBuilder,
          (
            ChecklistTableData,
            BaseReferences<
              _$AppDatabase,
              $ChecklistTableTable,
              ChecklistTableData
            >,
          ),
          ChecklistTableData,
          PrefetchHooks Function()
        > {
  $$ChecklistTableTableTableManager(
    _$AppDatabase db,
    $ChecklistTableTable table,
  ) : super(
        TableManagerState(
          db: db,
          table: table,
          createFilteringComposer: () =>
              $$ChecklistTableTableFilterComposer($db: db, $table: table),
          createOrderingComposer: () =>
              $$ChecklistTableTableOrderingComposer($db: db, $table: table),
          createComputedFieldComposer: () =>
              $$ChecklistTableTableAnnotationComposer($db: db, $table: table),
          updateCompanionCallback:
              ({
                Value<String> id = const Value.absent(),
                Value<String> name = const Value.absent(),
                Value<String?> description = const Value.absent(),
                Value<String> createdAt = const Value.absent(),
                Value<String> updatedAt = const Value.absent(),
                Value<int> rowid = const Value.absent(),
              }) => ChecklistTableCompanion(
                id: id,
                name: name,
                description: description,
                createdAt: createdAt,
                updatedAt: updatedAt,
                rowid: rowid,
              ),
          createCompanionCallback:
              ({
                required String id,
                required String name,
                Value<String?> description = const Value.absent(),
                required String createdAt,
                required String updatedAt,
                Value<int> rowid = const Value.absent(),
              }) => ChecklistTableCompanion.insert(
                id: id,
                name: name,
                description: description,
                createdAt: createdAt,
                updatedAt: updatedAt,
                rowid: rowid,
              ),
          withReferenceMapper: (p0) => p0
              .map((e) => (e.readTable(table), BaseReferences(db, table, e)))
              .toList(),
          prefetchHooksCallback: null,
        ),
      );
}

typedef $$ChecklistTableTableProcessedTableManager =
    ProcessedTableManager<
      _$AppDatabase,
      $ChecklistTableTable,
      ChecklistTableData,
      $$ChecklistTableTableFilterComposer,
      $$ChecklistTableTableOrderingComposer,
      $$ChecklistTableTableAnnotationComposer,
      $$ChecklistTableTableCreateCompanionBuilder,
      $$ChecklistTableTableUpdateCompanionBuilder,
      (
        ChecklistTableData,
        BaseReferences<_$AppDatabase, $ChecklistTableTable, ChecklistTableData>,
      ),
      ChecklistTableData,
      PrefetchHooks Function()
    >;
typedef $$CheckListItemsTableTableCreateCompanionBuilder =
    CheckListItemsTableCompanion Function({
      required String id,
      required String checkListId,
      required String name,
      Value<bool> isChecked,
      required String createdAt,
      required String updatedAt,
      Value<int> rowid,
    });
typedef $$CheckListItemsTableTableUpdateCompanionBuilder =
    CheckListItemsTableCompanion Function({
      Value<String> id,
      Value<String> checkListId,
      Value<String> name,
      Value<bool> isChecked,
      Value<String> createdAt,
      Value<String> updatedAt,
      Value<int> rowid,
    });

class $$CheckListItemsTableTableFilterComposer
    extends Composer<_$AppDatabase, $CheckListItemsTableTable> {
  $$CheckListItemsTableTableFilterComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  ColumnFilters<String> get id => $composableBuilder(
    column: $table.id,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<String> get checkListId => $composableBuilder(
    column: $table.checkListId,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<String> get name => $composableBuilder(
    column: $table.name,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<bool> get isChecked => $composableBuilder(
    column: $table.isChecked,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<String> get createdAt => $composableBuilder(
    column: $table.createdAt,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<String> get updatedAt => $composableBuilder(
    column: $table.updatedAt,
    builder: (column) => ColumnFilters(column),
  );
}

class $$CheckListItemsTableTableOrderingComposer
    extends Composer<_$AppDatabase, $CheckListItemsTableTable> {
  $$CheckListItemsTableTableOrderingComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  ColumnOrderings<String> get id => $composableBuilder(
    column: $table.id,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<String> get checkListId => $composableBuilder(
    column: $table.checkListId,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<String> get name => $composableBuilder(
    column: $table.name,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<bool> get isChecked => $composableBuilder(
    column: $table.isChecked,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<String> get createdAt => $composableBuilder(
    column: $table.createdAt,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<String> get updatedAt => $composableBuilder(
    column: $table.updatedAt,
    builder: (column) => ColumnOrderings(column),
  );
}

class $$CheckListItemsTableTableAnnotationComposer
    extends Composer<_$AppDatabase, $CheckListItemsTableTable> {
  $$CheckListItemsTableTableAnnotationComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  GeneratedColumn<String> get id =>
      $composableBuilder(column: $table.id, builder: (column) => column);

  GeneratedColumn<String> get checkListId => $composableBuilder(
    column: $table.checkListId,
    builder: (column) => column,
  );

  GeneratedColumn<String> get name =>
      $composableBuilder(column: $table.name, builder: (column) => column);

  GeneratedColumn<bool> get isChecked =>
      $composableBuilder(column: $table.isChecked, builder: (column) => column);

  GeneratedColumn<String> get createdAt =>
      $composableBuilder(column: $table.createdAt, builder: (column) => column);

  GeneratedColumn<String> get updatedAt =>
      $composableBuilder(column: $table.updatedAt, builder: (column) => column);
}

class $$CheckListItemsTableTableTableManager
    extends
        RootTableManager<
          _$AppDatabase,
          $CheckListItemsTableTable,
          CheckListItemsTableData,
          $$CheckListItemsTableTableFilterComposer,
          $$CheckListItemsTableTableOrderingComposer,
          $$CheckListItemsTableTableAnnotationComposer,
          $$CheckListItemsTableTableCreateCompanionBuilder,
          $$CheckListItemsTableTableUpdateCompanionBuilder,
          (
            CheckListItemsTableData,
            BaseReferences<
              _$AppDatabase,
              $CheckListItemsTableTable,
              CheckListItemsTableData
            >,
          ),
          CheckListItemsTableData,
          PrefetchHooks Function()
        > {
  $$CheckListItemsTableTableTableManager(
    _$AppDatabase db,
    $CheckListItemsTableTable table,
  ) : super(
        TableManagerState(
          db: db,
          table: table,
          createFilteringComposer: () =>
              $$CheckListItemsTableTableFilterComposer($db: db, $table: table),
          createOrderingComposer: () =>
              $$CheckListItemsTableTableOrderingComposer(
                $db: db,
                $table: table,
              ),
          createComputedFieldComposer: () =>
              $$CheckListItemsTableTableAnnotationComposer(
                $db: db,
                $table: table,
              ),
          updateCompanionCallback:
              ({
                Value<String> id = const Value.absent(),
                Value<String> checkListId = const Value.absent(),
                Value<String> name = const Value.absent(),
                Value<bool> isChecked = const Value.absent(),
                Value<String> createdAt = const Value.absent(),
                Value<String> updatedAt = const Value.absent(),
                Value<int> rowid = const Value.absent(),
              }) => CheckListItemsTableCompanion(
                id: id,
                checkListId: checkListId,
                name: name,
                isChecked: isChecked,
                createdAt: createdAt,
                updatedAt: updatedAt,
                rowid: rowid,
              ),
          createCompanionCallback:
              ({
                required String id,
                required String checkListId,
                required String name,
                Value<bool> isChecked = const Value.absent(),
                required String createdAt,
                required String updatedAt,
                Value<int> rowid = const Value.absent(),
              }) => CheckListItemsTableCompanion.insert(
                id: id,
                checkListId: checkListId,
                name: name,
                isChecked: isChecked,
                createdAt: createdAt,
                updatedAt: updatedAt,
                rowid: rowid,
              ),
          withReferenceMapper: (p0) => p0
              .map((e) => (e.readTable(table), BaseReferences(db, table, e)))
              .toList(),
          prefetchHooksCallback: null,
        ),
      );
}

typedef $$CheckListItemsTableTableProcessedTableManager =
    ProcessedTableManager<
      _$AppDatabase,
      $CheckListItemsTableTable,
      CheckListItemsTableData,
      $$CheckListItemsTableTableFilterComposer,
      $$CheckListItemsTableTableOrderingComposer,
      $$CheckListItemsTableTableAnnotationComposer,
      $$CheckListItemsTableTableCreateCompanionBuilder,
      $$CheckListItemsTableTableUpdateCompanionBuilder,
      (
        CheckListItemsTableData,
        BaseReferences<
          _$AppDatabase,
          $CheckListItemsTableTable,
          CheckListItemsTableData
        >,
      ),
      CheckListItemsTableData,
      PrefetchHooks Function()
    >;

class $AppDatabaseManager {
  final _$AppDatabase _db;
  $AppDatabaseManager(this._db);
  $$ChecklistTableTableTableManager get checklistTable =>
      $$ChecklistTableTableTableManager(_db, _db.checklistTable);
  $$CheckListItemsTableTableTableManager get checkListItemsTable =>
      $$CheckListItemsTableTableTableManager(_db, _db.checkListItemsTable);
}
