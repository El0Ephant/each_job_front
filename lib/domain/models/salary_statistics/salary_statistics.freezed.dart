// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'salary_statistics.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

SalaryStatistics _$SalaryStatisticsFromJson(Map<String, dynamic> json) {
  return _SalaryStatistics.fromJson(json);
}

/// @nodoc
mixin _$SalaryStatistics {
  num get bottomSalary => throw _privateConstructorUsedError;
  num get upperSalary => throw _privateConstructorUsedError;
  num get medianSalary => throw _privateConstructorUsedError;
  num get oftenSalariesBottom => throw _privateConstructorUsedError;
  num get oftenSalariesUpper => throw _privateConstructorUsedError;
  List<({DateTime date, num value})> get chartData =>
      throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $SalaryStatisticsCopyWith<SalaryStatistics> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SalaryStatisticsCopyWith<$Res> {
  factory $SalaryStatisticsCopyWith(
          SalaryStatistics value, $Res Function(SalaryStatistics) then) =
      _$SalaryStatisticsCopyWithImpl<$Res, SalaryStatistics>;
  @useResult
  $Res call(
      {num bottomSalary,
      num upperSalary,
      num medianSalary,
      num oftenSalariesBottom,
      num oftenSalariesUpper,
      List<({DateTime date, num value})> chartData});
}

/// @nodoc
class _$SalaryStatisticsCopyWithImpl<$Res, $Val extends SalaryStatistics>
    implements $SalaryStatisticsCopyWith<$Res> {
  _$SalaryStatisticsCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? bottomSalary = null,
    Object? upperSalary = null,
    Object? medianSalary = null,
    Object? oftenSalariesBottom = null,
    Object? oftenSalariesUpper = null,
    Object? chartData = null,
  }) {
    return _then(_value.copyWith(
      bottomSalary: null == bottomSalary
          ? _value.bottomSalary
          : bottomSalary // ignore: cast_nullable_to_non_nullable
              as num,
      upperSalary: null == upperSalary
          ? _value.upperSalary
          : upperSalary // ignore: cast_nullable_to_non_nullable
              as num,
      medianSalary: null == medianSalary
          ? _value.medianSalary
          : medianSalary // ignore: cast_nullable_to_non_nullable
              as num,
      oftenSalariesBottom: null == oftenSalariesBottom
          ? _value.oftenSalariesBottom
          : oftenSalariesBottom // ignore: cast_nullable_to_non_nullable
              as num,
      oftenSalariesUpper: null == oftenSalariesUpper
          ? _value.oftenSalariesUpper
          : oftenSalariesUpper // ignore: cast_nullable_to_non_nullable
              as num,
      chartData: null == chartData
          ? _value.chartData
          : chartData // ignore: cast_nullable_to_non_nullable
              as List<({DateTime date, num value})>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$SalaryStatisticsImplCopyWith<$Res>
    implements $SalaryStatisticsCopyWith<$Res> {
  factory _$$SalaryStatisticsImplCopyWith(_$SalaryStatisticsImpl value,
          $Res Function(_$SalaryStatisticsImpl) then) =
      __$$SalaryStatisticsImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {num bottomSalary,
      num upperSalary,
      num medianSalary,
      num oftenSalariesBottom,
      num oftenSalariesUpper,
      List<({DateTime date, num value})> chartData});
}

/// @nodoc
class __$$SalaryStatisticsImplCopyWithImpl<$Res>
    extends _$SalaryStatisticsCopyWithImpl<$Res, _$SalaryStatisticsImpl>
    implements _$$SalaryStatisticsImplCopyWith<$Res> {
  __$$SalaryStatisticsImplCopyWithImpl(_$SalaryStatisticsImpl _value,
      $Res Function(_$SalaryStatisticsImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? bottomSalary = null,
    Object? upperSalary = null,
    Object? medianSalary = null,
    Object? oftenSalariesBottom = null,
    Object? oftenSalariesUpper = null,
    Object? chartData = null,
  }) {
    return _then(_$SalaryStatisticsImpl(
      bottomSalary: null == bottomSalary
          ? _value.bottomSalary
          : bottomSalary // ignore: cast_nullable_to_non_nullable
              as num,
      upperSalary: null == upperSalary
          ? _value.upperSalary
          : upperSalary // ignore: cast_nullable_to_non_nullable
              as num,
      medianSalary: null == medianSalary
          ? _value.medianSalary
          : medianSalary // ignore: cast_nullable_to_non_nullable
              as num,
      oftenSalariesBottom: null == oftenSalariesBottom
          ? _value.oftenSalariesBottom
          : oftenSalariesBottom // ignore: cast_nullable_to_non_nullable
              as num,
      oftenSalariesUpper: null == oftenSalariesUpper
          ? _value.oftenSalariesUpper
          : oftenSalariesUpper // ignore: cast_nullable_to_non_nullable
              as num,
      chartData: null == chartData
          ? _value._chartData
          : chartData // ignore: cast_nullable_to_non_nullable
              as List<({DateTime date, num value})>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$SalaryStatisticsImpl implements _SalaryStatistics {
  const _$SalaryStatisticsImpl(
      {required this.bottomSalary,
      required this.upperSalary,
      required this.medianSalary,
      required this.oftenSalariesBottom,
      required this.oftenSalariesUpper,
      required final List<({DateTime date, num value})> chartData})
      : _chartData = chartData;

  factory _$SalaryStatisticsImpl.fromJson(Map<String, dynamic> json) =>
      _$$SalaryStatisticsImplFromJson(json);

  @override
  final num bottomSalary;
  @override
  final num upperSalary;
  @override
  final num medianSalary;
  @override
  final num oftenSalariesBottom;
  @override
  final num oftenSalariesUpper;
  final List<({DateTime date, num value})> _chartData;
  @override
  List<({DateTime date, num value})> get chartData {
    if (_chartData is EqualUnmodifiableListView) return _chartData;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_chartData);
  }

  @override
  String toString() {
    return 'SalaryStatistics(bottomSalary: $bottomSalary, upperSalary: $upperSalary, medianSalary: $medianSalary, oftenSalariesBottom: $oftenSalariesBottom, oftenSalariesUpper: $oftenSalariesUpper, chartData: $chartData)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SalaryStatisticsImpl &&
            (identical(other.bottomSalary, bottomSalary) ||
                other.bottomSalary == bottomSalary) &&
            (identical(other.upperSalary, upperSalary) ||
                other.upperSalary == upperSalary) &&
            (identical(other.medianSalary, medianSalary) ||
                other.medianSalary == medianSalary) &&
            (identical(other.oftenSalariesBottom, oftenSalariesBottom) ||
                other.oftenSalariesBottom == oftenSalariesBottom) &&
            (identical(other.oftenSalariesUpper, oftenSalariesUpper) ||
                other.oftenSalariesUpper == oftenSalariesUpper) &&
            const DeepCollectionEquality()
                .equals(other._chartData, _chartData));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      bottomSalary,
      upperSalary,
      medianSalary,
      oftenSalariesBottom,
      oftenSalariesUpper,
      const DeepCollectionEquality().hash(_chartData));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$SalaryStatisticsImplCopyWith<_$SalaryStatisticsImpl> get copyWith =>
      __$$SalaryStatisticsImplCopyWithImpl<_$SalaryStatisticsImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$SalaryStatisticsImplToJson(
      this,
    );
  }
}

abstract class _SalaryStatistics implements SalaryStatistics {
  const factory _SalaryStatistics(
          {required final num bottomSalary,
          required final num upperSalary,
          required final num medianSalary,
          required final num oftenSalariesBottom,
          required final num oftenSalariesUpper,
          required final List<({DateTime date, num value})> chartData}) =
      _$SalaryStatisticsImpl;

  factory _SalaryStatistics.fromJson(Map<String, dynamic> json) =
      _$SalaryStatisticsImpl.fromJson;

  @override
  num get bottomSalary;
  @override
  num get upperSalary;
  @override
  num get medianSalary;
  @override
  num get oftenSalariesBottom;
  @override
  num get oftenSalariesUpper;
  @override
  List<({DateTime date, num value})> get chartData;
  @override
  @JsonKey(ignore: true)
  _$$SalaryStatisticsImplCopyWith<_$SalaryStatisticsImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
