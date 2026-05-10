// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'measures.dart';

// **************************************************************************
// IsarCollectionGenerator
// **************************************************************************

// coverage:ignore-file
// ignore_for_file: duplicate_ignore, non_constant_identifier_names, constant_identifier_names, invalid_use_of_protected_member, unnecessary_cast, prefer_const_constructors, lines_longer_than_80_chars, require_trailing_commas, inference_failure_on_function_invocation, unnecessary_parenthesis, unnecessary_raw_strings, unnecessary_null_checks, join_return_with_assignment, prefer_final_locals, avoid_js_rounded_ints, avoid_positional_boolean_parameters, always_specify_types

extension GetMeasuresCollection on Isar {
  IsarCollection<Measures> get measures => this.collection();
}

const MeasuresSchema = CollectionSchema(
  name: r'Measures',
  id: -8631637176697416670,
  properties: {
    r'chest': PropertySchema(
      id: 0,
      name: r'chest',
      type: IsarType.double,
    ),
    r'date': PropertySchema(
      id: 1,
      name: r'date',
      type: IsarType.dateTime,
    ),
    r'hips': PropertySchema(
      id: 2,
      name: r'hips',
      type: IsarType.double,
    ),
    r'leftArm': PropertySchema(
      id: 3,
      name: r'leftArm',
      type: IsarType.double,
    ),
    r'leftCalf': PropertySchema(
      id: 4,
      name: r'leftCalf',
      type: IsarType.double,
    ),
    r'leftForearm': PropertySchema(
      id: 5,
      name: r'leftForearm',
      type: IsarType.double,
    ),
    r'leftThigh': PropertySchema(
      id: 6,
      name: r'leftThigh',
      type: IsarType.double,
    ),
    r'leftWrist': PropertySchema(
      id: 7,
      name: r'leftWrist',
      type: IsarType.double,
    ),
    r'neck': PropertySchema(
      id: 8,
      name: r'neck',
      type: IsarType.double,
    ),
    r'rightArm': PropertySchema(
      id: 9,
      name: r'rightArm',
      type: IsarType.double,
    ),
    r'rightCalf': PropertySchema(
      id: 10,
      name: r'rightCalf',
      type: IsarType.double,
    ),
    r'rightForearm': PropertySchema(
      id: 11,
      name: r'rightForearm',
      type: IsarType.double,
    ),
    r'rightThigh': PropertySchema(
      id: 12,
      name: r'rightThigh',
      type: IsarType.double,
    ),
    r'rightWrist': PropertySchema(
      id: 13,
      name: r'rightWrist',
      type: IsarType.double,
    ),
    r'shoulders': PropertySchema(
      id: 14,
      name: r'shoulders',
      type: IsarType.double,
    ),
    r'waist': PropertySchema(
      id: 15,
      name: r'waist',
      type: IsarType.double,
    ),
    r'weight': PropertySchema(
      id: 16,
      name: r'weight',
      type: IsarType.double,
    )
  },
  estimateSize: _measuresEstimateSize,
  serialize: _measuresSerialize,
  deserialize: _measuresDeserialize,
  deserializeProp: _measuresDeserializeProp,
  idName: r'id',
  indexes: {},
  links: {},
  embeddedSchemas: {},
  getId: _measuresGetId,
  getLinks: _measuresGetLinks,
  attach: _measuresAttach,
  version: '3.1.0+1',
);

int _measuresEstimateSize(
  Measures object,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  var bytesCount = offsets.last;
  return bytesCount;
}

void _measuresSerialize(
  Measures object,
  IsarWriter writer,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  writer.writeDouble(offsets[0], object.chest);
  writer.writeDateTime(offsets[1], object.date);
  writer.writeDouble(offsets[2], object.hips);
  writer.writeDouble(offsets[3], object.leftArm);
  writer.writeDouble(offsets[4], object.leftCalf);
  writer.writeDouble(offsets[5], object.leftForearm);
  writer.writeDouble(offsets[6], object.leftThigh);
  writer.writeDouble(offsets[7], object.leftWrist);
  writer.writeDouble(offsets[8], object.neck);
  writer.writeDouble(offsets[9], object.rightArm);
  writer.writeDouble(offsets[10], object.rightCalf);
  writer.writeDouble(offsets[11], object.rightForearm);
  writer.writeDouble(offsets[12], object.rightThigh);
  writer.writeDouble(offsets[13], object.rightWrist);
  writer.writeDouble(offsets[14], object.shoulders);
  writer.writeDouble(offsets[15], object.waist);
  writer.writeDouble(offsets[16], object.weight);
}

Measures _measuresDeserialize(
  Id id,
  IsarReader reader,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  final object = Measures();
  object.chest = reader.readDoubleOrNull(offsets[0]);
  object.date = reader.readDateTime(offsets[1]);
  object.hips = reader.readDoubleOrNull(offsets[2]);
  object.id = id;
  object.leftArm = reader.readDoubleOrNull(offsets[3]);
  object.leftCalf = reader.readDoubleOrNull(offsets[4]);
  object.leftForearm = reader.readDoubleOrNull(offsets[5]);
  object.leftThigh = reader.readDoubleOrNull(offsets[6]);
  object.leftWrist = reader.readDoubleOrNull(offsets[7]);
  object.neck = reader.readDoubleOrNull(offsets[8]);
  object.rightArm = reader.readDoubleOrNull(offsets[9]);
  object.rightCalf = reader.readDoubleOrNull(offsets[10]);
  object.rightForearm = reader.readDoubleOrNull(offsets[11]);
  object.rightThigh = reader.readDoubleOrNull(offsets[12]);
  object.rightWrist = reader.readDoubleOrNull(offsets[13]);
  object.shoulders = reader.readDoubleOrNull(offsets[14]);
  object.waist = reader.readDoubleOrNull(offsets[15]);
  object.weight = reader.readDoubleOrNull(offsets[16]);
  return object;
}

P _measuresDeserializeProp<P>(
  IsarReader reader,
  int propertyId,
  int offset,
  Map<Type, List<int>> allOffsets,
) {
  switch (propertyId) {
    case 0:
      return (reader.readDoubleOrNull(offset)) as P;
    case 1:
      return (reader.readDateTime(offset)) as P;
    case 2:
      return (reader.readDoubleOrNull(offset)) as P;
    case 3:
      return (reader.readDoubleOrNull(offset)) as P;
    case 4:
      return (reader.readDoubleOrNull(offset)) as P;
    case 5:
      return (reader.readDoubleOrNull(offset)) as P;
    case 6:
      return (reader.readDoubleOrNull(offset)) as P;
    case 7:
      return (reader.readDoubleOrNull(offset)) as P;
    case 8:
      return (reader.readDoubleOrNull(offset)) as P;
    case 9:
      return (reader.readDoubleOrNull(offset)) as P;
    case 10:
      return (reader.readDoubleOrNull(offset)) as P;
    case 11:
      return (reader.readDoubleOrNull(offset)) as P;
    case 12:
      return (reader.readDoubleOrNull(offset)) as P;
    case 13:
      return (reader.readDoubleOrNull(offset)) as P;
    case 14:
      return (reader.readDoubleOrNull(offset)) as P;
    case 15:
      return (reader.readDoubleOrNull(offset)) as P;
    case 16:
      return (reader.readDoubleOrNull(offset)) as P;
    default:
      throw IsarError('Unknown property with id $propertyId');
  }
}

Id _measuresGetId(Measures object) {
  return object.id;
}

List<IsarLinkBase<dynamic>> _measuresGetLinks(Measures object) {
  return [];
}

void _measuresAttach(IsarCollection<dynamic> col, Id id, Measures object) {
  object.id = id;
}

extension MeasuresQueryWhereSort on QueryBuilder<Measures, Measures, QWhere> {
  QueryBuilder<Measures, Measures, QAfterWhere> anyId() {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(const IdWhereClause.any());
    });
  }
}

extension MeasuresQueryWhere on QueryBuilder<Measures, Measures, QWhereClause> {
  QueryBuilder<Measures, Measures, QAfterWhereClause> idEqualTo(Id id) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(IdWhereClause.between(
        lower: id,
        upper: id,
      ));
    });
  }

  QueryBuilder<Measures, Measures, QAfterWhereClause> idNotEqualTo(Id id) {
    return QueryBuilder.apply(this, (query) {
      if (query.whereSort == Sort.asc) {
        return query
            .addWhereClause(
              IdWhereClause.lessThan(upper: id, includeUpper: false),
            )
            .addWhereClause(
              IdWhereClause.greaterThan(lower: id, includeLower: false),
            );
      } else {
        return query
            .addWhereClause(
              IdWhereClause.greaterThan(lower: id, includeLower: false),
            )
            .addWhereClause(
              IdWhereClause.lessThan(upper: id, includeUpper: false),
            );
      }
    });
  }

  QueryBuilder<Measures, Measures, QAfterWhereClause> idGreaterThan(Id id,
      {bool include = false}) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(
        IdWhereClause.greaterThan(lower: id, includeLower: include),
      );
    });
  }

  QueryBuilder<Measures, Measures, QAfterWhereClause> idLessThan(Id id,
      {bool include = false}) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(
        IdWhereClause.lessThan(upper: id, includeUpper: include),
      );
    });
  }

  QueryBuilder<Measures, Measures, QAfterWhereClause> idBetween(
    Id lowerId,
    Id upperId, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(IdWhereClause.between(
        lower: lowerId,
        includeLower: includeLower,
        upper: upperId,
        includeUpper: includeUpper,
      ));
    });
  }
}

extension MeasuresQueryFilter
    on QueryBuilder<Measures, Measures, QFilterCondition> {
  QueryBuilder<Measures, Measures, QAfterFilterCondition> chestIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'chest',
      ));
    });
  }

  QueryBuilder<Measures, Measures, QAfterFilterCondition> chestIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'chest',
      ));
    });
  }

  QueryBuilder<Measures, Measures, QAfterFilterCondition> chestEqualTo(
    double? value, {
    double epsilon = Query.epsilon,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'chest',
        value: value,
        epsilon: epsilon,
      ));
    });
  }

  QueryBuilder<Measures, Measures, QAfterFilterCondition> chestGreaterThan(
    double? value, {
    bool include = false,
    double epsilon = Query.epsilon,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'chest',
        value: value,
        epsilon: epsilon,
      ));
    });
  }

  QueryBuilder<Measures, Measures, QAfterFilterCondition> chestLessThan(
    double? value, {
    bool include = false,
    double epsilon = Query.epsilon,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'chest',
        value: value,
        epsilon: epsilon,
      ));
    });
  }

  QueryBuilder<Measures, Measures, QAfterFilterCondition> chestBetween(
    double? lower,
    double? upper, {
    bool includeLower = true,
    bool includeUpper = true,
    double epsilon = Query.epsilon,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'chest',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        epsilon: epsilon,
      ));
    });
  }

  QueryBuilder<Measures, Measures, QAfterFilterCondition> dateEqualTo(
      DateTime value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'date',
        value: value,
      ));
    });
  }

  QueryBuilder<Measures, Measures, QAfterFilterCondition> dateGreaterThan(
    DateTime value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'date',
        value: value,
      ));
    });
  }

  QueryBuilder<Measures, Measures, QAfterFilterCondition> dateLessThan(
    DateTime value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'date',
        value: value,
      ));
    });
  }

  QueryBuilder<Measures, Measures, QAfterFilterCondition> dateBetween(
    DateTime lower,
    DateTime upper, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'date',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
      ));
    });
  }

  QueryBuilder<Measures, Measures, QAfterFilterCondition> hipsIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'hips',
      ));
    });
  }

  QueryBuilder<Measures, Measures, QAfterFilterCondition> hipsIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'hips',
      ));
    });
  }

  QueryBuilder<Measures, Measures, QAfterFilterCondition> hipsEqualTo(
    double? value, {
    double epsilon = Query.epsilon,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'hips',
        value: value,
        epsilon: epsilon,
      ));
    });
  }

  QueryBuilder<Measures, Measures, QAfterFilterCondition> hipsGreaterThan(
    double? value, {
    bool include = false,
    double epsilon = Query.epsilon,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'hips',
        value: value,
        epsilon: epsilon,
      ));
    });
  }

  QueryBuilder<Measures, Measures, QAfterFilterCondition> hipsLessThan(
    double? value, {
    bool include = false,
    double epsilon = Query.epsilon,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'hips',
        value: value,
        epsilon: epsilon,
      ));
    });
  }

  QueryBuilder<Measures, Measures, QAfterFilterCondition> hipsBetween(
    double? lower,
    double? upper, {
    bool includeLower = true,
    bool includeUpper = true,
    double epsilon = Query.epsilon,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'hips',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        epsilon: epsilon,
      ));
    });
  }

  QueryBuilder<Measures, Measures, QAfterFilterCondition> idEqualTo(Id value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'id',
        value: value,
      ));
    });
  }

  QueryBuilder<Measures, Measures, QAfterFilterCondition> idGreaterThan(
    Id value, {
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

  QueryBuilder<Measures, Measures, QAfterFilterCondition> idLessThan(
    Id value, {
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

  QueryBuilder<Measures, Measures, QAfterFilterCondition> idBetween(
    Id lower,
    Id upper, {
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

  QueryBuilder<Measures, Measures, QAfterFilterCondition> leftArmIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'leftArm',
      ));
    });
  }

  QueryBuilder<Measures, Measures, QAfterFilterCondition> leftArmIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'leftArm',
      ));
    });
  }

  QueryBuilder<Measures, Measures, QAfterFilterCondition> leftArmEqualTo(
    double? value, {
    double epsilon = Query.epsilon,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'leftArm',
        value: value,
        epsilon: epsilon,
      ));
    });
  }

  QueryBuilder<Measures, Measures, QAfterFilterCondition> leftArmGreaterThan(
    double? value, {
    bool include = false,
    double epsilon = Query.epsilon,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'leftArm',
        value: value,
        epsilon: epsilon,
      ));
    });
  }

  QueryBuilder<Measures, Measures, QAfterFilterCondition> leftArmLessThan(
    double? value, {
    bool include = false,
    double epsilon = Query.epsilon,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'leftArm',
        value: value,
        epsilon: epsilon,
      ));
    });
  }

  QueryBuilder<Measures, Measures, QAfterFilterCondition> leftArmBetween(
    double? lower,
    double? upper, {
    bool includeLower = true,
    bool includeUpper = true,
    double epsilon = Query.epsilon,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'leftArm',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        epsilon: epsilon,
      ));
    });
  }

  QueryBuilder<Measures, Measures, QAfterFilterCondition> leftCalfIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'leftCalf',
      ));
    });
  }

  QueryBuilder<Measures, Measures, QAfterFilterCondition> leftCalfIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'leftCalf',
      ));
    });
  }

  QueryBuilder<Measures, Measures, QAfterFilterCondition> leftCalfEqualTo(
    double? value, {
    double epsilon = Query.epsilon,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'leftCalf',
        value: value,
        epsilon: epsilon,
      ));
    });
  }

  QueryBuilder<Measures, Measures, QAfterFilterCondition> leftCalfGreaterThan(
    double? value, {
    bool include = false,
    double epsilon = Query.epsilon,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'leftCalf',
        value: value,
        epsilon: epsilon,
      ));
    });
  }

  QueryBuilder<Measures, Measures, QAfterFilterCondition> leftCalfLessThan(
    double? value, {
    bool include = false,
    double epsilon = Query.epsilon,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'leftCalf',
        value: value,
        epsilon: epsilon,
      ));
    });
  }

  QueryBuilder<Measures, Measures, QAfterFilterCondition> leftCalfBetween(
    double? lower,
    double? upper, {
    bool includeLower = true,
    bool includeUpper = true,
    double epsilon = Query.epsilon,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'leftCalf',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        epsilon: epsilon,
      ));
    });
  }

  QueryBuilder<Measures, Measures, QAfterFilterCondition> leftForearmIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'leftForearm',
      ));
    });
  }

  QueryBuilder<Measures, Measures, QAfterFilterCondition>
      leftForearmIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'leftForearm',
      ));
    });
  }

  QueryBuilder<Measures, Measures, QAfterFilterCondition> leftForearmEqualTo(
    double? value, {
    double epsilon = Query.epsilon,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'leftForearm',
        value: value,
        epsilon: epsilon,
      ));
    });
  }

  QueryBuilder<Measures, Measures, QAfterFilterCondition>
      leftForearmGreaterThan(
    double? value, {
    bool include = false,
    double epsilon = Query.epsilon,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'leftForearm',
        value: value,
        epsilon: epsilon,
      ));
    });
  }

  QueryBuilder<Measures, Measures, QAfterFilterCondition> leftForearmLessThan(
    double? value, {
    bool include = false,
    double epsilon = Query.epsilon,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'leftForearm',
        value: value,
        epsilon: epsilon,
      ));
    });
  }

  QueryBuilder<Measures, Measures, QAfterFilterCondition> leftForearmBetween(
    double? lower,
    double? upper, {
    bool includeLower = true,
    bool includeUpper = true,
    double epsilon = Query.epsilon,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'leftForearm',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        epsilon: epsilon,
      ));
    });
  }

  QueryBuilder<Measures, Measures, QAfterFilterCondition> leftThighIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'leftThigh',
      ));
    });
  }

  QueryBuilder<Measures, Measures, QAfterFilterCondition> leftThighIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'leftThigh',
      ));
    });
  }

  QueryBuilder<Measures, Measures, QAfterFilterCondition> leftThighEqualTo(
    double? value, {
    double epsilon = Query.epsilon,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'leftThigh',
        value: value,
        epsilon: epsilon,
      ));
    });
  }

  QueryBuilder<Measures, Measures, QAfterFilterCondition> leftThighGreaterThan(
    double? value, {
    bool include = false,
    double epsilon = Query.epsilon,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'leftThigh',
        value: value,
        epsilon: epsilon,
      ));
    });
  }

  QueryBuilder<Measures, Measures, QAfterFilterCondition> leftThighLessThan(
    double? value, {
    bool include = false,
    double epsilon = Query.epsilon,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'leftThigh',
        value: value,
        epsilon: epsilon,
      ));
    });
  }

  QueryBuilder<Measures, Measures, QAfterFilterCondition> leftThighBetween(
    double? lower,
    double? upper, {
    bool includeLower = true,
    bool includeUpper = true,
    double epsilon = Query.epsilon,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'leftThigh',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        epsilon: epsilon,
      ));
    });
  }

  QueryBuilder<Measures, Measures, QAfterFilterCondition> leftWristIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'leftWrist',
      ));
    });
  }

  QueryBuilder<Measures, Measures, QAfterFilterCondition> leftWristIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'leftWrist',
      ));
    });
  }

  QueryBuilder<Measures, Measures, QAfterFilterCondition> leftWristEqualTo(
    double? value, {
    double epsilon = Query.epsilon,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'leftWrist',
        value: value,
        epsilon: epsilon,
      ));
    });
  }

  QueryBuilder<Measures, Measures, QAfterFilterCondition> leftWristGreaterThan(
    double? value, {
    bool include = false,
    double epsilon = Query.epsilon,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'leftWrist',
        value: value,
        epsilon: epsilon,
      ));
    });
  }

  QueryBuilder<Measures, Measures, QAfterFilterCondition> leftWristLessThan(
    double? value, {
    bool include = false,
    double epsilon = Query.epsilon,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'leftWrist',
        value: value,
        epsilon: epsilon,
      ));
    });
  }

  QueryBuilder<Measures, Measures, QAfterFilterCondition> leftWristBetween(
    double? lower,
    double? upper, {
    bool includeLower = true,
    bool includeUpper = true,
    double epsilon = Query.epsilon,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'leftWrist',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        epsilon: epsilon,
      ));
    });
  }

  QueryBuilder<Measures, Measures, QAfterFilterCondition> neckIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'neck',
      ));
    });
  }

  QueryBuilder<Measures, Measures, QAfterFilterCondition> neckIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'neck',
      ));
    });
  }

  QueryBuilder<Measures, Measures, QAfterFilterCondition> neckEqualTo(
    double? value, {
    double epsilon = Query.epsilon,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'neck',
        value: value,
        epsilon: epsilon,
      ));
    });
  }

  QueryBuilder<Measures, Measures, QAfterFilterCondition> neckGreaterThan(
    double? value, {
    bool include = false,
    double epsilon = Query.epsilon,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'neck',
        value: value,
        epsilon: epsilon,
      ));
    });
  }

  QueryBuilder<Measures, Measures, QAfterFilterCondition> neckLessThan(
    double? value, {
    bool include = false,
    double epsilon = Query.epsilon,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'neck',
        value: value,
        epsilon: epsilon,
      ));
    });
  }

  QueryBuilder<Measures, Measures, QAfterFilterCondition> neckBetween(
    double? lower,
    double? upper, {
    bool includeLower = true,
    bool includeUpper = true,
    double epsilon = Query.epsilon,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'neck',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        epsilon: epsilon,
      ));
    });
  }

  QueryBuilder<Measures, Measures, QAfterFilterCondition> rightArmIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'rightArm',
      ));
    });
  }

  QueryBuilder<Measures, Measures, QAfterFilterCondition> rightArmIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'rightArm',
      ));
    });
  }

  QueryBuilder<Measures, Measures, QAfterFilterCondition> rightArmEqualTo(
    double? value, {
    double epsilon = Query.epsilon,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'rightArm',
        value: value,
        epsilon: epsilon,
      ));
    });
  }

  QueryBuilder<Measures, Measures, QAfterFilterCondition> rightArmGreaterThan(
    double? value, {
    bool include = false,
    double epsilon = Query.epsilon,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'rightArm',
        value: value,
        epsilon: epsilon,
      ));
    });
  }

  QueryBuilder<Measures, Measures, QAfterFilterCondition> rightArmLessThan(
    double? value, {
    bool include = false,
    double epsilon = Query.epsilon,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'rightArm',
        value: value,
        epsilon: epsilon,
      ));
    });
  }

  QueryBuilder<Measures, Measures, QAfterFilterCondition> rightArmBetween(
    double? lower,
    double? upper, {
    bool includeLower = true,
    bool includeUpper = true,
    double epsilon = Query.epsilon,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'rightArm',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        epsilon: epsilon,
      ));
    });
  }

  QueryBuilder<Measures, Measures, QAfterFilterCondition> rightCalfIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'rightCalf',
      ));
    });
  }

  QueryBuilder<Measures, Measures, QAfterFilterCondition> rightCalfIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'rightCalf',
      ));
    });
  }

  QueryBuilder<Measures, Measures, QAfterFilterCondition> rightCalfEqualTo(
    double? value, {
    double epsilon = Query.epsilon,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'rightCalf',
        value: value,
        epsilon: epsilon,
      ));
    });
  }

  QueryBuilder<Measures, Measures, QAfterFilterCondition> rightCalfGreaterThan(
    double? value, {
    bool include = false,
    double epsilon = Query.epsilon,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'rightCalf',
        value: value,
        epsilon: epsilon,
      ));
    });
  }

  QueryBuilder<Measures, Measures, QAfterFilterCondition> rightCalfLessThan(
    double? value, {
    bool include = false,
    double epsilon = Query.epsilon,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'rightCalf',
        value: value,
        epsilon: epsilon,
      ));
    });
  }

  QueryBuilder<Measures, Measures, QAfterFilterCondition> rightCalfBetween(
    double? lower,
    double? upper, {
    bool includeLower = true,
    bool includeUpper = true,
    double epsilon = Query.epsilon,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'rightCalf',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        epsilon: epsilon,
      ));
    });
  }

  QueryBuilder<Measures, Measures, QAfterFilterCondition> rightForearmIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'rightForearm',
      ));
    });
  }

  QueryBuilder<Measures, Measures, QAfterFilterCondition>
      rightForearmIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'rightForearm',
      ));
    });
  }

  QueryBuilder<Measures, Measures, QAfterFilterCondition> rightForearmEqualTo(
    double? value, {
    double epsilon = Query.epsilon,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'rightForearm',
        value: value,
        epsilon: epsilon,
      ));
    });
  }

  QueryBuilder<Measures, Measures, QAfterFilterCondition>
      rightForearmGreaterThan(
    double? value, {
    bool include = false,
    double epsilon = Query.epsilon,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'rightForearm',
        value: value,
        epsilon: epsilon,
      ));
    });
  }

  QueryBuilder<Measures, Measures, QAfterFilterCondition> rightForearmLessThan(
    double? value, {
    bool include = false,
    double epsilon = Query.epsilon,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'rightForearm',
        value: value,
        epsilon: epsilon,
      ));
    });
  }

  QueryBuilder<Measures, Measures, QAfterFilterCondition> rightForearmBetween(
    double? lower,
    double? upper, {
    bool includeLower = true,
    bool includeUpper = true,
    double epsilon = Query.epsilon,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'rightForearm',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        epsilon: epsilon,
      ));
    });
  }

  QueryBuilder<Measures, Measures, QAfterFilterCondition> rightThighIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'rightThigh',
      ));
    });
  }

  QueryBuilder<Measures, Measures, QAfterFilterCondition>
      rightThighIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'rightThigh',
      ));
    });
  }

  QueryBuilder<Measures, Measures, QAfterFilterCondition> rightThighEqualTo(
    double? value, {
    double epsilon = Query.epsilon,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'rightThigh',
        value: value,
        epsilon: epsilon,
      ));
    });
  }

  QueryBuilder<Measures, Measures, QAfterFilterCondition> rightThighGreaterThan(
    double? value, {
    bool include = false,
    double epsilon = Query.epsilon,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'rightThigh',
        value: value,
        epsilon: epsilon,
      ));
    });
  }

  QueryBuilder<Measures, Measures, QAfterFilterCondition> rightThighLessThan(
    double? value, {
    bool include = false,
    double epsilon = Query.epsilon,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'rightThigh',
        value: value,
        epsilon: epsilon,
      ));
    });
  }

  QueryBuilder<Measures, Measures, QAfterFilterCondition> rightThighBetween(
    double? lower,
    double? upper, {
    bool includeLower = true,
    bool includeUpper = true,
    double epsilon = Query.epsilon,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'rightThigh',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        epsilon: epsilon,
      ));
    });
  }

  QueryBuilder<Measures, Measures, QAfterFilterCondition> rightWristIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'rightWrist',
      ));
    });
  }

  QueryBuilder<Measures, Measures, QAfterFilterCondition>
      rightWristIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'rightWrist',
      ));
    });
  }

  QueryBuilder<Measures, Measures, QAfterFilterCondition> rightWristEqualTo(
    double? value, {
    double epsilon = Query.epsilon,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'rightWrist',
        value: value,
        epsilon: epsilon,
      ));
    });
  }

  QueryBuilder<Measures, Measures, QAfterFilterCondition> rightWristGreaterThan(
    double? value, {
    bool include = false,
    double epsilon = Query.epsilon,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'rightWrist',
        value: value,
        epsilon: epsilon,
      ));
    });
  }

  QueryBuilder<Measures, Measures, QAfterFilterCondition> rightWristLessThan(
    double? value, {
    bool include = false,
    double epsilon = Query.epsilon,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'rightWrist',
        value: value,
        epsilon: epsilon,
      ));
    });
  }

  QueryBuilder<Measures, Measures, QAfterFilterCondition> rightWristBetween(
    double? lower,
    double? upper, {
    bool includeLower = true,
    bool includeUpper = true,
    double epsilon = Query.epsilon,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'rightWrist',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        epsilon: epsilon,
      ));
    });
  }

  QueryBuilder<Measures, Measures, QAfterFilterCondition> shouldersIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'shoulders',
      ));
    });
  }

  QueryBuilder<Measures, Measures, QAfterFilterCondition> shouldersIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'shoulders',
      ));
    });
  }

  QueryBuilder<Measures, Measures, QAfterFilterCondition> shouldersEqualTo(
    double? value, {
    double epsilon = Query.epsilon,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'shoulders',
        value: value,
        epsilon: epsilon,
      ));
    });
  }

  QueryBuilder<Measures, Measures, QAfterFilterCondition> shouldersGreaterThan(
    double? value, {
    bool include = false,
    double epsilon = Query.epsilon,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'shoulders',
        value: value,
        epsilon: epsilon,
      ));
    });
  }

  QueryBuilder<Measures, Measures, QAfterFilterCondition> shouldersLessThan(
    double? value, {
    bool include = false,
    double epsilon = Query.epsilon,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'shoulders',
        value: value,
        epsilon: epsilon,
      ));
    });
  }

  QueryBuilder<Measures, Measures, QAfterFilterCondition> shouldersBetween(
    double? lower,
    double? upper, {
    bool includeLower = true,
    bool includeUpper = true,
    double epsilon = Query.epsilon,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'shoulders',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        epsilon: epsilon,
      ));
    });
  }

  QueryBuilder<Measures, Measures, QAfterFilterCondition> waistIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'waist',
      ));
    });
  }

  QueryBuilder<Measures, Measures, QAfterFilterCondition> waistIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'waist',
      ));
    });
  }

  QueryBuilder<Measures, Measures, QAfterFilterCondition> waistEqualTo(
    double? value, {
    double epsilon = Query.epsilon,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'waist',
        value: value,
        epsilon: epsilon,
      ));
    });
  }

  QueryBuilder<Measures, Measures, QAfterFilterCondition> waistGreaterThan(
    double? value, {
    bool include = false,
    double epsilon = Query.epsilon,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'waist',
        value: value,
        epsilon: epsilon,
      ));
    });
  }

  QueryBuilder<Measures, Measures, QAfterFilterCondition> waistLessThan(
    double? value, {
    bool include = false,
    double epsilon = Query.epsilon,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'waist',
        value: value,
        epsilon: epsilon,
      ));
    });
  }

  QueryBuilder<Measures, Measures, QAfterFilterCondition> waistBetween(
    double? lower,
    double? upper, {
    bool includeLower = true,
    bool includeUpper = true,
    double epsilon = Query.epsilon,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'waist',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        epsilon: epsilon,
      ));
    });
  }

  QueryBuilder<Measures, Measures, QAfterFilterCondition> weightIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'weight',
      ));
    });
  }

  QueryBuilder<Measures, Measures, QAfterFilterCondition> weightIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'weight',
      ));
    });
  }

  QueryBuilder<Measures, Measures, QAfterFilterCondition> weightEqualTo(
    double? value, {
    double epsilon = Query.epsilon,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'weight',
        value: value,
        epsilon: epsilon,
      ));
    });
  }

  QueryBuilder<Measures, Measures, QAfterFilterCondition> weightGreaterThan(
    double? value, {
    bool include = false,
    double epsilon = Query.epsilon,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'weight',
        value: value,
        epsilon: epsilon,
      ));
    });
  }

  QueryBuilder<Measures, Measures, QAfterFilterCondition> weightLessThan(
    double? value, {
    bool include = false,
    double epsilon = Query.epsilon,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'weight',
        value: value,
        epsilon: epsilon,
      ));
    });
  }

  QueryBuilder<Measures, Measures, QAfterFilterCondition> weightBetween(
    double? lower,
    double? upper, {
    bool includeLower = true,
    bool includeUpper = true,
    double epsilon = Query.epsilon,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'weight',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        epsilon: epsilon,
      ));
    });
  }
}

extension MeasuresQueryObject
    on QueryBuilder<Measures, Measures, QFilterCondition> {}

extension MeasuresQueryLinks
    on QueryBuilder<Measures, Measures, QFilterCondition> {}

extension MeasuresQuerySortBy on QueryBuilder<Measures, Measures, QSortBy> {
  QueryBuilder<Measures, Measures, QAfterSortBy> sortByChest() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'chest', Sort.asc);
    });
  }

  QueryBuilder<Measures, Measures, QAfterSortBy> sortByChestDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'chest', Sort.desc);
    });
  }

  QueryBuilder<Measures, Measures, QAfterSortBy> sortByDate() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'date', Sort.asc);
    });
  }

  QueryBuilder<Measures, Measures, QAfterSortBy> sortByDateDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'date', Sort.desc);
    });
  }

  QueryBuilder<Measures, Measures, QAfterSortBy> sortByHips() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'hips', Sort.asc);
    });
  }

  QueryBuilder<Measures, Measures, QAfterSortBy> sortByHipsDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'hips', Sort.desc);
    });
  }

  QueryBuilder<Measures, Measures, QAfterSortBy> sortByLeftArm() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'leftArm', Sort.asc);
    });
  }

  QueryBuilder<Measures, Measures, QAfterSortBy> sortByLeftArmDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'leftArm', Sort.desc);
    });
  }

  QueryBuilder<Measures, Measures, QAfterSortBy> sortByLeftCalf() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'leftCalf', Sort.asc);
    });
  }

  QueryBuilder<Measures, Measures, QAfterSortBy> sortByLeftCalfDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'leftCalf', Sort.desc);
    });
  }

  QueryBuilder<Measures, Measures, QAfterSortBy> sortByLeftForearm() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'leftForearm', Sort.asc);
    });
  }

  QueryBuilder<Measures, Measures, QAfterSortBy> sortByLeftForearmDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'leftForearm', Sort.desc);
    });
  }

  QueryBuilder<Measures, Measures, QAfterSortBy> sortByLeftThigh() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'leftThigh', Sort.asc);
    });
  }

  QueryBuilder<Measures, Measures, QAfterSortBy> sortByLeftThighDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'leftThigh', Sort.desc);
    });
  }

  QueryBuilder<Measures, Measures, QAfterSortBy> sortByLeftWrist() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'leftWrist', Sort.asc);
    });
  }

  QueryBuilder<Measures, Measures, QAfterSortBy> sortByLeftWristDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'leftWrist', Sort.desc);
    });
  }

  QueryBuilder<Measures, Measures, QAfterSortBy> sortByNeck() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'neck', Sort.asc);
    });
  }

  QueryBuilder<Measures, Measures, QAfterSortBy> sortByNeckDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'neck', Sort.desc);
    });
  }

  QueryBuilder<Measures, Measures, QAfterSortBy> sortByRightArm() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'rightArm', Sort.asc);
    });
  }

  QueryBuilder<Measures, Measures, QAfterSortBy> sortByRightArmDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'rightArm', Sort.desc);
    });
  }

  QueryBuilder<Measures, Measures, QAfterSortBy> sortByRightCalf() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'rightCalf', Sort.asc);
    });
  }

  QueryBuilder<Measures, Measures, QAfterSortBy> sortByRightCalfDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'rightCalf', Sort.desc);
    });
  }

  QueryBuilder<Measures, Measures, QAfterSortBy> sortByRightForearm() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'rightForearm', Sort.asc);
    });
  }

  QueryBuilder<Measures, Measures, QAfterSortBy> sortByRightForearmDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'rightForearm', Sort.desc);
    });
  }

  QueryBuilder<Measures, Measures, QAfterSortBy> sortByRightThigh() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'rightThigh', Sort.asc);
    });
  }

  QueryBuilder<Measures, Measures, QAfterSortBy> sortByRightThighDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'rightThigh', Sort.desc);
    });
  }

  QueryBuilder<Measures, Measures, QAfterSortBy> sortByRightWrist() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'rightWrist', Sort.asc);
    });
  }

  QueryBuilder<Measures, Measures, QAfterSortBy> sortByRightWristDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'rightWrist', Sort.desc);
    });
  }

  QueryBuilder<Measures, Measures, QAfterSortBy> sortByShoulders() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'shoulders', Sort.asc);
    });
  }

  QueryBuilder<Measures, Measures, QAfterSortBy> sortByShouldersDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'shoulders', Sort.desc);
    });
  }

  QueryBuilder<Measures, Measures, QAfterSortBy> sortByWaist() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'waist', Sort.asc);
    });
  }

  QueryBuilder<Measures, Measures, QAfterSortBy> sortByWaistDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'waist', Sort.desc);
    });
  }

  QueryBuilder<Measures, Measures, QAfterSortBy> sortByWeight() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'weight', Sort.asc);
    });
  }

  QueryBuilder<Measures, Measures, QAfterSortBy> sortByWeightDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'weight', Sort.desc);
    });
  }
}

extension MeasuresQuerySortThenBy
    on QueryBuilder<Measures, Measures, QSortThenBy> {
  QueryBuilder<Measures, Measures, QAfterSortBy> thenByChest() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'chest', Sort.asc);
    });
  }

  QueryBuilder<Measures, Measures, QAfterSortBy> thenByChestDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'chest', Sort.desc);
    });
  }

  QueryBuilder<Measures, Measures, QAfterSortBy> thenByDate() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'date', Sort.asc);
    });
  }

  QueryBuilder<Measures, Measures, QAfterSortBy> thenByDateDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'date', Sort.desc);
    });
  }

  QueryBuilder<Measures, Measures, QAfterSortBy> thenByHips() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'hips', Sort.asc);
    });
  }

  QueryBuilder<Measures, Measures, QAfterSortBy> thenByHipsDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'hips', Sort.desc);
    });
  }

  QueryBuilder<Measures, Measures, QAfterSortBy> thenById() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'id', Sort.asc);
    });
  }

  QueryBuilder<Measures, Measures, QAfterSortBy> thenByIdDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'id', Sort.desc);
    });
  }

  QueryBuilder<Measures, Measures, QAfterSortBy> thenByLeftArm() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'leftArm', Sort.asc);
    });
  }

  QueryBuilder<Measures, Measures, QAfterSortBy> thenByLeftArmDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'leftArm', Sort.desc);
    });
  }

  QueryBuilder<Measures, Measures, QAfterSortBy> thenByLeftCalf() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'leftCalf', Sort.asc);
    });
  }

  QueryBuilder<Measures, Measures, QAfterSortBy> thenByLeftCalfDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'leftCalf', Sort.desc);
    });
  }

  QueryBuilder<Measures, Measures, QAfterSortBy> thenByLeftForearm() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'leftForearm', Sort.asc);
    });
  }

  QueryBuilder<Measures, Measures, QAfterSortBy> thenByLeftForearmDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'leftForearm', Sort.desc);
    });
  }

  QueryBuilder<Measures, Measures, QAfterSortBy> thenByLeftThigh() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'leftThigh', Sort.asc);
    });
  }

  QueryBuilder<Measures, Measures, QAfterSortBy> thenByLeftThighDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'leftThigh', Sort.desc);
    });
  }

  QueryBuilder<Measures, Measures, QAfterSortBy> thenByLeftWrist() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'leftWrist', Sort.asc);
    });
  }

  QueryBuilder<Measures, Measures, QAfterSortBy> thenByLeftWristDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'leftWrist', Sort.desc);
    });
  }

  QueryBuilder<Measures, Measures, QAfterSortBy> thenByNeck() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'neck', Sort.asc);
    });
  }

  QueryBuilder<Measures, Measures, QAfterSortBy> thenByNeckDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'neck', Sort.desc);
    });
  }

  QueryBuilder<Measures, Measures, QAfterSortBy> thenByRightArm() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'rightArm', Sort.asc);
    });
  }

  QueryBuilder<Measures, Measures, QAfterSortBy> thenByRightArmDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'rightArm', Sort.desc);
    });
  }

  QueryBuilder<Measures, Measures, QAfterSortBy> thenByRightCalf() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'rightCalf', Sort.asc);
    });
  }

  QueryBuilder<Measures, Measures, QAfterSortBy> thenByRightCalfDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'rightCalf', Sort.desc);
    });
  }

  QueryBuilder<Measures, Measures, QAfterSortBy> thenByRightForearm() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'rightForearm', Sort.asc);
    });
  }

  QueryBuilder<Measures, Measures, QAfterSortBy> thenByRightForearmDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'rightForearm', Sort.desc);
    });
  }

  QueryBuilder<Measures, Measures, QAfterSortBy> thenByRightThigh() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'rightThigh', Sort.asc);
    });
  }

  QueryBuilder<Measures, Measures, QAfterSortBy> thenByRightThighDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'rightThigh', Sort.desc);
    });
  }

  QueryBuilder<Measures, Measures, QAfterSortBy> thenByRightWrist() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'rightWrist', Sort.asc);
    });
  }

  QueryBuilder<Measures, Measures, QAfterSortBy> thenByRightWristDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'rightWrist', Sort.desc);
    });
  }

  QueryBuilder<Measures, Measures, QAfterSortBy> thenByShoulders() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'shoulders', Sort.asc);
    });
  }

  QueryBuilder<Measures, Measures, QAfterSortBy> thenByShouldersDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'shoulders', Sort.desc);
    });
  }

  QueryBuilder<Measures, Measures, QAfterSortBy> thenByWaist() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'waist', Sort.asc);
    });
  }

  QueryBuilder<Measures, Measures, QAfterSortBy> thenByWaistDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'waist', Sort.desc);
    });
  }

  QueryBuilder<Measures, Measures, QAfterSortBy> thenByWeight() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'weight', Sort.asc);
    });
  }

  QueryBuilder<Measures, Measures, QAfterSortBy> thenByWeightDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'weight', Sort.desc);
    });
  }
}

extension MeasuresQueryWhereDistinct
    on QueryBuilder<Measures, Measures, QDistinct> {
  QueryBuilder<Measures, Measures, QDistinct> distinctByChest() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'chest');
    });
  }

  QueryBuilder<Measures, Measures, QDistinct> distinctByDate() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'date');
    });
  }

  QueryBuilder<Measures, Measures, QDistinct> distinctByHips() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'hips');
    });
  }

  QueryBuilder<Measures, Measures, QDistinct> distinctByLeftArm() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'leftArm');
    });
  }

  QueryBuilder<Measures, Measures, QDistinct> distinctByLeftCalf() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'leftCalf');
    });
  }

  QueryBuilder<Measures, Measures, QDistinct> distinctByLeftForearm() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'leftForearm');
    });
  }

  QueryBuilder<Measures, Measures, QDistinct> distinctByLeftThigh() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'leftThigh');
    });
  }

  QueryBuilder<Measures, Measures, QDistinct> distinctByLeftWrist() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'leftWrist');
    });
  }

  QueryBuilder<Measures, Measures, QDistinct> distinctByNeck() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'neck');
    });
  }

  QueryBuilder<Measures, Measures, QDistinct> distinctByRightArm() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'rightArm');
    });
  }

  QueryBuilder<Measures, Measures, QDistinct> distinctByRightCalf() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'rightCalf');
    });
  }

  QueryBuilder<Measures, Measures, QDistinct> distinctByRightForearm() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'rightForearm');
    });
  }

  QueryBuilder<Measures, Measures, QDistinct> distinctByRightThigh() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'rightThigh');
    });
  }

  QueryBuilder<Measures, Measures, QDistinct> distinctByRightWrist() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'rightWrist');
    });
  }

  QueryBuilder<Measures, Measures, QDistinct> distinctByShoulders() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'shoulders');
    });
  }

  QueryBuilder<Measures, Measures, QDistinct> distinctByWaist() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'waist');
    });
  }

  QueryBuilder<Measures, Measures, QDistinct> distinctByWeight() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'weight');
    });
  }
}

extension MeasuresQueryProperty
    on QueryBuilder<Measures, Measures, QQueryProperty> {
  QueryBuilder<Measures, int, QQueryOperations> idProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'id');
    });
  }

  QueryBuilder<Measures, double?, QQueryOperations> chestProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'chest');
    });
  }

  QueryBuilder<Measures, DateTime, QQueryOperations> dateProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'date');
    });
  }

  QueryBuilder<Measures, double?, QQueryOperations> hipsProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'hips');
    });
  }

  QueryBuilder<Measures, double?, QQueryOperations> leftArmProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'leftArm');
    });
  }

  QueryBuilder<Measures, double?, QQueryOperations> leftCalfProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'leftCalf');
    });
  }

  QueryBuilder<Measures, double?, QQueryOperations> leftForearmProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'leftForearm');
    });
  }

  QueryBuilder<Measures, double?, QQueryOperations> leftThighProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'leftThigh');
    });
  }

  QueryBuilder<Measures, double?, QQueryOperations> leftWristProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'leftWrist');
    });
  }

  QueryBuilder<Measures, double?, QQueryOperations> neckProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'neck');
    });
  }

  QueryBuilder<Measures, double?, QQueryOperations> rightArmProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'rightArm');
    });
  }

  QueryBuilder<Measures, double?, QQueryOperations> rightCalfProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'rightCalf');
    });
  }

  QueryBuilder<Measures, double?, QQueryOperations> rightForearmProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'rightForearm');
    });
  }

  QueryBuilder<Measures, double?, QQueryOperations> rightThighProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'rightThigh');
    });
  }

  QueryBuilder<Measures, double?, QQueryOperations> rightWristProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'rightWrist');
    });
  }

  QueryBuilder<Measures, double?, QQueryOperations> shouldersProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'shoulders');
    });
  }

  QueryBuilder<Measures, double?, QQueryOperations> waistProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'waist');
    });
  }

  QueryBuilder<Measures, double?, QQueryOperations> weightProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'weight');
    });
  }
}
