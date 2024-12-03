// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'vacancy.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

Vacancy _$VacancyFromJson(Map<String, dynamic> json) {
  return _Vacancy.fromJson(json);
}

/// @nodoc
mixin _$Vacancy {
  String get id => throw _privateConstructorUsedError;
  String get name => throw _privateConstructorUsedError;
  @JsonKey(name: 'employer_name')
  String get employerName => throw _privateConstructorUsedError;
  @JsonKey(name: 'published_at')
  DateTime get publishedAt => throw _privateConstructorUsedError;
  @JsonKey(name: 'snippet_requirement')
  String? get snippetRequirement => throw _privateConstructorUsedError;
  @JsonKey(name: 'snippet_responsibility')
  String? get snippetResponsibility => throw _privateConstructorUsedError;
  @JsonKey(name: 'salary_from')
  double? get salaryFrom => throw _privateConstructorUsedError;
  @JsonKey(name: 'salary_to')
  double? get salaryTo => throw _privateConstructorUsedError;
  @JsonKey(name: 'salary_currency')
  String? get salaryCurrency => throw _privateConstructorUsedError;
  @JsonKey(name: 'salary_gross')
  bool? get salaryGross => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $VacancyCopyWith<Vacancy> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $VacancyCopyWith<$Res> {
  factory $VacancyCopyWith(Vacancy value, $Res Function(Vacancy) then) =
      _$VacancyCopyWithImpl<$Res, Vacancy>;
  @useResult
  $Res call(
      {String id,
      String name,
      @JsonKey(name: 'employer_name') String employerName,
      @JsonKey(name: 'published_at') DateTime publishedAt,
      @JsonKey(name: 'snippet_requirement') String? snippetRequirement,
      @JsonKey(name: 'snippet_responsibility') String? snippetResponsibility,
      @JsonKey(name: 'salary_from') double? salaryFrom,
      @JsonKey(name: 'salary_to') double? salaryTo,
      @JsonKey(name: 'salary_currency') String? salaryCurrency,
      @JsonKey(name: 'salary_gross') bool? salaryGross});
}

/// @nodoc
class _$VacancyCopyWithImpl<$Res, $Val extends Vacancy>
    implements $VacancyCopyWith<$Res> {
  _$VacancyCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? name = null,
    Object? employerName = null,
    Object? publishedAt = null,
    Object? snippetRequirement = freezed,
    Object? snippetResponsibility = freezed,
    Object? salaryFrom = freezed,
    Object? salaryTo = freezed,
    Object? salaryCurrency = freezed,
    Object? salaryGross = freezed,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      employerName: null == employerName
          ? _value.employerName
          : employerName // ignore: cast_nullable_to_non_nullable
              as String,
      publishedAt: null == publishedAt
          ? _value.publishedAt
          : publishedAt // ignore: cast_nullable_to_non_nullable
              as DateTime,
      snippetRequirement: freezed == snippetRequirement
          ? _value.snippetRequirement
          : snippetRequirement // ignore: cast_nullable_to_non_nullable
              as String?,
      snippetResponsibility: freezed == snippetResponsibility
          ? _value.snippetResponsibility
          : snippetResponsibility // ignore: cast_nullable_to_non_nullable
              as String?,
      salaryFrom: freezed == salaryFrom
          ? _value.salaryFrom
          : salaryFrom // ignore: cast_nullable_to_non_nullable
              as double?,
      salaryTo: freezed == salaryTo
          ? _value.salaryTo
          : salaryTo // ignore: cast_nullable_to_non_nullable
              as double?,
      salaryCurrency: freezed == salaryCurrency
          ? _value.salaryCurrency
          : salaryCurrency // ignore: cast_nullable_to_non_nullable
              as String?,
      salaryGross: freezed == salaryGross
          ? _value.salaryGross
          : salaryGross // ignore: cast_nullable_to_non_nullable
              as bool?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$VacancyImplCopyWith<$Res> implements $VacancyCopyWith<$Res> {
  factory _$$VacancyImplCopyWith(
          _$VacancyImpl value, $Res Function(_$VacancyImpl) then) =
      __$$VacancyImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String id,
      String name,
      @JsonKey(name: 'employer_name') String employerName,
      @JsonKey(name: 'published_at') DateTime publishedAt,
      @JsonKey(name: 'snippet_requirement') String? snippetRequirement,
      @JsonKey(name: 'snippet_responsibility') String? snippetResponsibility,
      @JsonKey(name: 'salary_from') double? salaryFrom,
      @JsonKey(name: 'salary_to') double? salaryTo,
      @JsonKey(name: 'salary_currency') String? salaryCurrency,
      @JsonKey(name: 'salary_gross') bool? salaryGross});
}

/// @nodoc
class __$$VacancyImplCopyWithImpl<$Res>
    extends _$VacancyCopyWithImpl<$Res, _$VacancyImpl>
    implements _$$VacancyImplCopyWith<$Res> {
  __$$VacancyImplCopyWithImpl(
      _$VacancyImpl _value, $Res Function(_$VacancyImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? name = null,
    Object? employerName = null,
    Object? publishedAt = null,
    Object? snippetRequirement = freezed,
    Object? snippetResponsibility = freezed,
    Object? salaryFrom = freezed,
    Object? salaryTo = freezed,
    Object? salaryCurrency = freezed,
    Object? salaryGross = freezed,
  }) {
    return _then(_$VacancyImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      employerName: null == employerName
          ? _value.employerName
          : employerName // ignore: cast_nullable_to_non_nullable
              as String,
      publishedAt: null == publishedAt
          ? _value.publishedAt
          : publishedAt // ignore: cast_nullable_to_non_nullable
              as DateTime,
      snippetRequirement: freezed == snippetRequirement
          ? _value.snippetRequirement
          : snippetRequirement // ignore: cast_nullable_to_non_nullable
              as String?,
      snippetResponsibility: freezed == snippetResponsibility
          ? _value.snippetResponsibility
          : snippetResponsibility // ignore: cast_nullable_to_non_nullable
              as String?,
      salaryFrom: freezed == salaryFrom
          ? _value.salaryFrom
          : salaryFrom // ignore: cast_nullable_to_non_nullable
              as double?,
      salaryTo: freezed == salaryTo
          ? _value.salaryTo
          : salaryTo // ignore: cast_nullable_to_non_nullable
              as double?,
      salaryCurrency: freezed == salaryCurrency
          ? _value.salaryCurrency
          : salaryCurrency // ignore: cast_nullable_to_non_nullable
              as String?,
      salaryGross: freezed == salaryGross
          ? _value.salaryGross
          : salaryGross // ignore: cast_nullable_to_non_nullable
              as bool?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$VacancyImpl implements _Vacancy {
  const _$VacancyImpl(
      {required this.id,
      required this.name,
      @JsonKey(name: 'employer_name') required this.employerName,
      @JsonKey(name: 'published_at') required this.publishedAt,
      @JsonKey(name: 'snippet_requirement') this.snippetRequirement,
      @JsonKey(name: 'snippet_responsibility') this.snippetResponsibility,
      @JsonKey(name: 'salary_from') this.salaryFrom,
      @JsonKey(name: 'salary_to') this.salaryTo,
      @JsonKey(name: 'salary_currency') this.salaryCurrency,
      @JsonKey(name: 'salary_gross') this.salaryGross});

  factory _$VacancyImpl.fromJson(Map<String, dynamic> json) =>
      _$$VacancyImplFromJson(json);

  @override
  final String id;
  @override
  final String name;
  @override
  @JsonKey(name: 'employer_name')
  final String employerName;
  @override
  @JsonKey(name: 'published_at')
  final DateTime publishedAt;
  @override
  @JsonKey(name: 'snippet_requirement')
  final String? snippetRequirement;
  @override
  @JsonKey(name: 'snippet_responsibility')
  final String? snippetResponsibility;
  @override
  @JsonKey(name: 'salary_from')
  final double? salaryFrom;
  @override
  @JsonKey(name: 'salary_to')
  final double? salaryTo;
  @override
  @JsonKey(name: 'salary_currency')
  final String? salaryCurrency;
  @override
  @JsonKey(name: 'salary_gross')
  final bool? salaryGross;

  @override
  String toString() {
    return 'Vacancy(id: $id, name: $name, employerName: $employerName, publishedAt: $publishedAt, snippetRequirement: $snippetRequirement, snippetResponsibility: $snippetResponsibility, salaryFrom: $salaryFrom, salaryTo: $salaryTo, salaryCurrency: $salaryCurrency, salaryGross: $salaryGross)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$VacancyImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.employerName, employerName) ||
                other.employerName == employerName) &&
            (identical(other.publishedAt, publishedAt) ||
                other.publishedAt == publishedAt) &&
            (identical(other.snippetRequirement, snippetRequirement) ||
                other.snippetRequirement == snippetRequirement) &&
            (identical(other.snippetResponsibility, snippetResponsibility) ||
                other.snippetResponsibility == snippetResponsibility) &&
            (identical(other.salaryFrom, salaryFrom) ||
                other.salaryFrom == salaryFrom) &&
            (identical(other.salaryTo, salaryTo) ||
                other.salaryTo == salaryTo) &&
            (identical(other.salaryCurrency, salaryCurrency) ||
                other.salaryCurrency == salaryCurrency) &&
            (identical(other.salaryGross, salaryGross) ||
                other.salaryGross == salaryGross));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      id,
      name,
      employerName,
      publishedAt,
      snippetRequirement,
      snippetResponsibility,
      salaryFrom,
      salaryTo,
      salaryCurrency,
      salaryGross);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$VacancyImplCopyWith<_$VacancyImpl> get copyWith =>
      __$$VacancyImplCopyWithImpl<_$VacancyImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$VacancyImplToJson(
      this,
    );
  }
}

abstract class _Vacancy implements Vacancy {
  const factory _Vacancy(
      {required final String id,
      required final String name,
      @JsonKey(name: 'employer_name') required final String employerName,
      @JsonKey(name: 'published_at') required final DateTime publishedAt,
      @JsonKey(name: 'snippet_requirement') final String? snippetRequirement,
      @JsonKey(name: 'snippet_responsibility')
      final String? snippetResponsibility,
      @JsonKey(name: 'salary_from') final double? salaryFrom,
      @JsonKey(name: 'salary_to') final double? salaryTo,
      @JsonKey(name: 'salary_currency') final String? salaryCurrency,
      @JsonKey(name: 'salary_gross') final bool? salaryGross}) = _$VacancyImpl;

  factory _Vacancy.fromJson(Map<String, dynamic> json) = _$VacancyImpl.fromJson;

  @override
  String get id;
  @override
  String get name;
  @override
  @JsonKey(name: 'employer_name')
  String get employerName;
  @override
  @JsonKey(name: 'published_at')
  DateTime get publishedAt;
  @override
  @JsonKey(name: 'snippet_requirement')
  String? get snippetRequirement;
  @override
  @JsonKey(name: 'snippet_responsibility')
  String? get snippetResponsibility;
  @override
  @JsonKey(name: 'salary_from')
  double? get salaryFrom;
  @override
  @JsonKey(name: 'salary_to')
  double? get salaryTo;
  @override
  @JsonKey(name: 'salary_currency')
  String? get salaryCurrency;
  @override
  @JsonKey(name: 'salary_gross')
  bool? get salaryGross;
  @override
  @JsonKey(ignore: true)
  _$$VacancyImplCopyWith<_$VacancyImpl> get copyWith =>
      throw _privateConstructorUsedError;
}