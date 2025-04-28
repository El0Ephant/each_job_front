// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'search_settings.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$SearchSettings {
  SearchFields get searchFields => throw _privateConstructorUsedError;
  int get minSalary => throw _privateConstructorUsedError;
  bool get hourlyVacanciesEnabled => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $SearchSettingsCopyWith<SearchSettings> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SearchSettingsCopyWith<$Res> {
  factory $SearchSettingsCopyWith(
          SearchSettings value, $Res Function(SearchSettings) then) =
      _$SearchSettingsCopyWithImpl<$Res, SearchSettings>;
  @useResult
  $Res call(
      {SearchFields searchFields, int minSalary, bool hourlyVacanciesEnabled});
}

/// @nodoc
class _$SearchSettingsCopyWithImpl<$Res, $Val extends SearchSettings>
    implements $SearchSettingsCopyWith<$Res> {
  _$SearchSettingsCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? searchFields = null,
    Object? minSalary = null,
    Object? hourlyVacanciesEnabled = null,
  }) {
    return _then(_value.copyWith(
      searchFields: null == searchFields
          ? _value.searchFields
          : searchFields // ignore: cast_nullable_to_non_nullable
              as SearchFields,
      minSalary: null == minSalary
          ? _value.minSalary
          : minSalary // ignore: cast_nullable_to_non_nullable
              as int,
      hourlyVacanciesEnabled: null == hourlyVacanciesEnabled
          ? _value.hourlyVacanciesEnabled
          : hourlyVacanciesEnabled // ignore: cast_nullable_to_non_nullable
              as bool,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$SearchSettingsImplCopyWith<$Res>
    implements $SearchSettingsCopyWith<$Res> {
  factory _$$SearchSettingsImplCopyWith(_$SearchSettingsImpl value,
          $Res Function(_$SearchSettingsImpl) then) =
      __$$SearchSettingsImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {SearchFields searchFields, int minSalary, bool hourlyVacanciesEnabled});
}

/// @nodoc
class __$$SearchSettingsImplCopyWithImpl<$Res>
    extends _$SearchSettingsCopyWithImpl<$Res, _$SearchSettingsImpl>
    implements _$$SearchSettingsImplCopyWith<$Res> {
  __$$SearchSettingsImplCopyWithImpl(
      _$SearchSettingsImpl _value, $Res Function(_$SearchSettingsImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? searchFields = null,
    Object? minSalary = null,
    Object? hourlyVacanciesEnabled = null,
  }) {
    return _then(_$SearchSettingsImpl(
      searchFields: null == searchFields
          ? _value.searchFields
          : searchFields // ignore: cast_nullable_to_non_nullable
              as SearchFields,
      minSalary: null == minSalary
          ? _value.minSalary
          : minSalary // ignore: cast_nullable_to_non_nullable
              as int,
      hourlyVacanciesEnabled: null == hourlyVacanciesEnabled
          ? _value.hourlyVacanciesEnabled
          : hourlyVacanciesEnabled // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc

class _$SearchSettingsImpl extends _SearchSettings {
  const _$SearchSettingsImpl(
      {required this.searchFields,
      required this.minSalary,
      required this.hourlyVacanciesEnabled})
      : super._();

  @override
  final SearchFields searchFields;
  @override
  final int minSalary;
  @override
  final bool hourlyVacanciesEnabled;

  @override
  String toString() {
    return 'SearchSettings(searchFields: $searchFields, minSalary: $minSalary, hourlyVacanciesEnabled: $hourlyVacanciesEnabled)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SearchSettingsImpl &&
            (identical(other.searchFields, searchFields) ||
                other.searchFields == searchFields) &&
            (identical(other.minSalary, minSalary) ||
                other.minSalary == minSalary) &&
            (identical(other.hourlyVacanciesEnabled, hourlyVacanciesEnabled) ||
                other.hourlyVacanciesEnabled == hourlyVacanciesEnabled));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, searchFields, minSalary, hourlyVacanciesEnabled);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$SearchSettingsImplCopyWith<_$SearchSettingsImpl> get copyWith =>
      __$$SearchSettingsImplCopyWithImpl<_$SearchSettingsImpl>(
          this, _$identity);
}

abstract class _SearchSettings extends SearchSettings {
  const factory _SearchSettings(
      {required final SearchFields searchFields,
      required final int minSalary,
      required final bool hourlyVacanciesEnabled}) = _$SearchSettingsImpl;
  const _SearchSettings._() : super._();

  @override
  SearchFields get searchFields;
  @override
  int get minSalary;
  @override
  bool get hourlyVacanciesEnabled;
  @override
  @JsonKey(ignore: true)
  _$$SearchSettingsImplCopyWith<_$SearchSettingsImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
