// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'provincia.dart';

// **************************************************************************
// IsarCollectionGenerator
// **************************************************************************

// coverage:ignore-file
// ignore_for_file: duplicate_ignore, non_constant_identifier_names, constant_identifier_names, invalid_use_of_protected_member, unnecessary_cast, prefer_const_constructors, lines_longer_than_80_chars, require_trailing_commas, inference_failure_on_function_invocation, unnecessary_parenthesis, unnecessary_raw_strings, unnecessary_null_checks, join_return_with_assignment, prefer_final_locals, avoid_js_rounded_ints, avoid_positional_boolean_parameters, always_specify_types

extension GetProvinciaEntityCollection on Isar {
  IsarCollection<ProvinciaEntity> get provinciaEntitys => this.collection();
}

const ProvinciaEntitySchema = CollectionSchema(
  name: r'ProvinciaEntity',
  id: 1951571928336105725,
  properties: {
    r'abreviatura': PropertySchema(
      id: 0,
      name: r'abreviatura',
      type: IsarType.string,
    ),
    r'id': PropertySchema(
      id: 1,
      name: r'id',
      type: IsarType.long,
    ),
    r'nombre': PropertySchema(
      id: 2,
      name: r'nombre',
      type: IsarType.string,
    )
  },
  estimateSize: _provinciaEntityEstimateSize,
  serialize: _provinciaEntitySerialize,
  deserialize: _provinciaEntityDeserialize,
  deserializeProp: _provinciaEntityDeserializeProp,
  idName: r'isarId',
  indexes: {},
  links: {},
  embeddedSchemas: {},
  getId: _provinciaEntityGetId,
  getLinks: _provinciaEntityGetLinks,
  attach: _provinciaEntityAttach,
  version: '3.1.0+1',
);

int _provinciaEntityEstimateSize(
  ProvinciaEntity object,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  var bytesCount = offsets.last;
  bytesCount += 3 + object.abreviatura.length * 3;
  bytesCount += 3 + object.nombre.length * 3;
  return bytesCount;
}

void _provinciaEntitySerialize(
  ProvinciaEntity object,
  IsarWriter writer,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  writer.writeString(offsets[0], object.abreviatura);
  writer.writeLong(offsets[1], object.id);
  writer.writeString(offsets[2], object.nombre);
}

ProvinciaEntity _provinciaEntityDeserialize(
  Id id,
  IsarReader reader,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  final object = ProvinciaEntity(
    abreviatura: reader.readString(offsets[0]),
    id: reader.readLong(offsets[1]),
    nombre: reader.readString(offsets[2]),
  );
  object.isarId = id;
  return object;
}

P _provinciaEntityDeserializeProp<P>(
  IsarReader reader,
  int propertyId,
  int offset,
  Map<Type, List<int>> allOffsets,
) {
  switch (propertyId) {
    case 0:
      return (reader.readString(offset)) as P;
    case 1:
      return (reader.readLong(offset)) as P;
    case 2:
      return (reader.readString(offset)) as P;
    default:
      throw IsarError('Unknown property with id $propertyId');
  }
}

Id _provinciaEntityGetId(ProvinciaEntity object) {
  return object.isarId ?? Isar.autoIncrement;
}

List<IsarLinkBase<dynamic>> _provinciaEntityGetLinks(ProvinciaEntity object) {
  return [];
}

void _provinciaEntityAttach(
    IsarCollection<dynamic> col, Id id, ProvinciaEntity object) {
  object.isarId = id;
}

extension ProvinciaEntityQueryWhereSort
    on QueryBuilder<ProvinciaEntity, ProvinciaEntity, QWhere> {
  QueryBuilder<ProvinciaEntity, ProvinciaEntity, QAfterWhere> anyIsarId() {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(const IdWhereClause.any());
    });
  }
}

extension ProvinciaEntityQueryWhere
    on QueryBuilder<ProvinciaEntity, ProvinciaEntity, QWhereClause> {
  QueryBuilder<ProvinciaEntity, ProvinciaEntity, QAfterWhereClause>
      isarIdEqualTo(Id isarId) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(IdWhereClause.between(
        lower: isarId,
        upper: isarId,
      ));
    });
  }

  QueryBuilder<ProvinciaEntity, ProvinciaEntity, QAfterWhereClause>
      isarIdNotEqualTo(Id isarId) {
    return QueryBuilder.apply(this, (query) {
      if (query.whereSort == Sort.asc) {
        return query
            .addWhereClause(
              IdWhereClause.lessThan(upper: isarId, includeUpper: false),
            )
            .addWhereClause(
              IdWhereClause.greaterThan(lower: isarId, includeLower: false),
            );
      } else {
        return query
            .addWhereClause(
              IdWhereClause.greaterThan(lower: isarId, includeLower: false),
            )
            .addWhereClause(
              IdWhereClause.lessThan(upper: isarId, includeUpper: false),
            );
      }
    });
  }

  QueryBuilder<ProvinciaEntity, ProvinciaEntity, QAfterWhereClause>
      isarIdGreaterThan(Id isarId, {bool include = false}) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(
        IdWhereClause.greaterThan(lower: isarId, includeLower: include),
      );
    });
  }

  QueryBuilder<ProvinciaEntity, ProvinciaEntity, QAfterWhereClause>
      isarIdLessThan(Id isarId, {bool include = false}) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(
        IdWhereClause.lessThan(upper: isarId, includeUpper: include),
      );
    });
  }

  QueryBuilder<ProvinciaEntity, ProvinciaEntity, QAfterWhereClause>
      isarIdBetween(
    Id lowerIsarId,
    Id upperIsarId, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(IdWhereClause.between(
        lower: lowerIsarId,
        includeLower: includeLower,
        upper: upperIsarId,
        includeUpper: includeUpper,
      ));
    });
  }
}

extension ProvinciaEntityQueryFilter
    on QueryBuilder<ProvinciaEntity, ProvinciaEntity, QFilterCondition> {
  QueryBuilder<ProvinciaEntity, ProvinciaEntity, QAfterFilterCondition>
      abreviaturaEqualTo(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'abreviatura',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<ProvinciaEntity, ProvinciaEntity, QAfterFilterCondition>
      abreviaturaGreaterThan(
    String value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'abreviatura',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<ProvinciaEntity, ProvinciaEntity, QAfterFilterCondition>
      abreviaturaLessThan(
    String value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'abreviatura',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<ProvinciaEntity, ProvinciaEntity, QAfterFilterCondition>
      abreviaturaBetween(
    String lower,
    String upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'abreviatura',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<ProvinciaEntity, ProvinciaEntity, QAfterFilterCondition>
      abreviaturaStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'abreviatura',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<ProvinciaEntity, ProvinciaEntity, QAfterFilterCondition>
      abreviaturaEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'abreviatura',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<ProvinciaEntity, ProvinciaEntity, QAfterFilterCondition>
      abreviaturaContains(String value, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'abreviatura',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<ProvinciaEntity, ProvinciaEntity, QAfterFilterCondition>
      abreviaturaMatches(String pattern, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'abreviatura',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<ProvinciaEntity, ProvinciaEntity, QAfterFilterCondition>
      abreviaturaIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'abreviatura',
        value: '',
      ));
    });
  }

  QueryBuilder<ProvinciaEntity, ProvinciaEntity, QAfterFilterCondition>
      abreviaturaIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'abreviatura',
        value: '',
      ));
    });
  }

  QueryBuilder<ProvinciaEntity, ProvinciaEntity, QAfterFilterCondition>
      idEqualTo(int value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'id',
        value: value,
      ));
    });
  }

  QueryBuilder<ProvinciaEntity, ProvinciaEntity, QAfterFilterCondition>
      idGreaterThan(
    int value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'id',
        value: value,
      ));
    });
  }

  QueryBuilder<ProvinciaEntity, ProvinciaEntity, QAfterFilterCondition>
      idLessThan(
    int value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'id',
        value: value,
      ));
    });
  }

  QueryBuilder<ProvinciaEntity, ProvinciaEntity, QAfterFilterCondition>
      idBetween(
    int lower,
    int upper, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'id',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
      ));
    });
  }

  QueryBuilder<ProvinciaEntity, ProvinciaEntity, QAfterFilterCondition>
      isarIdIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'isarId',
      ));
    });
  }

  QueryBuilder<ProvinciaEntity, ProvinciaEntity, QAfterFilterCondition>
      isarIdIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'isarId',
      ));
    });
  }

  QueryBuilder<ProvinciaEntity, ProvinciaEntity, QAfterFilterCondition>
      isarIdEqualTo(Id? value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'isarId',
        value: value,
      ));
    });
  }

  QueryBuilder<ProvinciaEntity, ProvinciaEntity, QAfterFilterCondition>
      isarIdGreaterThan(
    Id? value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'isarId',
        value: value,
      ));
    });
  }

  QueryBuilder<ProvinciaEntity, ProvinciaEntity, QAfterFilterCondition>
      isarIdLessThan(
    Id? value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'isarId',
        value: value,
      ));
    });
  }

  QueryBuilder<ProvinciaEntity, ProvinciaEntity, QAfterFilterCondition>
      isarIdBetween(
    Id? lower,
    Id? upper, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'isarId',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
      ));
    });
  }

  QueryBuilder<ProvinciaEntity, ProvinciaEntity, QAfterFilterCondition>
      nombreEqualTo(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'nombre',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<ProvinciaEntity, ProvinciaEntity, QAfterFilterCondition>
      nombreGreaterThan(
    String value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'nombre',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<ProvinciaEntity, ProvinciaEntity, QAfterFilterCondition>
      nombreLessThan(
    String value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'nombre',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<ProvinciaEntity, ProvinciaEntity, QAfterFilterCondition>
      nombreBetween(
    String lower,
    String upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'nombre',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<ProvinciaEntity, ProvinciaEntity, QAfterFilterCondition>
      nombreStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'nombre',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<ProvinciaEntity, ProvinciaEntity, QAfterFilterCondition>
      nombreEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'nombre',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<ProvinciaEntity, ProvinciaEntity, QAfterFilterCondition>
      nombreContains(String value, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'nombre',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<ProvinciaEntity, ProvinciaEntity, QAfterFilterCondition>
      nombreMatches(String pattern, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'nombre',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<ProvinciaEntity, ProvinciaEntity, QAfterFilterCondition>
      nombreIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'nombre',
        value: '',
      ));
    });
  }

  QueryBuilder<ProvinciaEntity, ProvinciaEntity, QAfterFilterCondition>
      nombreIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'nombre',
        value: '',
      ));
    });
  }
}

extension ProvinciaEntityQueryObject
    on QueryBuilder<ProvinciaEntity, ProvinciaEntity, QFilterCondition> {}

extension ProvinciaEntityQueryLinks
    on QueryBuilder<ProvinciaEntity, ProvinciaEntity, QFilterCondition> {}

extension ProvinciaEntityQuerySortBy
    on QueryBuilder<ProvinciaEntity, ProvinciaEntity, QSortBy> {
  QueryBuilder<ProvinciaEntity, ProvinciaEntity, QAfterSortBy>
      sortByAbreviatura() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'abreviatura', Sort.asc);
    });
  }

  QueryBuilder<ProvinciaEntity, ProvinciaEntity, QAfterSortBy>
      sortByAbreviaturaDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'abreviatura', Sort.desc);
    });
  }

  QueryBuilder<ProvinciaEntity, ProvinciaEntity, QAfterSortBy> sortById() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'id', Sort.asc);
    });
  }

  QueryBuilder<ProvinciaEntity, ProvinciaEntity, QAfterSortBy> sortByIdDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'id', Sort.desc);
    });
  }

  QueryBuilder<ProvinciaEntity, ProvinciaEntity, QAfterSortBy> sortByNombre() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'nombre', Sort.asc);
    });
  }

  QueryBuilder<ProvinciaEntity, ProvinciaEntity, QAfterSortBy>
      sortByNombreDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'nombre', Sort.desc);
    });
  }
}

extension ProvinciaEntityQuerySortThenBy
    on QueryBuilder<ProvinciaEntity, ProvinciaEntity, QSortThenBy> {
  QueryBuilder<ProvinciaEntity, ProvinciaEntity, QAfterSortBy>
      thenByAbreviatura() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'abreviatura', Sort.asc);
    });
  }

  QueryBuilder<ProvinciaEntity, ProvinciaEntity, QAfterSortBy>
      thenByAbreviaturaDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'abreviatura', Sort.desc);
    });
  }

  QueryBuilder<ProvinciaEntity, ProvinciaEntity, QAfterSortBy> thenById() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'id', Sort.asc);
    });
  }

  QueryBuilder<ProvinciaEntity, ProvinciaEntity, QAfterSortBy> thenByIdDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'id', Sort.desc);
    });
  }

  QueryBuilder<ProvinciaEntity, ProvinciaEntity, QAfterSortBy> thenByIsarId() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'isarId', Sort.asc);
    });
  }

  QueryBuilder<ProvinciaEntity, ProvinciaEntity, QAfterSortBy>
      thenByIsarIdDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'isarId', Sort.desc);
    });
  }

  QueryBuilder<ProvinciaEntity, ProvinciaEntity, QAfterSortBy> thenByNombre() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'nombre', Sort.asc);
    });
  }

  QueryBuilder<ProvinciaEntity, ProvinciaEntity, QAfterSortBy>
      thenByNombreDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'nombre', Sort.desc);
    });
  }
}

extension ProvinciaEntityQueryWhereDistinct
    on QueryBuilder<ProvinciaEntity, ProvinciaEntity, QDistinct> {
  QueryBuilder<ProvinciaEntity, ProvinciaEntity, QDistinct>
      distinctByAbreviatura({bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'abreviatura', caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<ProvinciaEntity, ProvinciaEntity, QDistinct> distinctById() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'id');
    });
  }

  QueryBuilder<ProvinciaEntity, ProvinciaEntity, QDistinct> distinctByNombre(
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'nombre', caseSensitive: caseSensitive);
    });
  }
}

extension ProvinciaEntityQueryProperty
    on QueryBuilder<ProvinciaEntity, ProvinciaEntity, QQueryProperty> {
  QueryBuilder<ProvinciaEntity, int, QQueryOperations> isarIdProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'isarId');
    });
  }

  QueryBuilder<ProvinciaEntity, String, QQueryOperations>
      abreviaturaProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'abreviatura');
    });
  }

  QueryBuilder<ProvinciaEntity, int, QQueryOperations> idProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'id');
    });
  }

  QueryBuilder<ProvinciaEntity, String, QQueryOperations> nombreProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'nombre');
    });
  }
}
