// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'table_data.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$TableData {
  List<Area> get areas => throw _privateConstructorUsedError;
  List<Profession> get professions => throw _privateConstructorUsedError;
  List<Grade> get grades => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $TableDataCopyWith<TableData> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TableDataCopyWith<$Res> {
  factory $TableDataCopyWith(TableData value, $Res Function(TableData) then) =
      _$TableDataCopyWithImpl<$Res, TableData>;
  @useResult
  $Res call(
      {List<Area> areas, List<Profession> professions, List<Grade> grades});
}

/// @nodoc
class _$TableDataCopyWithImpl<$Res, $Val extends TableData>
    implements $TableDataCopyWith<$Res> {
  _$TableDataCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? areas = null,
    Object? professions = null,
    Object? grades = null,
  }) {
    return _then(_value.copyWith(
      areas: null == areas
          ? _value.areas
          : areas // ignore: cast_nullable_to_non_nullable
              as List<Area>,
      professions: null == professions
          ? _value.professions
          : professions // ignore: cast_nullable_to_non_nullable
              as List<Profession>,
      grades: null == grades
          ? _value.grades
          : grades // ignore: cast_nullable_to_non_nullable
              as List<Grade>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$TableDataImplCopyWith<$Res>
    implements $TableDataCopyWith<$Res> {
  factory _$$TableDataImplCopyWith(
          _$TableDataImpl value, $Res Function(_$TableDataImpl) then) =
      __$$TableDataImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {List<Area> areas, List<Profession> professions, List<Grade> grades});
}

/// @nodoc
class __$$TableDataImplCopyWithImpl<$Res>
    extends _$TableDataCopyWithImpl<$Res, _$TableDataImpl>
    implements _$$TableDataImplCopyWith<$Res> {
  __$$TableDataImplCopyWithImpl(
      _$TableDataImpl _value, $Res Function(_$TableDataImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? areas = null,
    Object? professions = null,
    Object? grades = null,
  }) {
    return _then(_$TableDataImpl(
      areas: null == areas
          ? _value._areas
          : areas // ignore: cast_nullable_to_non_nullable
              as List<Area>,
      professions: null == professions
          ? _value._professions
          : professions // ignore: cast_nullable_to_non_nullable
              as List<Profession>,
      grades: null == grades
          ? _value._grades
          : grades // ignore: cast_nullable_to_non_nullable
              as List<Grade>,
    ));
  }
}

/// @nodoc

class _$TableDataImpl implements _TableData {
  const _$TableDataImpl(
      {required final List<Area> areas,
      required final List<Profession> professions,
      required final List<Grade> grades})
      : _areas = areas,
        _professions = professions,
        _grades = grades;

  final List<Area> _areas;
  @override
  List<Area> get areas {
    if (_areas is EqualUnmodifiableListView) return _areas;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_areas);
  }

  final List<Profession> _professions;
  @override
  List<Profession> get professions {
    if (_professions is EqualUnmodifiableListView) return _professions;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_professions);
  }

  final List<Grade> _grades;
  @override
  List<Grade> get grades {
    if (_grades is EqualUnmodifiableListView) return _grades;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_grades);
  }

  @override
  String toString() {
    return 'TableData(areas: $areas, professions: $professions, grades: $grades)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$TableDataImpl &&
            const DeepCollectionEquality().equals(other._areas, _areas) &&
            const DeepCollectionEquality()
                .equals(other._professions, _professions) &&
            const DeepCollectionEquality().equals(other._grades, _grades));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(_areas),
      const DeepCollectionEquality().hash(_professions),
      const DeepCollectionEquality().hash(_grades));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$TableDataImplCopyWith<_$TableDataImpl> get copyWith =>
      __$$TableDataImplCopyWithImpl<_$TableDataImpl>(this, _$identity);
}

abstract class _TableData implements TableData {
  const factory _TableData(
      {required final List<Area> areas,
      required final List<Profession> professions,
      required final List<Grade> grades}) = _$TableDataImpl;

  @override
  List<Area> get areas;
  @override
  List<Profession> get professions;
  @override
  List<Grade> get grades;
  @override
  @JsonKey(ignore: true)
  _$$TableDataImplCopyWith<_$TableDataImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
