// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'user.dart';

// **************************************************************************
// IsarCollectionGenerator
// **************************************************************************

// coverage:ignore-file
// ignore_for_file: duplicate_ignore, non_constant_identifier_names, constant_identifier_names, invalid_use_of_protected_member, unnecessary_cast, prefer_const_constructors, lines_longer_than_80_chars, require_trailing_commas, inference_failure_on_function_invocation, unnecessary_parenthesis, unnecessary_raw_strings, unnecessary_null_checks, join_return_with_assignment, prefer_final_locals, avoid_js_rounded_ints, avoid_positional_boolean_parameters, always_specify_types

extension GetUserEntityCollection on Isar {
  IsarCollection<UserEntity> get userEntitys => this.collection();
}

const UserEntitySchema = CollectionSchema(
  name: r'UserEntity',
  id: 965090076791382600,
  properties: {
    r'apellidos': PropertySchema(
      id: 0,
      name: r'apellidos',
      type: IsarType.string,
    ),
    r'email': PropertySchema(
      id: 1,
      name: r'email',
      type: IsarType.string,
    ),
    r'esAmigo': PropertySchema(
      id: 2,
      name: r'esAmigo',
      type: IsarType.bool,
    ),
    r'fechaNacimiento': PropertySchema(
      id: 3,
      name: r'fechaNacimiento',
      type: IsarType.dateTime,
    ),
    r'fotoPerfil': PropertySchema(
      id: 4,
      name: r'fotoPerfil',
      type: IsarType.string,
    ),
    r'id': PropertySchema(
      id: 5,
      name: r'id',
      type: IsarType.string,
    ),
    r'mediaValoraciones': PropertySchema(
      id: 6,
      name: r'mediaValoraciones',
      type: IsarType.double,
    ),
    r'nombre': PropertySchema(
      id: 7,
      name: r'nombre',
      type: IsarType.string,
    ),
    r'numAmigos': PropertySchema(
      id: 8,
      name: r'numAmigos',
      type: IsarType.long,
    ),
    r'partidosGanados': PropertySchema(
      id: 9,
      name: r'partidosGanados',
      type: IsarType.long,
    ),
    r'partidosJugados': PropertySchema(
      id: 10,
      name: r'partidosJugados',
      type: IsarType.long,
    ),
    r'partidosPerdidos': PropertySchema(
      id: 11,
      name: r'partidosPerdidos',
      type: IsarType.long,
    ),
    r'phoneNumber': PropertySchema(
      id: 12,
      name: r'phoneNumber',
      type: IsarType.string,
    ),
    r'plc': PropertySchema(
      id: 13,
      name: r'plc',
      type: IsarType.double,
    ),
    r'solicitudEstado': PropertySchema(
      id: 14,
      name: r'solicitudEstado',
      type: IsarType.string,
    ),
    r'userName': PropertySchema(
      id: 15,
      name: r'userName',
      type: IsarType.string,
    ),
    r'vecesBloqueoComunidad': PropertySchema(
      id: 16,
      name: r'vecesBloqueoComunidad',
      type: IsarType.long,
    )
  },
  estimateSize: _userEntityEstimateSize,
  serialize: _userEntitySerialize,
  deserialize: _userEntityDeserialize,
  deserializeProp: _userEntityDeserializeProp,
  idName: r'isarId',
  indexes: {},
  links: {
    r'token': LinkSchema(
      id: -6955641902366277646,
      name: r'token',
      target: r'TokenEntity',
      single: true,
    ),
    r'rol': LinkSchema(
      id: -6451778522625901689,
      name: r'rol',
      target: r'RolEntity',
      single: true,
    ),
    r'provincia': LinkSchema(
      id: 1889494020674225289,
      name: r'provincia',
      target: r'ProvinciaEntity',
      single: true,
    ),
    r'municipio': LinkSchema(
      id: 6191982502624083245,
      name: r'municipio',
      target: r'MunicipioEntity',
      single: true,
    ),
    r'provinciaTmp': LinkSchema(
      id: 7427666443684033407,
      name: r'provinciaTmp',
      target: r'ProvinciaEntity',
      single: true,
    ),
    r'clubMasJugado': LinkSchema(
      id: 8348305026452309768,
      name: r'clubMasJugado',
      target: r'ClubMasJugadoEntity',
      single: true,
    )
  },
  embeddedSchemas: {},
  getId: _userEntityGetId,
  getLinks: _userEntityGetLinks,
  attach: _userEntityAttach,
  version: '3.1.0+1',
);

int _userEntityEstimateSize(
  UserEntity object,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  var bytesCount = offsets.last;
  {
    final value = object.apellidos;
    if (value != null) {
      bytesCount += 3 + value.length * 3;
    }
  }
  bytesCount += 3 + object.email.length * 3;
  {
    final value = object.fotoPerfil;
    if (value != null) {
      bytesCount += 3 + value.length * 3;
    }
  }
  bytesCount += 3 + object.id.length * 3;
  {
    final value = object.nombre;
    if (value != null) {
      bytesCount += 3 + value.length * 3;
    }
  }
  {
    final value = object.phoneNumber;
    if (value != null) {
      bytesCount += 3 + value.length * 3;
    }
  }
  {
    final value = object.solicitudEstado;
    if (value != null) {
      bytesCount += 3 + value.length * 3;
    }
  }
  bytesCount += 3 + object.userName.length * 3;
  return bytesCount;
}

void _userEntitySerialize(
  UserEntity object,
  IsarWriter writer,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  writer.writeString(offsets[0], object.apellidos);
  writer.writeString(offsets[1], object.email);
  writer.writeBool(offsets[2], object.esAmigo);
  writer.writeDateTime(offsets[3], object.fechaNacimiento);
  writer.writeString(offsets[4], object.fotoPerfil);
  writer.writeString(offsets[5], object.id);
  writer.writeDouble(offsets[6], object.mediaValoraciones);
  writer.writeString(offsets[7], object.nombre);
  writer.writeLong(offsets[8], object.numAmigos);
  writer.writeLong(offsets[9], object.partidosGanados);
  writer.writeLong(offsets[10], object.partidosJugados);
  writer.writeLong(offsets[11], object.partidosPerdidos);
  writer.writeString(offsets[12], object.phoneNumber);
  writer.writeDouble(offsets[13], object.plc);
  writer.writeString(offsets[14], object.solicitudEstado);
  writer.writeString(offsets[15], object.userName);
  writer.writeLong(offsets[16], object.vecesBloqueoComunidad);
}

UserEntity _userEntityDeserialize(
  Id id,
  IsarReader reader,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  final object = UserEntity(
    apellidos: reader.readStringOrNull(offsets[0]),
    email: reader.readString(offsets[1]),
    esAmigo: reader.readBoolOrNull(offsets[2]),
    fechaNacimiento: reader.readDateTimeOrNull(offsets[3]),
    fotoPerfil: reader.readStringOrNull(offsets[4]),
    id: reader.readString(offsets[5]),
    mediaValoraciones: reader.readDoubleOrNull(offsets[6]),
    nombre: reader.readStringOrNull(offsets[7]),
    numAmigos: reader.readLongOrNull(offsets[8]),
    partidosGanados: reader.readLongOrNull(offsets[9]),
    partidosJugados: reader.readLongOrNull(offsets[10]),
    partidosPerdidos: reader.readLongOrNull(offsets[11]),
    phoneNumber: reader.readStringOrNull(offsets[12]),
    plc: reader.readDoubleOrNull(offsets[13]),
    solicitudEstado: reader.readStringOrNull(offsets[14]),
    userName: reader.readString(offsets[15]),
    vecesBloqueoComunidad: reader.readLongOrNull(offsets[16]),
  );
  object.isarId = id;
  return object;
}

P _userEntityDeserializeProp<P>(
  IsarReader reader,
  int propertyId,
  int offset,
  Map<Type, List<int>> allOffsets,
) {
  switch (propertyId) {
    case 0:
      return (reader.readStringOrNull(offset)) as P;
    case 1:
      return (reader.readString(offset)) as P;
    case 2:
      return (reader.readBoolOrNull(offset)) as P;
    case 3:
      return (reader.readDateTimeOrNull(offset)) as P;
    case 4:
      return (reader.readStringOrNull(offset)) as P;
    case 5:
      return (reader.readString(offset)) as P;
    case 6:
      return (reader.readDoubleOrNull(offset)) as P;
    case 7:
      return (reader.readStringOrNull(offset)) as P;
    case 8:
      return (reader.readLongOrNull(offset)) as P;
    case 9:
      return (reader.readLongOrNull(offset)) as P;
    case 10:
      return (reader.readLongOrNull(offset)) as P;
    case 11:
      return (reader.readLongOrNull(offset)) as P;
    case 12:
      return (reader.readStringOrNull(offset)) as P;
    case 13:
      return (reader.readDoubleOrNull(offset)) as P;
    case 14:
      return (reader.readStringOrNull(offset)) as P;
    case 15:
      return (reader.readString(offset)) as P;
    case 16:
      return (reader.readLongOrNull(offset)) as P;
    default:
      throw IsarError('Unknown property with id $propertyId');
  }
}

Id _userEntityGetId(UserEntity object) {
  return object.isarId ?? Isar.autoIncrement;
}

List<IsarLinkBase<dynamic>> _userEntityGetLinks(UserEntity object) {
  return [
    object.token,
    object.rol,
    object.provincia,
    object.municipio,
    object.provinciaTmp,
    object.clubMasJugado
  ];
}

void _userEntityAttach(IsarCollection<dynamic> col, Id id, UserEntity object) {
  object.isarId = id;
  object.token.attach(col, col.isar.collection<TokenEntity>(), r'token', id);
  object.rol.attach(col, col.isar.collection<RolEntity>(), r'rol', id);
  object.provincia
      .attach(col, col.isar.collection<ProvinciaEntity>(), r'provincia', id);
  object.municipio
      .attach(col, col.isar.collection<MunicipioEntity>(), r'municipio', id);
  object.provinciaTmp
      .attach(col, col.isar.collection<ProvinciaEntity>(), r'provinciaTmp', id);
  object.clubMasJugado.attach(
      col, col.isar.collection<ClubMasJugadoEntity>(), r'clubMasJugado', id);
}

extension UserEntityQueryWhereSort
    on QueryBuilder<UserEntity, UserEntity, QWhere> {
  QueryBuilder<UserEntity, UserEntity, QAfterWhere> anyIsarId() {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(const IdWhereClause.any());
    });
  }
}

extension UserEntityQueryWhere
    on QueryBuilder<UserEntity, UserEntity, QWhereClause> {
  QueryBuilder<UserEntity, UserEntity, QAfterWhereClause> isarIdEqualTo(
      Id isarId) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(IdWhereClause.between(
        lower: isarId,
        upper: isarId,
      ));
    });
  }

  QueryBuilder<UserEntity, UserEntity, QAfterWhereClause> isarIdNotEqualTo(
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

  QueryBuilder<UserEntity, UserEntity, QAfterWhereClause> isarIdGreaterThan(
      Id isarId,
      {bool include = false}) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(
        IdWhereClause.greaterThan(lower: isarId, includeLower: include),
      );
    });
  }

  QueryBuilder<UserEntity, UserEntity, QAfterWhereClause> isarIdLessThan(
      Id isarId,
      {bool include = false}) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(
        IdWhereClause.lessThan(upper: isarId, includeUpper: include),
      );
    });
  }

  QueryBuilder<UserEntity, UserEntity, QAfterWhereClause> isarIdBetween(
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

extension UserEntityQueryFilter
    on QueryBuilder<UserEntity, UserEntity, QFilterCondition> {
  QueryBuilder<UserEntity, UserEntity, QAfterFilterCondition>
      apellidosIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'apellidos',
      ));
    });
  }

  QueryBuilder<UserEntity, UserEntity, QAfterFilterCondition>
      apellidosIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'apellidos',
      ));
    });
  }

  QueryBuilder<UserEntity, UserEntity, QAfterFilterCondition> apellidosEqualTo(
    String? value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'apellidos',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<UserEntity, UserEntity, QAfterFilterCondition>
      apellidosGreaterThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'apellidos',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<UserEntity, UserEntity, QAfterFilterCondition> apellidosLessThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'apellidos',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<UserEntity, UserEntity, QAfterFilterCondition> apellidosBetween(
    String? lower,
    String? upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'apellidos',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<UserEntity, UserEntity, QAfterFilterCondition>
      apellidosStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'apellidos',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<UserEntity, UserEntity, QAfterFilterCondition> apellidosEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'apellidos',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<UserEntity, UserEntity, QAfterFilterCondition> apellidosContains(
      String value,
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'apellidos',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<UserEntity, UserEntity, QAfterFilterCondition> apellidosMatches(
      String pattern,
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'apellidos',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<UserEntity, UserEntity, QAfterFilterCondition>
      apellidosIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'apellidos',
        value: '',
      ));
    });
  }

  QueryBuilder<UserEntity, UserEntity, QAfterFilterCondition>
      apellidosIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'apellidos',
        value: '',
      ));
    });
  }

  QueryBuilder<UserEntity, UserEntity, QAfterFilterCondition> emailEqualTo(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'email',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<UserEntity, UserEntity, QAfterFilterCondition> emailGreaterThan(
    String value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'email',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<UserEntity, UserEntity, QAfterFilterCondition> emailLessThan(
    String value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'email',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<UserEntity, UserEntity, QAfterFilterCondition> emailBetween(
    String lower,
    String upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'email',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<UserEntity, UserEntity, QAfterFilterCondition> emailStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'email',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<UserEntity, UserEntity, QAfterFilterCondition> emailEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'email',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<UserEntity, UserEntity, QAfterFilterCondition> emailContains(
      String value,
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'email',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<UserEntity, UserEntity, QAfterFilterCondition> emailMatches(
      String pattern,
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'email',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<UserEntity, UserEntity, QAfterFilterCondition> emailIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'email',
        value: '',
      ));
    });
  }

  QueryBuilder<UserEntity, UserEntity, QAfterFilterCondition>
      emailIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'email',
        value: '',
      ));
    });
  }

  QueryBuilder<UserEntity, UserEntity, QAfterFilterCondition> esAmigoIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'esAmigo',
      ));
    });
  }

  QueryBuilder<UserEntity, UserEntity, QAfterFilterCondition>
      esAmigoIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'esAmigo',
      ));
    });
  }

  QueryBuilder<UserEntity, UserEntity, QAfterFilterCondition> esAmigoEqualTo(
      bool? value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'esAmigo',
        value: value,
      ));
    });
  }

  QueryBuilder<UserEntity, UserEntity, QAfterFilterCondition>
      fechaNacimientoIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'fechaNacimiento',
      ));
    });
  }

  QueryBuilder<UserEntity, UserEntity, QAfterFilterCondition>
      fechaNacimientoIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'fechaNacimiento',
      ));
    });
  }

  QueryBuilder<UserEntity, UserEntity, QAfterFilterCondition>
      fechaNacimientoEqualTo(DateTime? value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'fechaNacimiento',
        value: value,
      ));
    });
  }

  QueryBuilder<UserEntity, UserEntity, QAfterFilterCondition>
      fechaNacimientoGreaterThan(
    DateTime? value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'fechaNacimiento',
        value: value,
      ));
    });
  }

  QueryBuilder<UserEntity, UserEntity, QAfterFilterCondition>
      fechaNacimientoLessThan(
    DateTime? value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'fechaNacimiento',
        value: value,
      ));
    });
  }

  QueryBuilder<UserEntity, UserEntity, QAfterFilterCondition>
      fechaNacimientoBetween(
    DateTime? lower,
    DateTime? upper, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'fechaNacimiento',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
      ));
    });
  }

  QueryBuilder<UserEntity, UserEntity, QAfterFilterCondition>
      fotoPerfilIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'fotoPerfil',
      ));
    });
  }

  QueryBuilder<UserEntity, UserEntity, QAfterFilterCondition>
      fotoPerfilIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'fotoPerfil',
      ));
    });
  }

  QueryBuilder<UserEntity, UserEntity, QAfterFilterCondition> fotoPerfilEqualTo(
    String? value, {
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

  QueryBuilder<UserEntity, UserEntity, QAfterFilterCondition>
      fotoPerfilGreaterThan(
    String? value, {
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

  QueryBuilder<UserEntity, UserEntity, QAfterFilterCondition>
      fotoPerfilLessThan(
    String? value, {
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

  QueryBuilder<UserEntity, UserEntity, QAfterFilterCondition> fotoPerfilBetween(
    String? lower,
    String? upper, {
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

  QueryBuilder<UserEntity, UserEntity, QAfterFilterCondition>
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

  QueryBuilder<UserEntity, UserEntity, QAfterFilterCondition>
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

  QueryBuilder<UserEntity, UserEntity, QAfterFilterCondition>
      fotoPerfilContains(String value, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'fotoPerfil',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<UserEntity, UserEntity, QAfterFilterCondition> fotoPerfilMatches(
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

  QueryBuilder<UserEntity, UserEntity, QAfterFilterCondition>
      fotoPerfilIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'fotoPerfil',
        value: '',
      ));
    });
  }

  QueryBuilder<UserEntity, UserEntity, QAfterFilterCondition>
      fotoPerfilIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'fotoPerfil',
        value: '',
      ));
    });
  }

  QueryBuilder<UserEntity, UserEntity, QAfterFilterCondition> idEqualTo(
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

  QueryBuilder<UserEntity, UserEntity, QAfterFilterCondition> idGreaterThan(
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

  QueryBuilder<UserEntity, UserEntity, QAfterFilterCondition> idLessThan(
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

  QueryBuilder<UserEntity, UserEntity, QAfterFilterCondition> idBetween(
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

  QueryBuilder<UserEntity, UserEntity, QAfterFilterCondition> idStartsWith(
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

  QueryBuilder<UserEntity, UserEntity, QAfterFilterCondition> idEndsWith(
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

  QueryBuilder<UserEntity, UserEntity, QAfterFilterCondition> idContains(
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

  QueryBuilder<UserEntity, UserEntity, QAfterFilterCondition> idMatches(
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

  QueryBuilder<UserEntity, UserEntity, QAfterFilterCondition> idIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'id',
        value: '',
      ));
    });
  }

  QueryBuilder<UserEntity, UserEntity, QAfterFilterCondition> idIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'id',
        value: '',
      ));
    });
  }

  QueryBuilder<UserEntity, UserEntity, QAfterFilterCondition> isarIdIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'isarId',
      ));
    });
  }

  QueryBuilder<UserEntity, UserEntity, QAfterFilterCondition>
      isarIdIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'isarId',
      ));
    });
  }

  QueryBuilder<UserEntity, UserEntity, QAfterFilterCondition> isarIdEqualTo(
      Id? value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'isarId',
        value: value,
      ));
    });
  }

  QueryBuilder<UserEntity, UserEntity, QAfterFilterCondition> isarIdGreaterThan(
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

  QueryBuilder<UserEntity, UserEntity, QAfterFilterCondition> isarIdLessThan(
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

  QueryBuilder<UserEntity, UserEntity, QAfterFilterCondition> isarIdBetween(
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

  QueryBuilder<UserEntity, UserEntity, QAfterFilterCondition>
      mediaValoracionesIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'mediaValoraciones',
      ));
    });
  }

  QueryBuilder<UserEntity, UserEntity, QAfterFilterCondition>
      mediaValoracionesIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'mediaValoraciones',
      ));
    });
  }

  QueryBuilder<UserEntity, UserEntity, QAfterFilterCondition>
      mediaValoracionesEqualTo(
    double? value, {
    double epsilon = Query.epsilon,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'mediaValoraciones',
        value: value,
        epsilon: epsilon,
      ));
    });
  }

  QueryBuilder<UserEntity, UserEntity, QAfterFilterCondition>
      mediaValoracionesGreaterThan(
    double? value, {
    bool include = false,
    double epsilon = Query.epsilon,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'mediaValoraciones',
        value: value,
        epsilon: epsilon,
      ));
    });
  }

  QueryBuilder<UserEntity, UserEntity, QAfterFilterCondition>
      mediaValoracionesLessThan(
    double? value, {
    bool include = false,
    double epsilon = Query.epsilon,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'mediaValoraciones',
        value: value,
        epsilon: epsilon,
      ));
    });
  }

  QueryBuilder<UserEntity, UserEntity, QAfterFilterCondition>
      mediaValoracionesBetween(
    double? lower,
    double? upper, {
    bool includeLower = true,
    bool includeUpper = true,
    double epsilon = Query.epsilon,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'mediaValoraciones',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        epsilon: epsilon,
      ));
    });
  }

  QueryBuilder<UserEntity, UserEntity, QAfterFilterCondition> nombreIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'nombre',
      ));
    });
  }

  QueryBuilder<UserEntity, UserEntity, QAfterFilterCondition>
      nombreIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'nombre',
      ));
    });
  }

  QueryBuilder<UserEntity, UserEntity, QAfterFilterCondition> nombreEqualTo(
    String? value, {
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

  QueryBuilder<UserEntity, UserEntity, QAfterFilterCondition> nombreGreaterThan(
    String? value, {
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

  QueryBuilder<UserEntity, UserEntity, QAfterFilterCondition> nombreLessThan(
    String? value, {
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

  QueryBuilder<UserEntity, UserEntity, QAfterFilterCondition> nombreBetween(
    String? lower,
    String? upper, {
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

  QueryBuilder<UserEntity, UserEntity, QAfterFilterCondition> nombreStartsWith(
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

  QueryBuilder<UserEntity, UserEntity, QAfterFilterCondition> nombreEndsWith(
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

  QueryBuilder<UserEntity, UserEntity, QAfterFilterCondition> nombreContains(
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

  QueryBuilder<UserEntity, UserEntity, QAfterFilterCondition> nombreMatches(
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

  QueryBuilder<UserEntity, UserEntity, QAfterFilterCondition> nombreIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'nombre',
        value: '',
      ));
    });
  }

  QueryBuilder<UserEntity, UserEntity, QAfterFilterCondition>
      nombreIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'nombre',
        value: '',
      ));
    });
  }

  QueryBuilder<UserEntity, UserEntity, QAfterFilterCondition>
      numAmigosIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'numAmigos',
      ));
    });
  }

  QueryBuilder<UserEntity, UserEntity, QAfterFilterCondition>
      numAmigosIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'numAmigos',
      ));
    });
  }

  QueryBuilder<UserEntity, UserEntity, QAfterFilterCondition> numAmigosEqualTo(
      int? value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'numAmigos',
        value: value,
      ));
    });
  }

  QueryBuilder<UserEntity, UserEntity, QAfterFilterCondition>
      numAmigosGreaterThan(
    int? value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'numAmigos',
        value: value,
      ));
    });
  }

  QueryBuilder<UserEntity, UserEntity, QAfterFilterCondition> numAmigosLessThan(
    int? value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'numAmigos',
        value: value,
      ));
    });
  }

  QueryBuilder<UserEntity, UserEntity, QAfterFilterCondition> numAmigosBetween(
    int? lower,
    int? upper, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'numAmigos',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
      ));
    });
  }

  QueryBuilder<UserEntity, UserEntity, QAfterFilterCondition>
      partidosGanadosIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'partidosGanados',
      ));
    });
  }

  QueryBuilder<UserEntity, UserEntity, QAfterFilterCondition>
      partidosGanadosIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'partidosGanados',
      ));
    });
  }

  QueryBuilder<UserEntity, UserEntity, QAfterFilterCondition>
      partidosGanadosEqualTo(int? value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'partidosGanados',
        value: value,
      ));
    });
  }

  QueryBuilder<UserEntity, UserEntity, QAfterFilterCondition>
      partidosGanadosGreaterThan(
    int? value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'partidosGanados',
        value: value,
      ));
    });
  }

  QueryBuilder<UserEntity, UserEntity, QAfterFilterCondition>
      partidosGanadosLessThan(
    int? value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'partidosGanados',
        value: value,
      ));
    });
  }

  QueryBuilder<UserEntity, UserEntity, QAfterFilterCondition>
      partidosGanadosBetween(
    int? lower,
    int? upper, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'partidosGanados',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
      ));
    });
  }

  QueryBuilder<UserEntity, UserEntity, QAfterFilterCondition>
      partidosJugadosIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'partidosJugados',
      ));
    });
  }

  QueryBuilder<UserEntity, UserEntity, QAfterFilterCondition>
      partidosJugadosIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'partidosJugados',
      ));
    });
  }

  QueryBuilder<UserEntity, UserEntity, QAfterFilterCondition>
      partidosJugadosEqualTo(int? value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'partidosJugados',
        value: value,
      ));
    });
  }

  QueryBuilder<UserEntity, UserEntity, QAfterFilterCondition>
      partidosJugadosGreaterThan(
    int? value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'partidosJugados',
        value: value,
      ));
    });
  }

  QueryBuilder<UserEntity, UserEntity, QAfterFilterCondition>
      partidosJugadosLessThan(
    int? value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'partidosJugados',
        value: value,
      ));
    });
  }

  QueryBuilder<UserEntity, UserEntity, QAfterFilterCondition>
      partidosJugadosBetween(
    int? lower,
    int? upper, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'partidosJugados',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
      ));
    });
  }

  QueryBuilder<UserEntity, UserEntity, QAfterFilterCondition>
      partidosPerdidosIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'partidosPerdidos',
      ));
    });
  }

  QueryBuilder<UserEntity, UserEntity, QAfterFilterCondition>
      partidosPerdidosIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'partidosPerdidos',
      ));
    });
  }

  QueryBuilder<UserEntity, UserEntity, QAfterFilterCondition>
      partidosPerdidosEqualTo(int? value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'partidosPerdidos',
        value: value,
      ));
    });
  }

  QueryBuilder<UserEntity, UserEntity, QAfterFilterCondition>
      partidosPerdidosGreaterThan(
    int? value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'partidosPerdidos',
        value: value,
      ));
    });
  }

  QueryBuilder<UserEntity, UserEntity, QAfterFilterCondition>
      partidosPerdidosLessThan(
    int? value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'partidosPerdidos',
        value: value,
      ));
    });
  }

  QueryBuilder<UserEntity, UserEntity, QAfterFilterCondition>
      partidosPerdidosBetween(
    int? lower,
    int? upper, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'partidosPerdidos',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
      ));
    });
  }

  QueryBuilder<UserEntity, UserEntity, QAfterFilterCondition>
      phoneNumberIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'phoneNumber',
      ));
    });
  }

  QueryBuilder<UserEntity, UserEntity, QAfterFilterCondition>
      phoneNumberIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'phoneNumber',
      ));
    });
  }

  QueryBuilder<UserEntity, UserEntity, QAfterFilterCondition>
      phoneNumberEqualTo(
    String? value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'phoneNumber',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<UserEntity, UserEntity, QAfterFilterCondition>
      phoneNumberGreaterThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'phoneNumber',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<UserEntity, UserEntity, QAfterFilterCondition>
      phoneNumberLessThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'phoneNumber',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<UserEntity, UserEntity, QAfterFilterCondition>
      phoneNumberBetween(
    String? lower,
    String? upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'phoneNumber',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<UserEntity, UserEntity, QAfterFilterCondition>
      phoneNumberStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'phoneNumber',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<UserEntity, UserEntity, QAfterFilterCondition>
      phoneNumberEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'phoneNumber',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<UserEntity, UserEntity, QAfterFilterCondition>
      phoneNumberContains(String value, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'phoneNumber',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<UserEntity, UserEntity, QAfterFilterCondition>
      phoneNumberMatches(String pattern, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'phoneNumber',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<UserEntity, UserEntity, QAfterFilterCondition>
      phoneNumberIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'phoneNumber',
        value: '',
      ));
    });
  }

  QueryBuilder<UserEntity, UserEntity, QAfterFilterCondition>
      phoneNumberIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'phoneNumber',
        value: '',
      ));
    });
  }

  QueryBuilder<UserEntity, UserEntity, QAfterFilterCondition> plcIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'plc',
      ));
    });
  }

  QueryBuilder<UserEntity, UserEntity, QAfterFilterCondition> plcIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'plc',
      ));
    });
  }

  QueryBuilder<UserEntity, UserEntity, QAfterFilterCondition> plcEqualTo(
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

  QueryBuilder<UserEntity, UserEntity, QAfterFilterCondition> plcGreaterThan(
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

  QueryBuilder<UserEntity, UserEntity, QAfterFilterCondition> plcLessThan(
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

  QueryBuilder<UserEntity, UserEntity, QAfterFilterCondition> plcBetween(
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

  QueryBuilder<UserEntity, UserEntity, QAfterFilterCondition>
      solicitudEstadoIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'solicitudEstado',
      ));
    });
  }

  QueryBuilder<UserEntity, UserEntity, QAfterFilterCondition>
      solicitudEstadoIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'solicitudEstado',
      ));
    });
  }

  QueryBuilder<UserEntity, UserEntity, QAfterFilterCondition>
      solicitudEstadoEqualTo(
    String? value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'solicitudEstado',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<UserEntity, UserEntity, QAfterFilterCondition>
      solicitudEstadoGreaterThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'solicitudEstado',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<UserEntity, UserEntity, QAfterFilterCondition>
      solicitudEstadoLessThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'solicitudEstado',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<UserEntity, UserEntity, QAfterFilterCondition>
      solicitudEstadoBetween(
    String? lower,
    String? upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'solicitudEstado',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<UserEntity, UserEntity, QAfterFilterCondition>
      solicitudEstadoStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'solicitudEstado',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<UserEntity, UserEntity, QAfterFilterCondition>
      solicitudEstadoEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'solicitudEstado',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<UserEntity, UserEntity, QAfterFilterCondition>
      solicitudEstadoContains(String value, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'solicitudEstado',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<UserEntity, UserEntity, QAfterFilterCondition>
      solicitudEstadoMatches(String pattern, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'solicitudEstado',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<UserEntity, UserEntity, QAfterFilterCondition>
      solicitudEstadoIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'solicitudEstado',
        value: '',
      ));
    });
  }

  QueryBuilder<UserEntity, UserEntity, QAfterFilterCondition>
      solicitudEstadoIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'solicitudEstado',
        value: '',
      ));
    });
  }

  QueryBuilder<UserEntity, UserEntity, QAfterFilterCondition> userNameEqualTo(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'userName',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<UserEntity, UserEntity, QAfterFilterCondition>
      userNameGreaterThan(
    String value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'userName',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<UserEntity, UserEntity, QAfterFilterCondition> userNameLessThan(
    String value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'userName',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<UserEntity, UserEntity, QAfterFilterCondition> userNameBetween(
    String lower,
    String upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'userName',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<UserEntity, UserEntity, QAfterFilterCondition>
      userNameStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'userName',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<UserEntity, UserEntity, QAfterFilterCondition> userNameEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'userName',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<UserEntity, UserEntity, QAfterFilterCondition> userNameContains(
      String value,
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'userName',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<UserEntity, UserEntity, QAfterFilterCondition> userNameMatches(
      String pattern,
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'userName',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<UserEntity, UserEntity, QAfterFilterCondition>
      userNameIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'userName',
        value: '',
      ));
    });
  }

  QueryBuilder<UserEntity, UserEntity, QAfterFilterCondition>
      userNameIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'userName',
        value: '',
      ));
    });
  }

  QueryBuilder<UserEntity, UserEntity, QAfterFilterCondition>
      vecesBloqueoComunidadIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'vecesBloqueoComunidad',
      ));
    });
  }

  QueryBuilder<UserEntity, UserEntity, QAfterFilterCondition>
      vecesBloqueoComunidadIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'vecesBloqueoComunidad',
      ));
    });
  }

  QueryBuilder<UserEntity, UserEntity, QAfterFilterCondition>
      vecesBloqueoComunidadEqualTo(int? value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'vecesBloqueoComunidad',
        value: value,
      ));
    });
  }

  QueryBuilder<UserEntity, UserEntity, QAfterFilterCondition>
      vecesBloqueoComunidadGreaterThan(
    int? value, {
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

  QueryBuilder<UserEntity, UserEntity, QAfterFilterCondition>
      vecesBloqueoComunidadLessThan(
    int? value, {
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

  QueryBuilder<UserEntity, UserEntity, QAfterFilterCondition>
      vecesBloqueoComunidadBetween(
    int? lower,
    int? upper, {
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

extension UserEntityQueryObject
    on QueryBuilder<UserEntity, UserEntity, QFilterCondition> {}

extension UserEntityQueryLinks
    on QueryBuilder<UserEntity, UserEntity, QFilterCondition> {
  QueryBuilder<UserEntity, UserEntity, QAfterFilterCondition> token(
      FilterQuery<TokenEntity> q) {
    return QueryBuilder.apply(this, (query) {
      return query.link(q, r'token');
    });
  }

  QueryBuilder<UserEntity, UserEntity, QAfterFilterCondition> tokenIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.linkLength(r'token', 0, true, 0, true);
    });
  }

  QueryBuilder<UserEntity, UserEntity, QAfterFilterCondition> rol(
      FilterQuery<RolEntity> q) {
    return QueryBuilder.apply(this, (query) {
      return query.link(q, r'rol');
    });
  }

  QueryBuilder<UserEntity, UserEntity, QAfterFilterCondition> rolIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.linkLength(r'rol', 0, true, 0, true);
    });
  }

  QueryBuilder<UserEntity, UserEntity, QAfterFilterCondition> provincia(
      FilterQuery<ProvinciaEntity> q) {
    return QueryBuilder.apply(this, (query) {
      return query.link(q, r'provincia');
    });
  }

  QueryBuilder<UserEntity, UserEntity, QAfterFilterCondition>
      provinciaIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.linkLength(r'provincia', 0, true, 0, true);
    });
  }

  QueryBuilder<UserEntity, UserEntity, QAfterFilterCondition> municipio(
      FilterQuery<MunicipioEntity> q) {
    return QueryBuilder.apply(this, (query) {
      return query.link(q, r'municipio');
    });
  }

  QueryBuilder<UserEntity, UserEntity, QAfterFilterCondition>
      municipioIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.linkLength(r'municipio', 0, true, 0, true);
    });
  }

  QueryBuilder<UserEntity, UserEntity, QAfterFilterCondition> provinciaTmp(
      FilterQuery<ProvinciaEntity> q) {
    return QueryBuilder.apply(this, (query) {
      return query.link(q, r'provinciaTmp');
    });
  }

  QueryBuilder<UserEntity, UserEntity, QAfterFilterCondition>
      provinciaTmpIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.linkLength(r'provinciaTmp', 0, true, 0, true);
    });
  }

  QueryBuilder<UserEntity, UserEntity, QAfterFilterCondition> clubMasJugado(
      FilterQuery<ClubMasJugadoEntity> q) {
    return QueryBuilder.apply(this, (query) {
      return query.link(q, r'clubMasJugado');
    });
  }

  QueryBuilder<UserEntity, UserEntity, QAfterFilterCondition>
      clubMasJugadoIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.linkLength(r'clubMasJugado', 0, true, 0, true);
    });
  }
}

extension UserEntityQuerySortBy
    on QueryBuilder<UserEntity, UserEntity, QSortBy> {
  QueryBuilder<UserEntity, UserEntity, QAfterSortBy> sortByApellidos() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'apellidos', Sort.asc);
    });
  }

  QueryBuilder<UserEntity, UserEntity, QAfterSortBy> sortByApellidosDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'apellidos', Sort.desc);
    });
  }

  QueryBuilder<UserEntity, UserEntity, QAfterSortBy> sortByEmail() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'email', Sort.asc);
    });
  }

  QueryBuilder<UserEntity, UserEntity, QAfterSortBy> sortByEmailDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'email', Sort.desc);
    });
  }

  QueryBuilder<UserEntity, UserEntity, QAfterSortBy> sortByEsAmigo() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'esAmigo', Sort.asc);
    });
  }

  QueryBuilder<UserEntity, UserEntity, QAfterSortBy> sortByEsAmigoDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'esAmigo', Sort.desc);
    });
  }

  QueryBuilder<UserEntity, UserEntity, QAfterSortBy> sortByFechaNacimiento() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'fechaNacimiento', Sort.asc);
    });
  }

  QueryBuilder<UserEntity, UserEntity, QAfterSortBy>
      sortByFechaNacimientoDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'fechaNacimiento', Sort.desc);
    });
  }

  QueryBuilder<UserEntity, UserEntity, QAfterSortBy> sortByFotoPerfil() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'fotoPerfil', Sort.asc);
    });
  }

  QueryBuilder<UserEntity, UserEntity, QAfterSortBy> sortByFotoPerfilDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'fotoPerfil', Sort.desc);
    });
  }

  QueryBuilder<UserEntity, UserEntity, QAfterSortBy> sortById() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'id', Sort.asc);
    });
  }

  QueryBuilder<UserEntity, UserEntity, QAfterSortBy> sortByIdDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'id', Sort.desc);
    });
  }

  QueryBuilder<UserEntity, UserEntity, QAfterSortBy> sortByMediaValoraciones() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'mediaValoraciones', Sort.asc);
    });
  }

  QueryBuilder<UserEntity, UserEntity, QAfterSortBy>
      sortByMediaValoracionesDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'mediaValoraciones', Sort.desc);
    });
  }

  QueryBuilder<UserEntity, UserEntity, QAfterSortBy> sortByNombre() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'nombre', Sort.asc);
    });
  }

  QueryBuilder<UserEntity, UserEntity, QAfterSortBy> sortByNombreDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'nombre', Sort.desc);
    });
  }

  QueryBuilder<UserEntity, UserEntity, QAfterSortBy> sortByNumAmigos() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'numAmigos', Sort.asc);
    });
  }

  QueryBuilder<UserEntity, UserEntity, QAfterSortBy> sortByNumAmigosDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'numAmigos', Sort.desc);
    });
  }

  QueryBuilder<UserEntity, UserEntity, QAfterSortBy> sortByPartidosGanados() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'partidosGanados', Sort.asc);
    });
  }

  QueryBuilder<UserEntity, UserEntity, QAfterSortBy>
      sortByPartidosGanadosDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'partidosGanados', Sort.desc);
    });
  }

  QueryBuilder<UserEntity, UserEntity, QAfterSortBy> sortByPartidosJugados() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'partidosJugados', Sort.asc);
    });
  }

  QueryBuilder<UserEntity, UserEntity, QAfterSortBy>
      sortByPartidosJugadosDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'partidosJugados', Sort.desc);
    });
  }

  QueryBuilder<UserEntity, UserEntity, QAfterSortBy> sortByPartidosPerdidos() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'partidosPerdidos', Sort.asc);
    });
  }

  QueryBuilder<UserEntity, UserEntity, QAfterSortBy>
      sortByPartidosPerdidosDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'partidosPerdidos', Sort.desc);
    });
  }

  QueryBuilder<UserEntity, UserEntity, QAfterSortBy> sortByPhoneNumber() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'phoneNumber', Sort.asc);
    });
  }

  QueryBuilder<UserEntity, UserEntity, QAfterSortBy> sortByPhoneNumberDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'phoneNumber', Sort.desc);
    });
  }

  QueryBuilder<UserEntity, UserEntity, QAfterSortBy> sortByPlc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'plc', Sort.asc);
    });
  }

  QueryBuilder<UserEntity, UserEntity, QAfterSortBy> sortByPlcDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'plc', Sort.desc);
    });
  }

  QueryBuilder<UserEntity, UserEntity, QAfterSortBy> sortBySolicitudEstado() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'solicitudEstado', Sort.asc);
    });
  }

  QueryBuilder<UserEntity, UserEntity, QAfterSortBy>
      sortBySolicitudEstadoDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'solicitudEstado', Sort.desc);
    });
  }

  QueryBuilder<UserEntity, UserEntity, QAfterSortBy> sortByUserName() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'userName', Sort.asc);
    });
  }

  QueryBuilder<UserEntity, UserEntity, QAfterSortBy> sortByUserNameDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'userName', Sort.desc);
    });
  }

  QueryBuilder<UserEntity, UserEntity, QAfterSortBy>
      sortByVecesBloqueoComunidad() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'vecesBloqueoComunidad', Sort.asc);
    });
  }

  QueryBuilder<UserEntity, UserEntity, QAfterSortBy>
      sortByVecesBloqueoComunidadDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'vecesBloqueoComunidad', Sort.desc);
    });
  }
}

extension UserEntityQuerySortThenBy
    on QueryBuilder<UserEntity, UserEntity, QSortThenBy> {
  QueryBuilder<UserEntity, UserEntity, QAfterSortBy> thenByApellidos() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'apellidos', Sort.asc);
    });
  }

  QueryBuilder<UserEntity, UserEntity, QAfterSortBy> thenByApellidosDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'apellidos', Sort.desc);
    });
  }

  QueryBuilder<UserEntity, UserEntity, QAfterSortBy> thenByEmail() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'email', Sort.asc);
    });
  }

  QueryBuilder<UserEntity, UserEntity, QAfterSortBy> thenByEmailDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'email', Sort.desc);
    });
  }

  QueryBuilder<UserEntity, UserEntity, QAfterSortBy> thenByEsAmigo() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'esAmigo', Sort.asc);
    });
  }

  QueryBuilder<UserEntity, UserEntity, QAfterSortBy> thenByEsAmigoDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'esAmigo', Sort.desc);
    });
  }

  QueryBuilder<UserEntity, UserEntity, QAfterSortBy> thenByFechaNacimiento() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'fechaNacimiento', Sort.asc);
    });
  }

  QueryBuilder<UserEntity, UserEntity, QAfterSortBy>
      thenByFechaNacimientoDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'fechaNacimiento', Sort.desc);
    });
  }

  QueryBuilder<UserEntity, UserEntity, QAfterSortBy> thenByFotoPerfil() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'fotoPerfil', Sort.asc);
    });
  }

  QueryBuilder<UserEntity, UserEntity, QAfterSortBy> thenByFotoPerfilDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'fotoPerfil', Sort.desc);
    });
  }

  QueryBuilder<UserEntity, UserEntity, QAfterSortBy> thenById() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'id', Sort.asc);
    });
  }

  QueryBuilder<UserEntity, UserEntity, QAfterSortBy> thenByIdDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'id', Sort.desc);
    });
  }

  QueryBuilder<UserEntity, UserEntity, QAfterSortBy> thenByIsarId() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'isarId', Sort.asc);
    });
  }

  QueryBuilder<UserEntity, UserEntity, QAfterSortBy> thenByIsarIdDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'isarId', Sort.desc);
    });
  }

  QueryBuilder<UserEntity, UserEntity, QAfterSortBy> thenByMediaValoraciones() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'mediaValoraciones', Sort.asc);
    });
  }

  QueryBuilder<UserEntity, UserEntity, QAfterSortBy>
      thenByMediaValoracionesDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'mediaValoraciones', Sort.desc);
    });
  }

  QueryBuilder<UserEntity, UserEntity, QAfterSortBy> thenByNombre() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'nombre', Sort.asc);
    });
  }

  QueryBuilder<UserEntity, UserEntity, QAfterSortBy> thenByNombreDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'nombre', Sort.desc);
    });
  }

  QueryBuilder<UserEntity, UserEntity, QAfterSortBy> thenByNumAmigos() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'numAmigos', Sort.asc);
    });
  }

  QueryBuilder<UserEntity, UserEntity, QAfterSortBy> thenByNumAmigosDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'numAmigos', Sort.desc);
    });
  }

  QueryBuilder<UserEntity, UserEntity, QAfterSortBy> thenByPartidosGanados() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'partidosGanados', Sort.asc);
    });
  }

  QueryBuilder<UserEntity, UserEntity, QAfterSortBy>
      thenByPartidosGanadosDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'partidosGanados', Sort.desc);
    });
  }

  QueryBuilder<UserEntity, UserEntity, QAfterSortBy> thenByPartidosJugados() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'partidosJugados', Sort.asc);
    });
  }

  QueryBuilder<UserEntity, UserEntity, QAfterSortBy>
      thenByPartidosJugadosDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'partidosJugados', Sort.desc);
    });
  }

  QueryBuilder<UserEntity, UserEntity, QAfterSortBy> thenByPartidosPerdidos() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'partidosPerdidos', Sort.asc);
    });
  }

  QueryBuilder<UserEntity, UserEntity, QAfterSortBy>
      thenByPartidosPerdidosDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'partidosPerdidos', Sort.desc);
    });
  }

  QueryBuilder<UserEntity, UserEntity, QAfterSortBy> thenByPhoneNumber() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'phoneNumber', Sort.asc);
    });
  }

  QueryBuilder<UserEntity, UserEntity, QAfterSortBy> thenByPhoneNumberDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'phoneNumber', Sort.desc);
    });
  }

  QueryBuilder<UserEntity, UserEntity, QAfterSortBy> thenByPlc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'plc', Sort.asc);
    });
  }

  QueryBuilder<UserEntity, UserEntity, QAfterSortBy> thenByPlcDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'plc', Sort.desc);
    });
  }

  QueryBuilder<UserEntity, UserEntity, QAfterSortBy> thenBySolicitudEstado() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'solicitudEstado', Sort.asc);
    });
  }

  QueryBuilder<UserEntity, UserEntity, QAfterSortBy>
      thenBySolicitudEstadoDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'solicitudEstado', Sort.desc);
    });
  }

  QueryBuilder<UserEntity, UserEntity, QAfterSortBy> thenByUserName() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'userName', Sort.asc);
    });
  }

  QueryBuilder<UserEntity, UserEntity, QAfterSortBy> thenByUserNameDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'userName', Sort.desc);
    });
  }

  QueryBuilder<UserEntity, UserEntity, QAfterSortBy>
      thenByVecesBloqueoComunidad() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'vecesBloqueoComunidad', Sort.asc);
    });
  }

  QueryBuilder<UserEntity, UserEntity, QAfterSortBy>
      thenByVecesBloqueoComunidadDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'vecesBloqueoComunidad', Sort.desc);
    });
  }
}

extension UserEntityQueryWhereDistinct
    on QueryBuilder<UserEntity, UserEntity, QDistinct> {
  QueryBuilder<UserEntity, UserEntity, QDistinct> distinctByApellidos(
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'apellidos', caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<UserEntity, UserEntity, QDistinct> distinctByEmail(
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'email', caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<UserEntity, UserEntity, QDistinct> distinctByEsAmigo() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'esAmigo');
    });
  }

  QueryBuilder<UserEntity, UserEntity, QDistinct> distinctByFechaNacimiento() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'fechaNacimiento');
    });
  }

  QueryBuilder<UserEntity, UserEntity, QDistinct> distinctByFotoPerfil(
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'fotoPerfil', caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<UserEntity, UserEntity, QDistinct> distinctById(
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'id', caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<UserEntity, UserEntity, QDistinct>
      distinctByMediaValoraciones() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'mediaValoraciones');
    });
  }

  QueryBuilder<UserEntity, UserEntity, QDistinct> distinctByNombre(
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'nombre', caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<UserEntity, UserEntity, QDistinct> distinctByNumAmigos() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'numAmigos');
    });
  }

  QueryBuilder<UserEntity, UserEntity, QDistinct> distinctByPartidosGanados() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'partidosGanados');
    });
  }

  QueryBuilder<UserEntity, UserEntity, QDistinct> distinctByPartidosJugados() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'partidosJugados');
    });
  }

  QueryBuilder<UserEntity, UserEntity, QDistinct> distinctByPartidosPerdidos() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'partidosPerdidos');
    });
  }

  QueryBuilder<UserEntity, UserEntity, QDistinct> distinctByPhoneNumber(
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'phoneNumber', caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<UserEntity, UserEntity, QDistinct> distinctByPlc() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'plc');
    });
  }

  QueryBuilder<UserEntity, UserEntity, QDistinct> distinctBySolicitudEstado(
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'solicitudEstado',
          caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<UserEntity, UserEntity, QDistinct> distinctByUserName(
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'userName', caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<UserEntity, UserEntity, QDistinct>
      distinctByVecesBloqueoComunidad() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'vecesBloqueoComunidad');
    });
  }
}

extension UserEntityQueryProperty
    on QueryBuilder<UserEntity, UserEntity, QQueryProperty> {
  QueryBuilder<UserEntity, int, QQueryOperations> isarIdProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'isarId');
    });
  }

  QueryBuilder<UserEntity, String?, QQueryOperations> apellidosProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'apellidos');
    });
  }

  QueryBuilder<UserEntity, String, QQueryOperations> emailProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'email');
    });
  }

  QueryBuilder<UserEntity, bool?, QQueryOperations> esAmigoProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'esAmigo');
    });
  }

  QueryBuilder<UserEntity, DateTime?, QQueryOperations>
      fechaNacimientoProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'fechaNacimiento');
    });
  }

  QueryBuilder<UserEntity, String?, QQueryOperations> fotoPerfilProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'fotoPerfil');
    });
  }

  QueryBuilder<UserEntity, String, QQueryOperations> idProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'id');
    });
  }

  QueryBuilder<UserEntity, double?, QQueryOperations>
      mediaValoracionesProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'mediaValoraciones');
    });
  }

  QueryBuilder<UserEntity, String?, QQueryOperations> nombreProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'nombre');
    });
  }

  QueryBuilder<UserEntity, int?, QQueryOperations> numAmigosProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'numAmigos');
    });
  }

  QueryBuilder<UserEntity, int?, QQueryOperations> partidosGanadosProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'partidosGanados');
    });
  }

  QueryBuilder<UserEntity, int?, QQueryOperations> partidosJugadosProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'partidosJugados');
    });
  }

  QueryBuilder<UserEntity, int?, QQueryOperations> partidosPerdidosProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'partidosPerdidos');
    });
  }

  QueryBuilder<UserEntity, String?, QQueryOperations> phoneNumberProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'phoneNumber');
    });
  }

  QueryBuilder<UserEntity, double?, QQueryOperations> plcProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'plc');
    });
  }

  QueryBuilder<UserEntity, String?, QQueryOperations>
      solicitudEstadoProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'solicitudEstado');
    });
  }

  QueryBuilder<UserEntity, String, QQueryOperations> userNameProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'userName');
    });
  }

  QueryBuilder<UserEntity, int?, QQueryOperations>
      vecesBloqueoComunidadProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'vecesBloqueoComunidad');
    });
  }
}
