// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'app_data_base.dart';

// **************************************************************************
// MoorGenerator
// **************************************************************************

// ignore_for_file: unnecessary_brace_in_string_interps, unnecessary_this
class SearchHistoryData extends DataClass
    implements Insertable<SearchHistoryData> {
  final int id;
  final String search;
  SearchHistoryData({required this.id, required this.search});
  factory SearchHistoryData.fromData(
      Map<String, dynamic> data, GeneratedDatabase db,
      {String? prefix}) {
    final effectivePrefix = prefix ?? '';
    return SearchHistoryData(
      id: const IntType()
          .mapFromDatabaseResponse(data['${effectivePrefix}id'])!,
      search: const StringType()
          .mapFromDatabaseResponse(data['${effectivePrefix}search'])!,
    );
  }
  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    map['id'] = Variable<int>(id);
    map['search'] = Variable<String>(search);
    return map;
  }

  SearchHistoryCompanion toCompanion(bool nullToAbsent) {
    return SearchHistoryCompanion(
      id: Value(id),
      search: Value(search),
    );
  }

  factory SearchHistoryData.fromJson(Map<String, dynamic> json,
      {ValueSerializer? serializer}) {
    serializer ??= moorRuntimeOptions.defaultSerializer;
    return SearchHistoryData(
      id: serializer.fromJson<int>(json['id']),
      search: serializer.fromJson<String>(json['search']),
    );
  }
  @override
  Map<String, dynamic> toJson({ValueSerializer? serializer}) {
    serializer ??= moorRuntimeOptions.defaultSerializer;
    return <String, dynamic>{
      'id': serializer.toJson<int>(id),
      'search': serializer.toJson<String>(search),
    };
  }

  SearchHistoryData copyWith({int? id, String? search}) => SearchHistoryData(
        id: id ?? this.id,
        search: search ?? this.search,
      );
  @override
  String toString() {
    return (StringBuffer('SearchHistoryData(')
          ..write('id: $id, ')
          ..write('search: $search')
          ..write(')'))
        .toString();
  }

  @override
  int get hashCode => $mrjf($mrjc(id.hashCode, search.hashCode));
  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other is SearchHistoryData &&
          other.id == this.id &&
          other.search == this.search);
}

class SearchHistoryCompanion extends UpdateCompanion<SearchHistoryData> {
  final Value<int> id;
  final Value<String> search;
  const SearchHistoryCompanion({
    this.id = const Value.absent(),
    this.search = const Value.absent(),
  });
  SearchHistoryCompanion.insert({
    this.id = const Value.absent(),
    required String search,
  }) : search = Value(search);
  static Insertable<SearchHistoryData> custom({
    Expression<int>? id,
    Expression<String>? search,
  }) {
    return RawValuesInsertable({
      if (id != null) 'id': id,
      if (search != null) 'search': search,
    });
  }

  SearchHistoryCompanion copyWith({Value<int>? id, Value<String>? search}) {
    return SearchHistoryCompanion(
      id: id ?? this.id,
      search: search ?? this.search,
    );
  }

  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    if (id.present) {
      map['id'] = Variable<int>(id.value);
    }
    if (search.present) {
      map['search'] = Variable<String>(search.value);
    }
    return map;
  }

  @override
  String toString() {
    return (StringBuffer('SearchHistoryCompanion(')
          ..write('id: $id, ')
          ..write('search: $search')
          ..write(')'))
        .toString();
  }
}

class $SearchHistoryTable extends SearchHistory
    with TableInfo<$SearchHistoryTable, SearchHistoryData> {
  final GeneratedDatabase _db;
  final String? _alias;
  $SearchHistoryTable(this._db, [this._alias]);
  final VerificationMeta _idMeta = const VerificationMeta('id');
  @override
  late final GeneratedIntColumn id = _constructId();
  GeneratedIntColumn _constructId() {
    return GeneratedIntColumn('id', $tableName, false,
        hasAutoIncrement: true, declaredAsPrimaryKey: true);
  }

  final VerificationMeta _searchMeta = const VerificationMeta('search');
  @override
  late final GeneratedTextColumn search = _constructSearch();
  GeneratedTextColumn _constructSearch() {
    return GeneratedTextColumn(
      'search',
      $tableName,
      false,
    );
  }

  @override
  List<GeneratedColumn> get $columns => [id, search];
  @override
  $SearchHistoryTable get asDslTable => this;
  @override
  String get $tableName => _alias ?? 'search_history';
  @override
  final String actualTableName = 'search_history';
  @override
  VerificationContext validateIntegrity(Insertable<SearchHistoryData> instance,
      {bool isInserting = false}) {
    final context = VerificationContext();
    final data = instance.toColumns(true);
    if (data.containsKey('id')) {
      context.handle(_idMeta, id.isAcceptableOrUnknown(data['id']!, _idMeta));
    }
    if (data.containsKey('search')) {
      context.handle(_searchMeta,
          search.isAcceptableOrUnknown(data['search']!, _searchMeta));
    } else if (isInserting) {
      context.missing(_searchMeta);
    }
    return context;
  }

  @override
  Set<GeneratedColumn> get $primaryKey => {id};
  @override
  SearchHistoryData map(Map<String, dynamic> data, {String? tablePrefix}) {
    return SearchHistoryData.fromData(data, _db,
        prefix: tablePrefix != null ? '$tablePrefix.' : null);
  }

  @override
  $SearchHistoryTable createAlias(String alias) {
    return $SearchHistoryTable(_db, alias);
  }
}

abstract class _$AppDataBase extends GeneratedDatabase {
  _$AppDataBase(QueryExecutor e) : super(SqlTypeSystem.defaultInstance, e);
  late final $SearchHistoryTable searchHistory = $SearchHistoryTable(this);
  @override
  Iterable<TableInfo> get allTables => allSchemaEntities.whereType<TableInfo>();
  @override
  List<DatabaseSchemaEntity> get allSchemaEntities => [searchHistory];
}
