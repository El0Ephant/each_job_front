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
  @JsonKey(name: 'nVacancies')
  num? get vacanciesNum => throw _privateConstructorUsedError;
  @JsonKey(name: 'min')
  num? get bottomSalary => throw _privateConstructorUsedError;
  @JsonKey(name: 'max')
  num? get upperSalary => throw _privateConstructorUsedError;
  @JsonKey(name: 'median')
  num? get medianSalary => throw _privateConstructorUsedError;
  @JsonKey(name: 'q1')
  num? get oftenSalariesBottom => throw _privateConstructorUsedError;
  @JsonKey(name: 'q3')
  num? get oftenSalariesUpper => throw _privateConstructorUsedError;
  @JsonKey(
      name: 'monthlyMedians', fromJson: SalaryStatistics._chartDataFromJson)
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
      {@JsonKey(name: 'nVacancies') num? vacanciesNum,
      @JsonKey(name: 'min') num? bottomSalary,
      @JsonKey(name: 'max') num? upperSalary,
      @JsonKey(name: 'median') num? medianSalary,
      @JsonKey(name: 'q1') num? oftenSalariesBottom,
      @JsonKey(name: 'q3') num? oftenSalariesUpper,
      @JsonKey(
          name: 'monthlyMedians', fromJson: SalaryStatistics._chartDataFromJson)
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
    Object? vacanciesNum = freezed,
    Object? bottomSalary = freezed,
    Object? upperSalary = freezed,
    Object? medianSalary = freezed,
    Object? oftenSalariesBottom = freezed,
    Object? oftenSalariesUpper = freezed,
    Object? chartData = null,
  }) {
    return _then(_value.copyWith(
      vacanciesNum: freezed == vacanciesNum
          ? _value.vacanciesNum
          : vacanciesNum // ignore: cast_nullable_to_non_nullable
              as num?,
      bottomSalary: freezed == bottomSalary
          ? _value.bottomSalary
          : bottomSalary // ignore: cast_nullable_to_non_nullable
              as num?,
      upperSalary: freezed == upperSalary
          ? _value.upperSalary
          : upperSalary // ignore: cast_nullable_to_non_nullable
              as num?,
      medianSalary: freezed == medianSalary
          ? _value.medianSalary
          : medianSalary // ignore: cast_nullable_to_non_nullable
              as num?,
      oftenSalariesBottom: freezed == oftenSalariesBottom
          ? _value.oftenSalariesBottom
          : oftenSalariesBottom // ignore: cast_nullable_to_non_nullable
              as num?,
      oftenSalariesUpper: freezed == oftenSalariesUpper
          ? _value.oftenSalariesUpper
          : oftenSalariesUpper // ignore: cast_nullable_to_non_nullable
              as num?,
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
      {@JsonKey(name: 'nVacancies') num? vacanciesNum,
      @JsonKey(name: 'min') num? bottomSalary,
      @JsonKey(name: 'max') num? upperSalary,
      @JsonKey(name: 'median') num? medianSalary,
      @JsonKey(name: 'q1') num? oftenSalariesBottom,
      @JsonKey(name: 'q3') num? oftenSalariesUpper,
      @JsonKey(
          name: 'monthlyMedians', fromJson: SalaryStatistics._chartDataFromJson)
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
    Object? vacanciesNum = freezed,
    Object? bottomSalary = freezed,
    Object? upperSalary = freezed,
    Object? medianSalary = freezed,
    Object? oftenSalariesBottom = freezed,
    Object? oftenSalariesUpper = freezed,
    Object? chartData = null,
  }) {
    return _then(_$SalaryStatisticsImpl(
      vacanciesNum: freezed == vacanciesNum
          ? _value.vacanciesNum
          : vacanciesNum // ignore: cast_nullable_to_non_nullable
              as num?,
      bottomSalary: freezed == bottomSalary
          ? _value.bottomSalary
          : bottomSalary // ignore: cast_nullable_to_non_nullable
              as num?,
      upperSalary: freezed == upperSalary
          ? _value.upperSalary
          : upperSalary // ignore: cast_nullable_to_non_nullable
              as num?,
      medianSalary: freezed == medianSalary
          ? _value.medianSalary
          : medianSalary // ignore: cast_nullable_to_non_nullable
              as num?,
      oftenSalariesBottom: freezed == oftenSalariesBottom
          ? _value.oftenSalariesBottom
          : oftenSalariesBottom // ignore: cast_nullable_to_non_nullable
              as num?,
      oftenSalariesUpper: freezed == oftenSalariesUpper
          ? _value.oftenSalariesUpper
          : oftenSalariesUpper // ignore: cast_nullable_to_non_nullable
              as num?,
      chartData: null == chartData
          ? _value._chartData
          : chartData // ignore: cast_nullable_to_non_nullable
              as List<({DateTime date, num value})>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$SalaryStatisticsImpl extends _SalaryStatistics {
  const _$SalaryStatisticsImpl(
      {@JsonKey(name: 'nVacancies') this.vacanciesNum,
      @JsonKey(name: 'min') this.bottomSalary,
      @JsonKey(name: 'max') this.upperSalary,
      @JsonKey(name: 'median') this.medianSalary,
      @JsonKey(name: 'q1') this.oftenSalariesBottom,
      @JsonKey(name: 'q3') this.oftenSalariesUpper,
      @JsonKey(
          name: 'monthlyMedians', fromJson: SalaryStatistics._chartDataFromJson)
      required final List<({DateTime date, num value})> chartData})
      : _chartData = chartData,
        super._();

  factory _$SalaryStatisticsImpl.fromJson(Map<String, dynamic> json) =>
      _$$SalaryStatisticsImplFromJson(json);

  @override
  @JsonKey(name: 'nVacancies')
  final num? vacanciesNum;
  @override
  @JsonKey(name: 'min')
  final num? bottomSalary;
  @override
  @JsonKey(name: 'max')
  final num? upperSalary;
  @override
  @JsonKey(name: 'median')
  final num? medianSalary;
  @override
  @JsonKey(name: 'q1')
  final num? oftenSalariesBottom;
  @override
  @JsonKey(name: 'q3')
  final num? oftenSalariesUpper;
  final List<({DateTime date, num value})> _chartData;
  @override
  @JsonKey(
      name: 'monthlyMedians', fromJson: SalaryStatistics._chartDataFromJson)
  List<({DateTime date, num value})> get chartData {
    if (_chartData is EqualUnmodifiableListView) return _chartData;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_chartData);
  }

  @override
  String toString() {
    return 'SalaryStatistics(vacanciesNum: $vacanciesNum, bottomSalary: $bottomSalary, upperSalary: $upperSalary, medianSalary: $medianSalary, oftenSalariesBottom: $oftenSalariesBottom, oftenSalariesUpper: $oftenSalariesUpper, chartData: $chartData)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SalaryStatisticsImpl &&
            (identical(other.vacanciesNum, vacanciesNum) ||
                other.vacanciesNum == vacanciesNum) &&
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
      vacanciesNum,
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

abstract class _SalaryStatistics extends SalaryStatistics {
  const factory _SalaryStatistics(
          {@JsonKey(name: 'nVacancies') final num? vacanciesNum,
          @JsonKey(name: 'min') final num? bottomSalary,
          @JsonKey(name: 'max') final num? upperSalary,
          @JsonKey(name: 'median') final num? medianSalary,
          @JsonKey(name: 'q1') final num? oftenSalariesBottom,
          @JsonKey(name: 'q3') final num? oftenSalariesUpper,
          @JsonKey(
              name: 'monthlyMedians',
              fromJson: SalaryStatistics._chartDataFromJson)
          required final List<({DateTime date, num value})> chartData}) =
      _$SalaryStatisticsImpl;
  const _SalaryStatistics._() : super._();

  factory _SalaryStatistics.fromJson(Map<String, dynamic> json) =
      _$SalaryStatisticsImpl.fromJson;

  @override
  @JsonKey(name: 'nVacancies')
  num? get vacanciesNum;
  @override
  @JsonKey(name: 'min')
  num? get bottomSalary;
  @override
  @JsonKey(name: 'max')
  num? get upperSalary;
  @override
  @JsonKey(name: 'median')
  num? get medianSalary;
  @override
  @JsonKey(name: 'q1')
  num? get oftenSalariesBottom;
  @override
  @JsonKey(name: 'q3')
  num? get oftenSalariesUpper;
  @override
  @JsonKey(
      name: 'monthlyMedians', fromJson: SalaryStatistics._chartDataFromJson)
  List<({DateTime date, num value})> get chartData;
  @override
  @JsonKey(ignore: true)
  _$$SalaryStatisticsImplCopyWith<_$SalaryStatisticsImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
