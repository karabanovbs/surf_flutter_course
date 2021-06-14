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

class FavoritePlaceData extends DataClass
    implements Insertable<FavoritePlaceData> {
  final int id;
  final double lat;
  final double lng;
  final String placeName;
  final String url;
  final int placeType;
  final String description;
  FavoritePlaceData(
      {required this.id,
      required this.lat,
      required this.lng,
      required this.placeName,
      required this.url,
      required this.placeType,
      required this.description});
  factory FavoritePlaceData.fromData(
      Map<String, dynamic> data, GeneratedDatabase db,
      {String? prefix}) {
    final effectivePrefix = prefix ?? '';
    return FavoritePlaceData(
      id: const IntType()
          .mapFromDatabaseResponse(data['${effectivePrefix}id'])!,
      lat: const RealType()
          .mapFromDatabaseResponse(data['${effectivePrefix}lat'])!,
      lng: const RealType()
          .mapFromDatabaseResponse(data['${effectivePrefix}lng'])!,
      placeName: const StringType()
          .mapFromDatabaseResponse(data['${effectivePrefix}place_name'])!,
      url: const StringType()
          .mapFromDatabaseResponse(data['${effectivePrefix}url'])!,
      placeType: const IntType()
          .mapFromDatabaseResponse(data['${effectivePrefix}place_type'])!,
      description: const StringType()
          .mapFromDatabaseResponse(data['${effectivePrefix}description'])!,
    );
  }
  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    map['id'] = Variable<int>(id);
    map['lat'] = Variable<double>(lat);
    map['lng'] = Variable<double>(lng);
    map['place_name'] = Variable<String>(placeName);
    map['url'] = Variable<String>(url);
    map['place_type'] = Variable<int>(placeType);
    map['description'] = Variable<String>(description);
    return map;
  }

  FavoritePlaceCompanion toCompanion(bool nullToAbsent) {
    return FavoritePlaceCompanion(
      id: Value(id),
      lat: Value(lat),
      lng: Value(lng),
      placeName: Value(placeName),
      url: Value(url),
      placeType: Value(placeType),
      description: Value(description),
    );
  }

  factory FavoritePlaceData.fromJson(Map<String, dynamic> json,
      {ValueSerializer? serializer}) {
    serializer ??= moorRuntimeOptions.defaultSerializer;
    return FavoritePlaceData(
      id: serializer.fromJson<int>(json['id']),
      lat: serializer.fromJson<double>(json['lat']),
      lng: serializer.fromJson<double>(json['lng']),
      placeName: serializer.fromJson<String>(json['placeName']),
      url: serializer.fromJson<String>(json['url']),
      placeType: serializer.fromJson<int>(json['placeType']),
      description: serializer.fromJson<String>(json['description']),
    );
  }
  @override
  Map<String, dynamic> toJson({ValueSerializer? serializer}) {
    serializer ??= moorRuntimeOptions.defaultSerializer;
    return <String, dynamic>{
      'id': serializer.toJson<int>(id),
      'lat': serializer.toJson<double>(lat),
      'lng': serializer.toJson<double>(lng),
      'placeName': serializer.toJson<String>(placeName),
      'url': serializer.toJson<String>(url),
      'placeType': serializer.toJson<int>(placeType),
      'description': serializer.toJson<String>(description),
    };
  }

  FavoritePlaceData copyWith(
          {int? id,
          double? lat,
          double? lng,
          String? placeName,
          String? url,
          int? placeType,
          String? description}) =>
      FavoritePlaceData(
        id: id ?? this.id,
        lat: lat ?? this.lat,
        lng: lng ?? this.lng,
        placeName: placeName ?? this.placeName,
        url: url ?? this.url,
        placeType: placeType ?? this.placeType,
        description: description ?? this.description,
      );
  @override
  String toString() {
    return (StringBuffer('FavoritePlaceData(')
          ..write('id: $id, ')
          ..write('lat: $lat, ')
          ..write('lng: $lng, ')
          ..write('placeName: $placeName, ')
          ..write('url: $url, ')
          ..write('placeType: $placeType, ')
          ..write('description: $description')
          ..write(')'))
        .toString();
  }

  @override
  int get hashCode => $mrjf($mrjc(
      id.hashCode,
      $mrjc(
          lat.hashCode,
          $mrjc(
              lng.hashCode,
              $mrjc(
                  placeName.hashCode,
                  $mrjc(url.hashCode,
                      $mrjc(placeType.hashCode, description.hashCode)))))));
  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other is FavoritePlaceData &&
          other.id == this.id &&
          other.lat == this.lat &&
          other.lng == this.lng &&
          other.placeName == this.placeName &&
          other.url == this.url &&
          other.placeType == this.placeType &&
          other.description == this.description);
}

class FavoritePlaceCompanion extends UpdateCompanion<FavoritePlaceData> {
  final Value<int> id;
  final Value<double> lat;
  final Value<double> lng;
  final Value<String> placeName;
  final Value<String> url;
  final Value<int> placeType;
  final Value<String> description;
  const FavoritePlaceCompanion({
    this.id = const Value.absent(),
    this.lat = const Value.absent(),
    this.lng = const Value.absent(),
    this.placeName = const Value.absent(),
    this.url = const Value.absent(),
    this.placeType = const Value.absent(),
    this.description = const Value.absent(),
  });
  FavoritePlaceCompanion.insert({
    required int id,
    required double lat,
    required double lng,
    required String placeName,
    required String url,
    required int placeType,
    required String description,
  })   : id = Value(id),
        lat = Value(lat),
        lng = Value(lng),
        placeName = Value(placeName),
        url = Value(url),
        placeType = Value(placeType),
        description = Value(description);
  static Insertable<FavoritePlaceData> custom({
    Expression<int>? id,
    Expression<double>? lat,
    Expression<double>? lng,
    Expression<String>? placeName,
    Expression<String>? url,
    Expression<int>? placeType,
    Expression<String>? description,
  }) {
    return RawValuesInsertable({
      if (id != null) 'id': id,
      if (lat != null) 'lat': lat,
      if (lng != null) 'lng': lng,
      if (placeName != null) 'place_name': placeName,
      if (url != null) 'url': url,
      if (placeType != null) 'place_type': placeType,
      if (description != null) 'description': description,
    });
  }

  FavoritePlaceCompanion copyWith(
      {Value<int>? id,
      Value<double>? lat,
      Value<double>? lng,
      Value<String>? placeName,
      Value<String>? url,
      Value<int>? placeType,
      Value<String>? description}) {
    return FavoritePlaceCompanion(
      id: id ?? this.id,
      lat: lat ?? this.lat,
      lng: lng ?? this.lng,
      placeName: placeName ?? this.placeName,
      url: url ?? this.url,
      placeType: placeType ?? this.placeType,
      description: description ?? this.description,
    );
  }

  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    if (id.present) {
      map['id'] = Variable<int>(id.value);
    }
    if (lat.present) {
      map['lat'] = Variable<double>(lat.value);
    }
    if (lng.present) {
      map['lng'] = Variable<double>(lng.value);
    }
    if (placeName.present) {
      map['place_name'] = Variable<String>(placeName.value);
    }
    if (url.present) {
      map['url'] = Variable<String>(url.value);
    }
    if (placeType.present) {
      map['place_type'] = Variable<int>(placeType.value);
    }
    if (description.present) {
      map['description'] = Variable<String>(description.value);
    }
    return map;
  }

  @override
  String toString() {
    return (StringBuffer('FavoritePlaceCompanion(')
          ..write('id: $id, ')
          ..write('lat: $lat, ')
          ..write('lng: $lng, ')
          ..write('placeName: $placeName, ')
          ..write('url: $url, ')
          ..write('placeType: $placeType, ')
          ..write('description: $description')
          ..write(')'))
        .toString();
  }
}

class $FavoritePlaceTable extends FavoritePlace
    with TableInfo<$FavoritePlaceTable, FavoritePlaceData> {
  final GeneratedDatabase _db;
  final String? _alias;
  $FavoritePlaceTable(this._db, [this._alias]);
  final VerificationMeta _idMeta = const VerificationMeta('id');
  @override
  late final GeneratedIntColumn id = _constructId();
  GeneratedIntColumn _constructId() {
    return GeneratedIntColumn(
      'id',
      $tableName,
      false,
    );
  }

  final VerificationMeta _latMeta = const VerificationMeta('lat');
  @override
  late final GeneratedRealColumn lat = _constructLat();
  GeneratedRealColumn _constructLat() {
    return GeneratedRealColumn(
      'lat',
      $tableName,
      false,
    );
  }

  final VerificationMeta _lngMeta = const VerificationMeta('lng');
  @override
  late final GeneratedRealColumn lng = _constructLng();
  GeneratedRealColumn _constructLng() {
    return GeneratedRealColumn(
      'lng',
      $tableName,
      false,
    );
  }

  final VerificationMeta _placeNameMeta = const VerificationMeta('placeName');
  @override
  late final GeneratedTextColumn placeName = _constructPlaceName();
  GeneratedTextColumn _constructPlaceName() {
    return GeneratedTextColumn(
      'place_name',
      $tableName,
      false,
    );
  }

  final VerificationMeta _urlMeta = const VerificationMeta('url');
  @override
  late final GeneratedTextColumn url = _constructUrl();
  GeneratedTextColumn _constructUrl() {
    return GeneratedTextColumn(
      'url',
      $tableName,
      false,
    );
  }

  final VerificationMeta _placeTypeMeta = const VerificationMeta('placeType');
  @override
  late final GeneratedIntColumn placeType = _constructPlaceType();
  GeneratedIntColumn _constructPlaceType() {
    return GeneratedIntColumn(
      'place_type',
      $tableName,
      false,
    );
  }

  final VerificationMeta _descriptionMeta =
      const VerificationMeta('description');
  @override
  late final GeneratedTextColumn description = _constructDescription();
  GeneratedTextColumn _constructDescription() {
    return GeneratedTextColumn(
      'description',
      $tableName,
      false,
    );
  }

  @override
  List<GeneratedColumn> get $columns =>
      [id, lat, lng, placeName, url, placeType, description];
  @override
  $FavoritePlaceTable get asDslTable => this;
  @override
  String get $tableName => _alias ?? 'favorite_place';
  @override
  final String actualTableName = 'favorite_place';
  @override
  VerificationContext validateIntegrity(Insertable<FavoritePlaceData> instance,
      {bool isInserting = false}) {
    final context = VerificationContext();
    final data = instance.toColumns(true);
    if (data.containsKey('id')) {
      context.handle(_idMeta, id.isAcceptableOrUnknown(data['id']!, _idMeta));
    } else if (isInserting) {
      context.missing(_idMeta);
    }
    if (data.containsKey('lat')) {
      context.handle(
          _latMeta, lat.isAcceptableOrUnknown(data['lat']!, _latMeta));
    } else if (isInserting) {
      context.missing(_latMeta);
    }
    if (data.containsKey('lng')) {
      context.handle(
          _lngMeta, lng.isAcceptableOrUnknown(data['lng']!, _lngMeta));
    } else if (isInserting) {
      context.missing(_lngMeta);
    }
    if (data.containsKey('place_name')) {
      context.handle(_placeNameMeta,
          placeName.isAcceptableOrUnknown(data['place_name']!, _placeNameMeta));
    } else if (isInserting) {
      context.missing(_placeNameMeta);
    }
    if (data.containsKey('url')) {
      context.handle(
          _urlMeta, url.isAcceptableOrUnknown(data['url']!, _urlMeta));
    } else if (isInserting) {
      context.missing(_urlMeta);
    }
    if (data.containsKey('place_type')) {
      context.handle(_placeTypeMeta,
          placeType.isAcceptableOrUnknown(data['place_type']!, _placeTypeMeta));
    } else if (isInserting) {
      context.missing(_placeTypeMeta);
    }
    if (data.containsKey('description')) {
      context.handle(
          _descriptionMeta,
          description.isAcceptableOrUnknown(
              data['description']!, _descriptionMeta));
    } else if (isInserting) {
      context.missing(_descriptionMeta);
    }
    return context;
  }

  @override
  Set<GeneratedColumn> get $primaryKey => <GeneratedColumn>{};
  @override
  FavoritePlaceData map(Map<String, dynamic> data, {String? tablePrefix}) {
    return FavoritePlaceData.fromData(data, _db,
        prefix: tablePrefix != null ? '$tablePrefix.' : null);
  }

  @override
  $FavoritePlaceTable createAlias(String alias) {
    return $FavoritePlaceTable(_db, alias);
  }
}

class VisitedPlaceData extends DataClass
    implements Insertable<VisitedPlaceData> {
  final int id;
  final double lat;
  final double lng;
  final String placeName;
  final String url;
  final int placeType;
  final String description;
  VisitedPlaceData(
      {required this.id,
      required this.lat,
      required this.lng,
      required this.placeName,
      required this.url,
      required this.placeType,
      required this.description});
  factory VisitedPlaceData.fromData(
      Map<String, dynamic> data, GeneratedDatabase db,
      {String? prefix}) {
    final effectivePrefix = prefix ?? '';
    return VisitedPlaceData(
      id: const IntType()
          .mapFromDatabaseResponse(data['${effectivePrefix}id'])!,
      lat: const RealType()
          .mapFromDatabaseResponse(data['${effectivePrefix}lat'])!,
      lng: const RealType()
          .mapFromDatabaseResponse(data['${effectivePrefix}lng'])!,
      placeName: const StringType()
          .mapFromDatabaseResponse(data['${effectivePrefix}place_name'])!,
      url: const StringType()
          .mapFromDatabaseResponse(data['${effectivePrefix}url'])!,
      placeType: const IntType()
          .mapFromDatabaseResponse(data['${effectivePrefix}place_type'])!,
      description: const StringType()
          .mapFromDatabaseResponse(data['${effectivePrefix}description'])!,
    );
  }
  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    map['id'] = Variable<int>(id);
    map['lat'] = Variable<double>(lat);
    map['lng'] = Variable<double>(lng);
    map['place_name'] = Variable<String>(placeName);
    map['url'] = Variable<String>(url);
    map['place_type'] = Variable<int>(placeType);
    map['description'] = Variable<String>(description);
    return map;
  }

  VisitedPlaceCompanion toCompanion(bool nullToAbsent) {
    return VisitedPlaceCompanion(
      id: Value(id),
      lat: Value(lat),
      lng: Value(lng),
      placeName: Value(placeName),
      url: Value(url),
      placeType: Value(placeType),
      description: Value(description),
    );
  }

  factory VisitedPlaceData.fromJson(Map<String, dynamic> json,
      {ValueSerializer? serializer}) {
    serializer ??= moorRuntimeOptions.defaultSerializer;
    return VisitedPlaceData(
      id: serializer.fromJson<int>(json['id']),
      lat: serializer.fromJson<double>(json['lat']),
      lng: serializer.fromJson<double>(json['lng']),
      placeName: serializer.fromJson<String>(json['placeName']),
      url: serializer.fromJson<String>(json['url']),
      placeType: serializer.fromJson<int>(json['placeType']),
      description: serializer.fromJson<String>(json['description']),
    );
  }
  @override
  Map<String, dynamic> toJson({ValueSerializer? serializer}) {
    serializer ??= moorRuntimeOptions.defaultSerializer;
    return <String, dynamic>{
      'id': serializer.toJson<int>(id),
      'lat': serializer.toJson<double>(lat),
      'lng': serializer.toJson<double>(lng),
      'placeName': serializer.toJson<String>(placeName),
      'url': serializer.toJson<String>(url),
      'placeType': serializer.toJson<int>(placeType),
      'description': serializer.toJson<String>(description),
    };
  }

  VisitedPlaceData copyWith(
          {int? id,
          double? lat,
          double? lng,
          String? placeName,
          String? url,
          int? placeType,
          String? description}) =>
      VisitedPlaceData(
        id: id ?? this.id,
        lat: lat ?? this.lat,
        lng: lng ?? this.lng,
        placeName: placeName ?? this.placeName,
        url: url ?? this.url,
        placeType: placeType ?? this.placeType,
        description: description ?? this.description,
      );
  @override
  String toString() {
    return (StringBuffer('VisitedPlaceData(')
          ..write('id: $id, ')
          ..write('lat: $lat, ')
          ..write('lng: $lng, ')
          ..write('placeName: $placeName, ')
          ..write('url: $url, ')
          ..write('placeType: $placeType, ')
          ..write('description: $description')
          ..write(')'))
        .toString();
  }

  @override
  int get hashCode => $mrjf($mrjc(
      id.hashCode,
      $mrjc(
          lat.hashCode,
          $mrjc(
              lng.hashCode,
              $mrjc(
                  placeName.hashCode,
                  $mrjc(url.hashCode,
                      $mrjc(placeType.hashCode, description.hashCode)))))));
  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other is VisitedPlaceData &&
          other.id == this.id &&
          other.lat == this.lat &&
          other.lng == this.lng &&
          other.placeName == this.placeName &&
          other.url == this.url &&
          other.placeType == this.placeType &&
          other.description == this.description);
}

class VisitedPlaceCompanion extends UpdateCompanion<VisitedPlaceData> {
  final Value<int> id;
  final Value<double> lat;
  final Value<double> lng;
  final Value<String> placeName;
  final Value<String> url;
  final Value<int> placeType;
  final Value<String> description;
  const VisitedPlaceCompanion({
    this.id = const Value.absent(),
    this.lat = const Value.absent(),
    this.lng = const Value.absent(),
    this.placeName = const Value.absent(),
    this.url = const Value.absent(),
    this.placeType = const Value.absent(),
    this.description = const Value.absent(),
  });
  VisitedPlaceCompanion.insert({
    required int id,
    required double lat,
    required double lng,
    required String placeName,
    required String url,
    required int placeType,
    required String description,
  })   : id = Value(id),
        lat = Value(lat),
        lng = Value(lng),
        placeName = Value(placeName),
        url = Value(url),
        placeType = Value(placeType),
        description = Value(description);
  static Insertable<VisitedPlaceData> custom({
    Expression<int>? id,
    Expression<double>? lat,
    Expression<double>? lng,
    Expression<String>? placeName,
    Expression<String>? url,
    Expression<int>? placeType,
    Expression<String>? description,
  }) {
    return RawValuesInsertable({
      if (id != null) 'id': id,
      if (lat != null) 'lat': lat,
      if (lng != null) 'lng': lng,
      if (placeName != null) 'place_name': placeName,
      if (url != null) 'url': url,
      if (placeType != null) 'place_type': placeType,
      if (description != null) 'description': description,
    });
  }

  VisitedPlaceCompanion copyWith(
      {Value<int>? id,
      Value<double>? lat,
      Value<double>? lng,
      Value<String>? placeName,
      Value<String>? url,
      Value<int>? placeType,
      Value<String>? description}) {
    return VisitedPlaceCompanion(
      id: id ?? this.id,
      lat: lat ?? this.lat,
      lng: lng ?? this.lng,
      placeName: placeName ?? this.placeName,
      url: url ?? this.url,
      placeType: placeType ?? this.placeType,
      description: description ?? this.description,
    );
  }

  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    if (id.present) {
      map['id'] = Variable<int>(id.value);
    }
    if (lat.present) {
      map['lat'] = Variable<double>(lat.value);
    }
    if (lng.present) {
      map['lng'] = Variable<double>(lng.value);
    }
    if (placeName.present) {
      map['place_name'] = Variable<String>(placeName.value);
    }
    if (url.present) {
      map['url'] = Variable<String>(url.value);
    }
    if (placeType.present) {
      map['place_type'] = Variable<int>(placeType.value);
    }
    if (description.present) {
      map['description'] = Variable<String>(description.value);
    }
    return map;
  }

  @override
  String toString() {
    return (StringBuffer('VisitedPlaceCompanion(')
          ..write('id: $id, ')
          ..write('lat: $lat, ')
          ..write('lng: $lng, ')
          ..write('placeName: $placeName, ')
          ..write('url: $url, ')
          ..write('placeType: $placeType, ')
          ..write('description: $description')
          ..write(')'))
        .toString();
  }
}

class $VisitedPlaceTable extends VisitedPlace
    with TableInfo<$VisitedPlaceTable, VisitedPlaceData> {
  final GeneratedDatabase _db;
  final String? _alias;
  $VisitedPlaceTable(this._db, [this._alias]);
  final VerificationMeta _idMeta = const VerificationMeta('id');
  @override
  late final GeneratedIntColumn id = _constructId();
  GeneratedIntColumn _constructId() {
    return GeneratedIntColumn(
      'id',
      $tableName,
      false,
    );
  }

  final VerificationMeta _latMeta = const VerificationMeta('lat');
  @override
  late final GeneratedRealColumn lat = _constructLat();
  GeneratedRealColumn _constructLat() {
    return GeneratedRealColumn(
      'lat',
      $tableName,
      false,
    );
  }

  final VerificationMeta _lngMeta = const VerificationMeta('lng');
  @override
  late final GeneratedRealColumn lng = _constructLng();
  GeneratedRealColumn _constructLng() {
    return GeneratedRealColumn(
      'lng',
      $tableName,
      false,
    );
  }

  final VerificationMeta _placeNameMeta = const VerificationMeta('placeName');
  @override
  late final GeneratedTextColumn placeName = _constructPlaceName();
  GeneratedTextColumn _constructPlaceName() {
    return GeneratedTextColumn(
      'place_name',
      $tableName,
      false,
    );
  }

  final VerificationMeta _urlMeta = const VerificationMeta('url');
  @override
  late final GeneratedTextColumn url = _constructUrl();
  GeneratedTextColumn _constructUrl() {
    return GeneratedTextColumn(
      'url',
      $tableName,
      false,
    );
  }

  final VerificationMeta _placeTypeMeta = const VerificationMeta('placeType');
  @override
  late final GeneratedIntColumn placeType = _constructPlaceType();
  GeneratedIntColumn _constructPlaceType() {
    return GeneratedIntColumn(
      'place_type',
      $tableName,
      false,
    );
  }

  final VerificationMeta _descriptionMeta =
      const VerificationMeta('description');
  @override
  late final GeneratedTextColumn description = _constructDescription();
  GeneratedTextColumn _constructDescription() {
    return GeneratedTextColumn(
      'description',
      $tableName,
      false,
    );
  }

  @override
  List<GeneratedColumn> get $columns =>
      [id, lat, lng, placeName, url, placeType, description];
  @override
  $VisitedPlaceTable get asDslTable => this;
  @override
  String get $tableName => _alias ?? 'visited_place';
  @override
  final String actualTableName = 'visited_place';
  @override
  VerificationContext validateIntegrity(Insertable<VisitedPlaceData> instance,
      {bool isInserting = false}) {
    final context = VerificationContext();
    final data = instance.toColumns(true);
    if (data.containsKey('id')) {
      context.handle(_idMeta, id.isAcceptableOrUnknown(data['id']!, _idMeta));
    } else if (isInserting) {
      context.missing(_idMeta);
    }
    if (data.containsKey('lat')) {
      context.handle(
          _latMeta, lat.isAcceptableOrUnknown(data['lat']!, _latMeta));
    } else if (isInserting) {
      context.missing(_latMeta);
    }
    if (data.containsKey('lng')) {
      context.handle(
          _lngMeta, lng.isAcceptableOrUnknown(data['lng']!, _lngMeta));
    } else if (isInserting) {
      context.missing(_lngMeta);
    }
    if (data.containsKey('place_name')) {
      context.handle(_placeNameMeta,
          placeName.isAcceptableOrUnknown(data['place_name']!, _placeNameMeta));
    } else if (isInserting) {
      context.missing(_placeNameMeta);
    }
    if (data.containsKey('url')) {
      context.handle(
          _urlMeta, url.isAcceptableOrUnknown(data['url']!, _urlMeta));
    } else if (isInserting) {
      context.missing(_urlMeta);
    }
    if (data.containsKey('place_type')) {
      context.handle(_placeTypeMeta,
          placeType.isAcceptableOrUnknown(data['place_type']!, _placeTypeMeta));
    } else if (isInserting) {
      context.missing(_placeTypeMeta);
    }
    if (data.containsKey('description')) {
      context.handle(
          _descriptionMeta,
          description.isAcceptableOrUnknown(
              data['description']!, _descriptionMeta));
    } else if (isInserting) {
      context.missing(_descriptionMeta);
    }
    return context;
  }

  @override
  Set<GeneratedColumn> get $primaryKey => <GeneratedColumn>{};
  @override
  VisitedPlaceData map(Map<String, dynamic> data, {String? tablePrefix}) {
    return VisitedPlaceData.fromData(data, _db,
        prefix: tablePrefix != null ? '$tablePrefix.' : null);
  }

  @override
  $VisitedPlaceTable createAlias(String alias) {
    return $VisitedPlaceTable(_db, alias);
  }
}

abstract class _$AppDataBase extends GeneratedDatabase {
  _$AppDataBase(QueryExecutor e) : super(SqlTypeSystem.defaultInstance, e);
  late final $SearchHistoryTable searchHistory = $SearchHistoryTable(this);
  late final $FavoritePlaceTable favoritePlace = $FavoritePlaceTable(this);
  late final $VisitedPlaceTable visitedPlace = $VisitedPlaceTable(this);
  @override
  Iterable<TableInfo> get allTables => allSchemaEntities.whereType<TableInfo>();
  @override
  List<DatabaseSchemaEntity> get allSchemaEntities =>
      [searchHistory, favoritePlace, visitedPlace];
}
