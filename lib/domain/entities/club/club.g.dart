// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'club.dart';

// **************************************************************************
// IsarCollectionGenerator
// **************************************************************************

// coverage:ignore-file
// ignore_for_file: duplicate_ignore, non_constant_identifier_names, constant_identifier_names, invalid_use_of_protected_member, unnecessary_cast, prefer_const_constructors, lines_longer_than_80_chars, require_trailing_commas, inference_failure_on_function_invocation, unnecessary_parenthesis, unnecessary_raw_strings, unnecessary_null_checks, join_return_with_assignment, prefer_final_locals, avoid_js_rounded_ints, avoid_positional_boolean_parameters, always_specify_types

extension GetClubEntityCollection on Isar {
  IsarCollection<ClubEntity> get clubEntitys => this.collection();
}

const ClubEntitySchema = CollectionSchema(
  name: r'ClubEntity',
  id: 1769320090859701943,
  properties: {
    r'fotoPerfil': PropertySchema(
      id: 0,
      name: r'fotoPerfil',
      type: IsarType.string,
    ),
    r'id': PropertySchema(
      id: 1,
      name: r'id',
      type: IsarType.string,
    ),
    r'idClub': PropertySchema(
      id: 2,
      name: r'idClub',
      type: IsarType.long,
    ),
    r'nombre': PropertySchema(
      id: 3,
      name: r'nombre',
      type: IsarType.string,
    ),
    r'plc': PropertySchema(
      id: 4,
      name: r'plc',
      type: IsarType.double,
    ),
    r'vecesBloqueoComunidad': PropertySchema(
      id: 5,
      name: r'vecesBloqueoComunidad',
      type: IsarType.long,
    )
  },
  estimateSize: _clubEntityEstimateSize,
  serialize: _clubEntitySerialize,
  deserialize: _clubEntityDeserialize,
  deserializeProp: _clubEntityDeserializeProp,
  idName: r'isarId',
  indexes: {},
  links: {
    r'token': LinkSchema(
      id: 6169362022964782345,
      name: r'token',
      target: r'TokenEntity',
      single: true,
    ),
    r'rol': LinkSchema(
      id: -8289977373698527128,
      name: r'rol',
      target: r'RolEntity',
      single: true,
    ),
    r'provincia': LinkSchema(
      id: -3233057702909737160,
      name: r'provincia',
      target: r'ProvinciaEntity',
      single: true,
    ),
    r'municipio': LinkSchema(
      id: 1797422271040745512,
      name: r'municipio',
      target: r'MunicipioEntity',
      single: true,
    ),
    r'tipoClub': LinkSchema(
      id: -7746781557578225650,
      name: r'tipoClub',
      target: r'RolEntity',
      single: true,
    )
  },
  embeddedSchemas: {},
  getId: _clubEntityGetId,
  getLinks: _clubEntityGetLinks,
  attach: _clubEntityAttach,
  version: '3.1.0+1',
);

int _clubEntityEstimateSize(
  ClubEntity object,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  var bytesCount = offsets.last;
  bytesCount += 3 + object.fotoPerfil.length * 3;
  bytesCount += 3 + object.id.length * 3;
  bytesCount += 3 + object.nombre.length * 3;
  return bytesCount;
}

void _clubEntitySerialize(
  ClubEntity object,
  IsarWriter writer,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  writer.writeString(offsets[0], object.fotoPerfil);
  writer.writeString(offsets[1], object.id);
  writer.writeLong(offsets[2], object.idClub);
  writer.writeString(offsets[3], object.nombre);
  writer.writeDouble(offsets[4], object.plc);
  writer.writeLong(offsets[5], object.vecesBloqueoComunidad);
}

ClubEntity _clubEntityDeserialize(
  Id id,
  IsarReader reader,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  final object = ClubEntity(
    fotoPerfil: reader.readString(offsets[0]),
    id: reader.readString(offsets[1]),
    idClub: reader.readLong(offsets[2]),
    nombre: reader.readString(offsets[3]),
    plc: reader.readDoubleOrNull(offsets[4]),
    vecesBloqueoComunidad: reader.readLong(offsets[5]),
  );
  object.isarId = id;
  return object;
}

P _clubEntityDeserializeProp<P>(
  IsarReader reader,
  int propertyId,
  int offset,
  Map<Type, List<int>> allOffsets,
) {
  switch (propertyId) {
    case 0:
      return (reader.readString(offset)) as P;
    case 1:
      return (reader.readString(offset)) as P;
    case 2:
      return (reader.readLong(offset)) as P;
    case 3:
      return (reader.readString(offset)) as P;
    case 4:
      return (reader.readDoubleOrNull(offset)) as P;
    case 5:
      return (reader.readLong(offset)) as P;
    default:
      throw IsarError('Unknown property with id $propertyId');
  }
}

Id _clubEntityGetId(ClubEntity object) {
  return object.isarId ?? Isar.autoIncrement;
}

List<IsarLinkBase<dynamic>> _clubEntityGetLinks(ClubEntity object) {
  return [
    object.token,
    object.rol,
    object.provincia,
    object.municipio,
    object.tipoClub
  ];
}

void _clubEntityAttach(IsarCollection<dynamic> col, Id id, ClubEntity object) {
  object.isarId = id;
  object.token.attach(col, col.isar.collection<TokenEntity>(), r'token', id);
  object.rol.attach(col, col.isar.collection<RolEntity>(), r'rol', id);
  object.provincia
      .attach(col, col.isar.collection<ProvinciaEntity>(), r'provincia', id);
  object.municipio
      .attach(col, col.isar.collection<MunicipioEntity>(), r'municipio', id);
  object.tipoClub
      .attach(col, col.isar.collection<RolEntity>(), r'tipoClub', id);
}

extension ClubEntityQueryWhereSort
    on QueryBuilder<ClubEntity, ClubEntity, QWhere> {
  QueryBuilder<ClubEntity, ClubEntity, QAfterWhere> anyIsarId() {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(const IdWhereClause.any());
    });
  }
}

extension ClubEntityQueryWhere
    on QueryBuilder<ClubEntity, ClubEntity, QWhereClause> {
  QueryBuilder<ClubEntity, ClubEntity, QAfterWhereClause> isarIdEqualTo(
      Id isarId) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(IdWhereClause.between(
        lower: isarId,
        upper: isarId,
      ));
    });
  }

  QueryBuilder<ClubEntity, ClubEntity, QAfterWhereClause> isarIdNotEqualTo(
      Id isarId) {
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

  QueryBuilder<ClubEntity, ClubEntity, QAfterWhereClause> isarIdGreaterThan(
      Id isarId,
      {bool include = false}) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(
        IdWhereClause.greaterThan(lower: isarId, includeLower: include),
      );
    });
  }

  QueryBuilder<ClubEntity, ClubEntity, QAfterWhereClause> isarIdLessThan(
      Id isarId,
      {bool include = false}) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(
        IdWhereClause.lessThan(upper: isarId, includeUpper: include),
      );
    });
  }

  QueryBuilder<ClubEntity, ClubEntity, QAfterWhereClause> isarIdBetween(
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

extension ClubEntityQueryFilter
    on QueryBuilder<ClubEntity, ClubEntity, QFilterCondition> {
  QueryBuilder<ClubEntity, ClubEntity, QAfterFilterCondition> fotoPerfilEqualTo(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'fotoPerfil',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<ClubEntity, ClubEntity, QAfterFilterCondition>
      fotoPerfilGreaterThan(
    String value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'fotoPerfil',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<ClubEntity, ClubEntity, QAfterFilterCondition>
      fotoPerfilLessThan(
    String value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'fotoPerfil',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<ClubEntity, ClubEntity, QAfterFilterCondition> fotoPerfilBetween(
    String lower,
    String upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'fotoPerfil',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<ClubEntity, ClubEntity, QAfterFilterCondition>
      fotoPerfilStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'fotoPerfil',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<ClubEntity, ClubEntity, QAfterFilterCondition>
      fotoPerfilEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'fotoPerfil',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<ClubEntity, ClubEntity, QAfterFilterCondition>
      fotoPerfilContains(String value, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'fotoPerfil',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<ClubEntity, ClubEntity, QAfterFilterCondition> fotoPerfilMatches(
      String pattern,
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'fotoPerfil',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<ClubEntity, ClubEntity, QAfterFilterCondition>
      fotoPerfilIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'fotoPerfil',
        value: '',
      ));
    });
  }

  QueryBuilder<ClubEntity, ClubEntity, QAfterFilterCondition>
      fotoPerfilIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'fotoPerfil',
        value: '',
      ));
    });
  }

  QueryBuilder<ClubEntity, ClubEntity, QAfterFilterCondition> idEqualTo(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'id',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<ClubEntity, ClubEntity, QAfterFilterCondition> idGreaterThan(
    String value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'id',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<ClubEntity, ClubEntity, QAfterFilterCondition> idLessThan(
    String value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'id',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<ClubEntity, ClubEntity, QAfterFilterCondition> idBetween(
    String lower,
    String upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'id',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<ClubEntity, ClubEntity, QAfterFilterCondition> idStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'id',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<ClubEntity, ClubEntity, QAfterFilterCondition> idEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'id',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<ClubEntity, ClubEntity, QAfterFilterCondition> idContains(
      String value,
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'id',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<ClubEntity, ClubEntity, QAfterFilterCondition> idMatches(
      String pattern,
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'id',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<ClubEntity, ClubEntity, QAfterFilterCondition> idIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'id',
        value: '',
      ));
    });
  }

  QueryBuilder<ClubEntity, ClubEntity, QAfterFilterCondition> idIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'id',
        value: '',
      ));
    });
  }

  QueryBuilder<ClubEntity, ClubEntity, QAfterFilterCondition> idClubEqualTo(
      int value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'idClub',
        value: value,
      ));
    });
  }

  QueryBuilder<ClubEntity, ClubEntity, QAfterFilterCondition> idClubGreaterThan(
    int value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'idClub',
        value: value,
      ));
    });
  }

  QueryBuilder<ClubEntity, ClubEntity, QAfterFilterCondition> idClubLessThan(
    int value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'idClub',
        value: value,
      ));
    });
  }

  QueryBuilder<ClubEntity, ClubEntity, QAfterFilterCondition> idClubBetween(
    int lower,
    int upper, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'idClub',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
      ));
    });
  }

  QueryBuilder<ClubEntity, ClubEntity, QAfterFilterCondition> isarIdIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'isarId',
      ));
    });
  }

  QueryBuilder<ClubEntity, ClubEntity, QAfterFilterCondition>
      isarIdIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'isarId',
      ));
    });
  }

  QueryBuilder<ClubEntity, ClubEntity, QAfterFilterCondition> isarIdEqualTo(
      Id? value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'isarId',
        value: value,
      ));
    });
  }

  QueryBuilder<ClubEntity, ClubEntity, QAfterFilterCondition> isarIdGreaterThan(
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

  QueryBuilder<ClubEntity, ClubEntity, QAfterFilterCondition> isarIdLessThan(
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

  QueryBuilder<ClubEntity, ClubEntity, QAfterFilterCondition> isarIdBetween(
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

  QueryBuilder<ClubEntity, ClubEntity, QAfterFilterCondition> nombreEqualTo(
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

  QueryBuilder<ClubEntity, ClubEntity, QAfterFilterCondition> nombreGreaterThan(
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

  QueryBuilder<ClubEntity, ClubEntity, QAfterFilterCondition> nombreLessThan(
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

  QueryBuilder<ClubEntity, ClubEntity, QAfterFilterCondition> nombreBetween(
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

  QueryBuilder<ClubEntity, ClubEntity, QAfterFilterCondition> nombreStartsWith(
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

  QueryBuilder<ClubEntity, ClubEntity, QAfterFilterCondition> nombreEndsWith(
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

  QueryBuilder<ClubEntity, ClubEntity, QAfterFilterCondition> nombreContains(
      String value,
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'nombre',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<ClubEntity, ClubEntity, QAfterFilterCondition> nombreMatches(
      String pattern,
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'nombre',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<ClubEntity, ClubEntity, QAfterFilterCondition> nombreIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'nombre',
        value: '',
      ));
    });
  }

  QueryBuilder<ClubEntity, ClubEntity, QAfterFilterCondition>
      nombreIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'nombre',
        value: '',
      ));
    });
  }

  QueryBuilder<ClubEntity, ClubEntity, QAfterFilterCondition> plcIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'plc',
      ));
    });
  }

  QueryBuilder<ClubEntity, ClubEntity, QAfterFilterCondition> plcIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'plc',
      ));
    });
  }

  QueryBuilder<ClubEntity, ClubEntity, QAfterFilterCondition> plcEqualTo(
    double? value, {
    double epsilon = Query.epsilon,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'plc',
        value: value,
        epsilon: epsilon,
      ));
    });
  }

  QueryBuilder<ClubEntity, ClubEntity, QAfterFilterCondition> plcGreaterThan(
    double? value, {
    bool include = false,
    double epsilon = Query.epsilon,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'plc',
        value: value,
        epsilon: epsilon,
      ));
    });
  }

  QueryBuilder<ClubEntity, ClubEntity, QAfterFilterCondition> plcLessThan(
    double? value, {
    bool include = false,
    double epsilon = Query.epsilon,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'plc',
        value: value,
        epsilon: epsilon,
      ));
    });
  }

  QueryBuilder<ClubEntity, ClubEntity, QAfterFilterCondition> plcBetween(
    double? lower,
    double? upper, {
    bool includeLower = true,
    bool includeUpper = true,
    double epsilon = Query.epsilon,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'plc',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        epsilon: epsilon,
      ));
    });
  }

  QueryBuilder<ClubEntity, ClubEntity, QAfterFilterCondition>
      vecesBloqueoComunidadEqualTo(int value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'vecesBloqueoComunidad',
        value: value,
      ));
    });
  }

  QueryBuilder<ClubEntity, ClubEntity, QAfterFilterCondition>
      vecesBloqueoComunidadGreaterThan(
    int value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'vecesBloqueoComunidad',
        value: value,
      ));
    });
  }

  QueryBuilder<ClubEntity, ClubEntity, QAfterFilterCondition>
      vecesBloqueoComunidadLessThan(
    int value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'vecesBloqueoComunidad',
        value: value,
      ));
    });
  }

  QueryBuilder<ClubEntity, ClubEntity, QAfterFilterCondition>
      vecesBloqueoComunidadBetween(
    int lower,
    int upper, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'vecesBloqueoComunidad',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
      ));
    });
  }
}

extension ClubEntityQueryObject
    on QueryBuilder<ClubEntity, ClubEntity, QFilterCondition> {}

extension ClubEntityQueryLinks
    on QueryBuilder<ClubEntity, ClubEntity, QFilterCondition> {
  QueryBuilder<ClubEntity, ClubEntity, QAfterFilterCondition> token(
      FilterQuery<TokenEntity> q) {
    return QueryBuilder.apply(this, (query) {
      return query.link(q, r'token');
    });
  }

  QueryBuilder<ClubEntity, ClubEntity, QAfterFilterCondition> tokenIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.linkLength(r'token', 0, true, 0, true);
    });
  }

  QueryBuilder<ClubEntity, ClubEntity, QAfterFilterCondition> rol(
      FilterQuery<RolEntity> q) {
    return QueryBuilder.apply(this, (query) {
      return query.link(q, r'rol');
    });
  }

  QueryBuilder<ClubEntity, ClubEntity, QAfterFilterCondition> rolIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.linkLength(r'rol', 0, true, 0, true);
    });
  }

  QueryBuilder<ClubEntity, ClubEntity, QAfterFilterCondition> provincia(
      FilterQuery<ProvinciaEntity> q) {
    return QueryBuilder.apply(this, (query) {
      return query.link(q, r'provincia');
    });
  }

  QueryBuilder<ClubEntity, ClubEntity, QAfterFilterCondition>
      provinciaIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.linkLength(r'provincia', 0, true, 0, true);
    });
  }

  QueryBuilder<ClubEntity, ClubEntity, QAfterFilterCondition> municipio(
      FilterQuery<MunicipioEntity> q) {
    return QueryBuilder.apply(this, (query) {
      return query.link(q, r'municipio');
    });
  }

  QueryBuilder<ClubEntity, ClubEntity, QAfterFilterCondition>
      municipioIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.linkLength(r'municipio', 0, true, 0, true);
    });
  }

  QueryBuilder<ClubEntity, ClubEntity, QAfterFilterCondition> tipoClub(
      FilterQuery<RolEntity> q) {
    return QueryBuilder.apply(this, (query) {
      return query.link(q, r'tipoClub');
    });
  }

  QueryBuilder<ClubEntity, ClubEntity, QAfterFilterCondition> tipoClubIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.linkLength(r'tipoClub', 0, true, 0, true);
    });
  }
}

extension ClubEntityQuerySortBy
    on QueryBuilder<ClubEntity, ClubEntity, QSortBy> {
  QueryBuilder<ClubEntity, ClubEntity, QAfterSortBy> sortByFotoPerfil() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'fotoPerfil', Sort.asc);
    });
  }

  QueryBuilder<ClubEntity, ClubEntity, QAfterSortBy> sortByFotoPerfilDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'fotoPerfil', Sort.desc);
    });
  }

  QueryBuilder<ClubEntity, ClubEntity, QAfterSortBy> sortById() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'id', Sort.asc);
    });
  }

  QueryBuilder<ClubEntity, ClubEntity, QAfterSortBy> sortByIdDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'id', Sort.desc);
    });
  }

  QueryBuilder<ClubEntity, ClubEntity, QAfterSortBy> sortByIdClub() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'idClub', Sort.asc);
    });
  }

  QueryBuilder<ClubEntity, ClubEntity, QAfterSortBy> sortByIdClubDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'idClub', Sort.desc);
    });
  }

  QueryBuilder<ClubEntity, ClubEntity, QAfterSortBy> sortByNombre() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'nombre', Sort.asc);
    });
  }

  QueryBuilder<ClubEntity, ClubEntity, QAfterSortBy> sortByNombreDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'nombre', Sort.desc);
    });
  }

  QueryBuilder<ClubEntity, ClubEntity, QAfterSortBy> sortByPlc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'plc', Sort.asc);
    });
  }

  QueryBuilder<ClubEntity, ClubEntity, QAfterSortBy> sortByPlcDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'plc', Sort.desc);
    });
  }

  QueryBuilder<ClubEntity, ClubEntity, QAfterSortBy>
      sortByVecesBloqueoComunidad() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'vecesBloqueoComunidad', Sort.asc);
    });
  }

  QueryBuilder<ClubEntity, ClubEntity, QAfterSortBy>
      sortByVecesBloqueoComunidadDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'vecesBloqueoComunidad', Sort.desc);
    });
  }
}

extension ClubEntityQuerySortThenBy
    on QueryBuilder<ClubEntity, ClubEntity, QSortThenBy> {
  QueryBuilder<ClubEntity, ClubEntity, QAfterSortBy> thenByFotoPerfil() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'fotoPerfil', Sort.asc);
    });
  }

  QueryBuilder<ClubEntity, ClubEntity, QAfterSortBy> thenByFotoPerfilDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'fotoPerfil', Sort.desc);
    });
  }

  QueryBuilder<ClubEntity, ClubEntity, QAfterSortBy> thenById() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'id', Sort.asc);
    });
  }

  QueryBuilder<ClubEntity, ClubEntity, QAfterSortBy> thenByIdDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'id', Sort.desc);
    });
  }

  QueryBuilder<ClubEntity, ClubEntity, QAfterSortBy> thenByIdClub() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'idClub', Sort.asc);
    });
  }

  QueryBuilder<ClubEntity, ClubEntity, QAfterSortBy> thenByIdClubDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'idClub', Sort.desc);
    });
  }

  QueryBuilder<ClubEntity, ClubEntity, QAfterSortBy> thenByIsarId() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'isarId', Sort.asc);
    });
  }

  QueryBuilder<ClubEntity, ClubEntity, QAfterSortBy> thenByIsarIdDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'isarId', Sort.desc);
    });
  }

  QueryBuilder<ClubEntity, ClubEntity, QAfterSortBy> thenByNombre() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'nombre', Sort.asc);
    });
  }

  QueryBuilder<ClubEntity, ClubEntity, QAfterSortBy> thenByNombreDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'nombre', Sort.desc);
    });
  }

  QueryBuilder<ClubEntity, ClubEntity, QAfterSortBy> thenByPlc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'plc', Sort.asc);
    });
  }

  QueryBuilder<ClubEntity, ClubEntity, QAfterSortBy> thenByPlcDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'plc', Sort.desc);
    });
  }

  QueryBuilder<ClubEntity, ClubEntity, QAfterSortBy>
      thenByVecesBloqueoComunidad() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'vecesBloqueoComunidad', Sort.asc);
    });
  }

  QueryBuilder<ClubEntity, ClubEntity, QAfterSortBy>
      thenByVecesBloqueoComunidadDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'vecesBloqueoComunidad', Sort.desc);
    });
  }
}

extension ClubEntityQueryWhereDistinct
    on QueryBuilder<ClubEntity, ClubEntity, QDistinct> {
  QueryBuilder<ClubEntity, ClubEntity, QDistinct> distinctByFotoPerfil(
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'fotoPerfil', caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<ClubEntity, ClubEntity, QDistinct> distinctById(
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'id', caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<ClubEntity, ClubEntity, QDistinct> distinctByIdClub() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'idClub');
    });
  }

  QueryBuilder<ClubEntity, ClubEntity, QDistinct> distinctByNombre(
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'nombre', caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<ClubEntity, ClubEntity, QDistinct> distinctByPlc() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'plc');
    });
  }

  QueryBuilder<ClubEntity, ClubEntity, QDistinct>
      distinctByVecesBloqueoComunidad() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'vecesBloqueoComunidad');
    });
  }
}

extension ClubEntityQueryProperty
    on QueryBuilder<ClubEntity, ClubEntity, QQueryProperty> {
  QueryBuilder<ClubEntity, int, QQueryOperations> isarIdProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'isarId');
    });
  }

  QueryBuilder<ClubEntity, String, QQueryOperations> fotoPerfilProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'fotoPerfil');
    });
  }

  QueryBuilder<ClubEntity, String, QQueryOperations> idProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'id');
    });
  }

  QueryBuilder<ClubEntity, int, QQueryOperations> idClubProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'idClub');
    });
  }

  QueryBuilder<ClubEntity, String, QQueryOperations> nombreProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'nombre');
    });
  }

  QueryBuilder<ClubEntity, double?, QQueryOperations> plcProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'plc');
    });
  }

  QueryBuilder<ClubEntity, int, QQueryOperations>
      vecesBloqueoComunidadProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'vecesBloqueoComunidad');
    });
  }
}
