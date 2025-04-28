// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'job_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$JobEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(Area? area) updateArea,
    required TResult Function(Profession? profession) updateProfession,
    required TResult Function(Grade? grade) updateGrade,
    required TResult Function(ExperienceOption? experienceOption)
        updateExperienceOption,
    required TResult Function(({DateTime end, DateTime start})? period)
        updatePeriod,
    required TResult Function(SearchSettings searchSettings)
        updateSearchSettings,
    required TResult Function() search,
    required TResult Function() fetchPage,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(Area? area)? updateArea,
    TResult? Function(Profession? profession)? updateProfession,
    TResult? Function(Grade? grade)? updateGrade,
    TResult? Function(ExperienceOption? experienceOption)?
        updateExperienceOption,
    TResult? Function(({DateTime end, DateTime start})? period)? updatePeriod,
    TResult? Function(SearchSettings searchSettings)? updateSearchSettings,
    TResult? Function()? search,
    TResult? Function()? fetchPage,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(Area? area)? updateArea,
    TResult Function(Profession? profession)? updateProfession,
    TResult Function(Grade? grade)? updateGrade,
    TResult Function(ExperienceOption? experienceOption)?
        updateExperienceOption,
    TResult Function(({DateTime end, DateTime start})? period)? updatePeriod,
    TResult Function(SearchSettings searchSettings)? updateSearchSettings,
    TResult Function()? search,
    TResult Function()? fetchPage,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_UpdateArea value) updateArea,
    required TResult Function(_UpdateProfession value) updateProfession,
    required TResult Function(_UpdateGrade value) updateGrade,
    required TResult Function(_UpdateExperienceOption value)
        updateExperienceOption,
    required TResult Function(_UpdatePeriod value) updatePeriod,
    required TResult Function(_UpdateSearchSettings value) updateSearchSettings,
    required TResult Function(_Search value) search,
    required TResult Function(_FetchPage value) fetchPage,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_UpdateArea value)? updateArea,
    TResult? Function(_UpdateProfession value)? updateProfession,
    TResult? Function(_UpdateGrade value)? updateGrade,
    TResult? Function(_UpdateExperienceOption value)? updateExperienceOption,
    TResult? Function(_UpdatePeriod value)? updatePeriod,
    TResult? Function(_UpdateSearchSettings value)? updateSearchSettings,
    TResult? Function(_Search value)? search,
    TResult? Function(_FetchPage value)? fetchPage,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_UpdateArea value)? updateArea,
    TResult Function(_UpdateProfession value)? updateProfession,
    TResult Function(_UpdateGrade value)? updateGrade,
    TResult Function(_UpdateExperienceOption value)? updateExperienceOption,
    TResult Function(_UpdatePeriod value)? updatePeriod,
    TResult Function(_UpdateSearchSettings value)? updateSearchSettings,
    TResult Function(_Search value)? search,
    TResult Function(_FetchPage value)? fetchPage,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $JobEventCopyWith<$Res> {
  factory $JobEventCopyWith(JobEvent value, $Res Function(JobEvent) then) =
      _$JobEventCopyWithImpl<$Res, JobEvent>;
}

/// @nodoc
class _$JobEventCopyWithImpl<$Res, $Val extends JobEvent>
    implements $JobEventCopyWith<$Res> {
  _$JobEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$UpdateAreaImplCopyWith<$Res> {
  factory _$$UpdateAreaImplCopyWith(
          _$UpdateAreaImpl value, $Res Function(_$UpdateAreaImpl) then) =
      __$$UpdateAreaImplCopyWithImpl<$Res>;
  @useResult
  $Res call({Area? area});

  $AreaCopyWith<$Res>? get area;
}

/// @nodoc
class __$$UpdateAreaImplCopyWithImpl<$Res>
    extends _$JobEventCopyWithImpl<$Res, _$UpdateAreaImpl>
    implements _$$UpdateAreaImplCopyWith<$Res> {
  __$$UpdateAreaImplCopyWithImpl(
      _$UpdateAreaImpl _value, $Res Function(_$UpdateAreaImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? area = freezed,
  }) {
    return _then(_$UpdateAreaImpl(
      area: freezed == area
          ? _value.area
          : area // ignore: cast_nullable_to_non_nullable
              as Area?,
    ));
  }

  @override
  @pragma('vm:prefer-inline')
  $AreaCopyWith<$Res>? get area {
    if (_value.area == null) {
      return null;
    }

    return $AreaCopyWith<$Res>(_value.area!, (value) {
      return _then(_value.copyWith(area: value));
    });
  }
}

/// @nodoc

class _$UpdateAreaImpl implements _UpdateArea {
  const _$UpdateAreaImpl({this.area});

  @override
  final Area? area;

  @override
  String toString() {
    return 'JobEvent.updateArea(area: $area)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$UpdateAreaImpl &&
            (identical(other.area, area) || other.area == area));
  }

  @override
  int get hashCode => Object.hash(runtimeType, area);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$UpdateAreaImplCopyWith<_$UpdateAreaImpl> get copyWith =>
      __$$UpdateAreaImplCopyWithImpl<_$UpdateAreaImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(Area? area) updateArea,
    required TResult Function(Profession? profession) updateProfession,
    required TResult Function(Grade? grade) updateGrade,
    required TResult Function(ExperienceOption? experienceOption)
        updateExperienceOption,
    required TResult Function(({DateTime end, DateTime start})? period)
        updatePeriod,
    required TResult Function(SearchSettings searchSettings)
        updateSearchSettings,
    required TResult Function() search,
    required TResult Function() fetchPage,
  }) {
    return updateArea(area);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(Area? area)? updateArea,
    TResult? Function(Profession? profession)? updateProfession,
    TResult? Function(Grade? grade)? updateGrade,
    TResult? Function(ExperienceOption? experienceOption)?
        updateExperienceOption,
    TResult? Function(({DateTime end, DateTime start})? period)? updatePeriod,
    TResult? Function(SearchSettings searchSettings)? updateSearchSettings,
    TResult? Function()? search,
    TResult? Function()? fetchPage,
  }) {
    return updateArea?.call(area);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(Area? area)? updateArea,
    TResult Function(Profession? profession)? updateProfession,
    TResult Function(Grade? grade)? updateGrade,
    TResult Function(ExperienceOption? experienceOption)?
        updateExperienceOption,
    TResult Function(({DateTime end, DateTime start})? period)? updatePeriod,
    TResult Function(SearchSettings searchSettings)? updateSearchSettings,
    TResult Function()? search,
    TResult Function()? fetchPage,
    required TResult orElse(),
  }) {
    if (updateArea != null) {
      return updateArea(area);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_UpdateArea value) updateArea,
    required TResult Function(_UpdateProfession value) updateProfession,
    required TResult Function(_UpdateGrade value) updateGrade,
    required TResult Function(_UpdateExperienceOption value)
        updateExperienceOption,
    required TResult Function(_UpdatePeriod value) updatePeriod,
    required TResult Function(_UpdateSearchSettings value) updateSearchSettings,
    required TResult Function(_Search value) search,
    required TResult Function(_FetchPage value) fetchPage,
  }) {
    return updateArea(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_UpdateArea value)? updateArea,
    TResult? Function(_UpdateProfession value)? updateProfession,
    TResult? Function(_UpdateGrade value)? updateGrade,
    TResult? Function(_UpdateExperienceOption value)? updateExperienceOption,
    TResult? Function(_UpdatePeriod value)? updatePeriod,
    TResult? Function(_UpdateSearchSettings value)? updateSearchSettings,
    TResult? Function(_Search value)? search,
    TResult? Function(_FetchPage value)? fetchPage,
  }) {
    return updateArea?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_UpdateArea value)? updateArea,
    TResult Function(_UpdateProfession value)? updateProfession,
    TResult Function(_UpdateGrade value)? updateGrade,
    TResult Function(_UpdateExperienceOption value)? updateExperienceOption,
    TResult Function(_UpdatePeriod value)? updatePeriod,
    TResult Function(_UpdateSearchSettings value)? updateSearchSettings,
    TResult Function(_Search value)? search,
    TResult Function(_FetchPage value)? fetchPage,
    required TResult orElse(),
  }) {
    if (updateArea != null) {
      return updateArea(this);
    }
    return orElse();
  }
}

abstract class _UpdateArea implements JobEvent {
  const factory _UpdateArea({final Area? area}) = _$UpdateAreaImpl;

  Area? get area;
  @JsonKey(ignore: true)
  _$$UpdateAreaImplCopyWith<_$UpdateAreaImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$UpdateProfessionImplCopyWith<$Res> {
  factory _$$UpdateProfessionImplCopyWith(_$UpdateProfessionImpl value,
          $Res Function(_$UpdateProfessionImpl) then) =
      __$$UpdateProfessionImplCopyWithImpl<$Res>;
  @useResult
  $Res call({Profession? profession});

  $ProfessionCopyWith<$Res>? get profession;
}

/// @nodoc
class __$$UpdateProfessionImplCopyWithImpl<$Res>
    extends _$JobEventCopyWithImpl<$Res, _$UpdateProfessionImpl>
    implements _$$UpdateProfessionImplCopyWith<$Res> {
  __$$UpdateProfessionImplCopyWithImpl(_$UpdateProfessionImpl _value,
      $Res Function(_$UpdateProfessionImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? profession = freezed,
  }) {
    return _then(_$UpdateProfessionImpl(
      profession: freezed == profession
          ? _value.profession
          : profession // ignore: cast_nullable_to_non_nullable
              as Profession?,
    ));
  }

  @override
  @pragma('vm:prefer-inline')
  $ProfessionCopyWith<$Res>? get profession {
    if (_value.profession == null) {
      return null;
    }

    return $ProfessionCopyWith<$Res>(_value.profession!, (value) {
      return _then(_value.copyWith(profession: value));
    });
  }
}

/// @nodoc

class _$UpdateProfessionImpl implements _UpdateProfession {
  const _$UpdateProfessionImpl({this.profession});

  @override
  final Profession? profession;

  @override
  String toString() {
    return 'JobEvent.updateProfession(profession: $profession)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$UpdateProfessionImpl &&
            (identical(other.profession, profession) ||
                other.profession == profession));
  }

  @override
  int get hashCode => Object.hash(runtimeType, profession);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$UpdateProfessionImplCopyWith<_$UpdateProfessionImpl> get copyWith =>
      __$$UpdateProfessionImplCopyWithImpl<_$UpdateProfessionImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(Area? area) updateArea,
    required TResult Function(Profession? profession) updateProfession,
    required TResult Function(Grade? grade) updateGrade,
    required TResult Function(ExperienceOption? experienceOption)
        updateExperienceOption,
    required TResult Function(({DateTime end, DateTime start})? period)
        updatePeriod,
    required TResult Function(SearchSettings searchSettings)
        updateSearchSettings,
    required TResult Function() search,
    required TResult Function() fetchPage,
  }) {
    return updateProfession(profession);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(Area? area)? updateArea,
    TResult? Function(Profession? profession)? updateProfession,
    TResult? Function(Grade? grade)? updateGrade,
    TResult? Function(ExperienceOption? experienceOption)?
        updateExperienceOption,
    TResult? Function(({DateTime end, DateTime start})? period)? updatePeriod,
    TResult? Function(SearchSettings searchSettings)? updateSearchSettings,
    TResult? Function()? search,
    TResult? Function()? fetchPage,
  }) {
    return updateProfession?.call(profession);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(Area? area)? updateArea,
    TResult Function(Profession? profession)? updateProfession,
    TResult Function(Grade? grade)? updateGrade,
    TResult Function(ExperienceOption? experienceOption)?
        updateExperienceOption,
    TResult Function(({DateTime end, DateTime start})? period)? updatePeriod,
    TResult Function(SearchSettings searchSettings)? updateSearchSettings,
    TResult Function()? search,
    TResult Function()? fetchPage,
    required TResult orElse(),
  }) {
    if (updateProfession != null) {
      return updateProfession(profession);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_UpdateArea value) updateArea,
    required TResult Function(_UpdateProfession value) updateProfession,
    required TResult Function(_UpdateGrade value) updateGrade,
    required TResult Function(_UpdateExperienceOption value)
        updateExperienceOption,
    required TResult Function(_UpdatePeriod value) updatePeriod,
    required TResult Function(_UpdateSearchSettings value) updateSearchSettings,
    required TResult Function(_Search value) search,
    required TResult Function(_FetchPage value) fetchPage,
  }) {
    return updateProfession(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_UpdateArea value)? updateArea,
    TResult? Function(_UpdateProfession value)? updateProfession,
    TResult? Function(_UpdateGrade value)? updateGrade,
    TResult? Function(_UpdateExperienceOption value)? updateExperienceOption,
    TResult? Function(_UpdatePeriod value)? updatePeriod,
    TResult? Function(_UpdateSearchSettings value)? updateSearchSettings,
    TResult? Function(_Search value)? search,
    TResult? Function(_FetchPage value)? fetchPage,
  }) {
    return updateProfession?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_UpdateArea value)? updateArea,
    TResult Function(_UpdateProfession value)? updateProfession,
    TResult Function(_UpdateGrade value)? updateGrade,
    TResult Function(_UpdateExperienceOption value)? updateExperienceOption,
    TResult Function(_UpdatePeriod value)? updatePeriod,
    TResult Function(_UpdateSearchSettings value)? updateSearchSettings,
    TResult Function(_Search value)? search,
    TResult Function(_FetchPage value)? fetchPage,
    required TResult orElse(),
  }) {
    if (updateProfession != null) {
      return updateProfession(this);
    }
    return orElse();
  }
}

abstract class _UpdateProfession implements JobEvent {
  const factory _UpdateProfession({final Profession? profession}) =
      _$UpdateProfessionImpl;

  Profession? get profession;
  @JsonKey(ignore: true)
  _$$UpdateProfessionImplCopyWith<_$UpdateProfessionImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$UpdateGradeImplCopyWith<$Res> {
  factory _$$UpdateGradeImplCopyWith(
          _$UpdateGradeImpl value, $Res Function(_$UpdateGradeImpl) then) =
      __$$UpdateGradeImplCopyWithImpl<$Res>;
  @useResult
  $Res call({Grade? grade});

  $GradeCopyWith<$Res>? get grade;
}

/// @nodoc
class __$$UpdateGradeImplCopyWithImpl<$Res>
    extends _$JobEventCopyWithImpl<$Res, _$UpdateGradeImpl>
    implements _$$UpdateGradeImplCopyWith<$Res> {
  __$$UpdateGradeImplCopyWithImpl(
      _$UpdateGradeImpl _value, $Res Function(_$UpdateGradeImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? grade = freezed,
  }) {
    return _then(_$UpdateGradeImpl(
      grade: freezed == grade
          ? _value.grade
          : grade // ignore: cast_nullable_to_non_nullable
              as Grade?,
    ));
  }

  @override
  @pragma('vm:prefer-inline')
  $GradeCopyWith<$Res>? get grade {
    if (_value.grade == null) {
      return null;
    }

    return $GradeCopyWith<$Res>(_value.grade!, (value) {
      return _then(_value.copyWith(grade: value));
    });
  }
}

/// @nodoc

class _$UpdateGradeImpl implements _UpdateGrade {
  const _$UpdateGradeImpl({this.grade});

  @override
  final Grade? grade;

  @override
  String toString() {
    return 'JobEvent.updateGrade(grade: $grade)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$UpdateGradeImpl &&
            (identical(other.grade, grade) || other.grade == grade));
  }

  @override
  int get hashCode => Object.hash(runtimeType, grade);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$UpdateGradeImplCopyWith<_$UpdateGradeImpl> get copyWith =>
      __$$UpdateGradeImplCopyWithImpl<_$UpdateGradeImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(Area? area) updateArea,
    required TResult Function(Profession? profession) updateProfession,
    required TResult Function(Grade? grade) updateGrade,
    required TResult Function(ExperienceOption? experienceOption)
        updateExperienceOption,
    required TResult Function(({DateTime end, DateTime start})? period)
        updatePeriod,
    required TResult Function(SearchSettings searchSettings)
        updateSearchSettings,
    required TResult Function() search,
    required TResult Function() fetchPage,
  }) {
    return updateGrade(grade);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(Area? area)? updateArea,
    TResult? Function(Profession? profession)? updateProfession,
    TResult? Function(Grade? grade)? updateGrade,
    TResult? Function(ExperienceOption? experienceOption)?
        updateExperienceOption,
    TResult? Function(({DateTime end, DateTime start})? period)? updatePeriod,
    TResult? Function(SearchSettings searchSettings)? updateSearchSettings,
    TResult? Function()? search,
    TResult? Function()? fetchPage,
  }) {
    return updateGrade?.call(grade);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(Area? area)? updateArea,
    TResult Function(Profession? profession)? updateProfession,
    TResult Function(Grade? grade)? updateGrade,
    TResult Function(ExperienceOption? experienceOption)?
        updateExperienceOption,
    TResult Function(({DateTime end, DateTime start})? period)? updatePeriod,
    TResult Function(SearchSettings searchSettings)? updateSearchSettings,
    TResult Function()? search,
    TResult Function()? fetchPage,
    required TResult orElse(),
  }) {
    if (updateGrade != null) {
      return updateGrade(grade);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_UpdateArea value) updateArea,
    required TResult Function(_UpdateProfession value) updateProfession,
    required TResult Function(_UpdateGrade value) updateGrade,
    required TResult Function(_UpdateExperienceOption value)
        updateExperienceOption,
    required TResult Function(_UpdatePeriod value) updatePeriod,
    required TResult Function(_UpdateSearchSettings value) updateSearchSettings,
    required TResult Function(_Search value) search,
    required TResult Function(_FetchPage value) fetchPage,
  }) {
    return updateGrade(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_UpdateArea value)? updateArea,
    TResult? Function(_UpdateProfession value)? updateProfession,
    TResult? Function(_UpdateGrade value)? updateGrade,
    TResult? Function(_UpdateExperienceOption value)? updateExperienceOption,
    TResult? Function(_UpdatePeriod value)? updatePeriod,
    TResult? Function(_UpdateSearchSettings value)? updateSearchSettings,
    TResult? Function(_Search value)? search,
    TResult? Function(_FetchPage value)? fetchPage,
  }) {
    return updateGrade?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_UpdateArea value)? updateArea,
    TResult Function(_UpdateProfession value)? updateProfession,
    TResult Function(_UpdateGrade value)? updateGrade,
    TResult Function(_UpdateExperienceOption value)? updateExperienceOption,
    TResult Function(_UpdatePeriod value)? updatePeriod,
    TResult Function(_UpdateSearchSettings value)? updateSearchSettings,
    TResult Function(_Search value)? search,
    TResult Function(_FetchPage value)? fetchPage,
    required TResult orElse(),
  }) {
    if (updateGrade != null) {
      return updateGrade(this);
    }
    return orElse();
  }
}

abstract class _UpdateGrade implements JobEvent {
  const factory _UpdateGrade({final Grade? grade}) = _$UpdateGradeImpl;

  Grade? get grade;
  @JsonKey(ignore: true)
  _$$UpdateGradeImplCopyWith<_$UpdateGradeImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$UpdateExperienceOptionImplCopyWith<$Res> {
  factory _$$UpdateExperienceOptionImplCopyWith(
          _$UpdateExperienceOptionImpl value,
          $Res Function(_$UpdateExperienceOptionImpl) then) =
      __$$UpdateExperienceOptionImplCopyWithImpl<$Res>;
  @useResult
  $Res call({ExperienceOption? experienceOption});

  $ExperienceOptionCopyWith<$Res>? get experienceOption;
}

/// @nodoc
class __$$UpdateExperienceOptionImplCopyWithImpl<$Res>
    extends _$JobEventCopyWithImpl<$Res, _$UpdateExperienceOptionImpl>
    implements _$$UpdateExperienceOptionImplCopyWith<$Res> {
  __$$UpdateExperienceOptionImplCopyWithImpl(
      _$UpdateExperienceOptionImpl _value,
      $Res Function(_$UpdateExperienceOptionImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? experienceOption = freezed,
  }) {
    return _then(_$UpdateExperienceOptionImpl(
      experienceOption: freezed == experienceOption
          ? _value.experienceOption
          : experienceOption // ignore: cast_nullable_to_non_nullable
              as ExperienceOption?,
    ));
  }

  @override
  @pragma('vm:prefer-inline')
  $ExperienceOptionCopyWith<$Res>? get experienceOption {
    if (_value.experienceOption == null) {
      return null;
    }

    return $ExperienceOptionCopyWith<$Res>(_value.experienceOption!, (value) {
      return _then(_value.copyWith(experienceOption: value));
    });
  }
}

/// @nodoc

class _$UpdateExperienceOptionImpl implements _UpdateExperienceOption {
  const _$UpdateExperienceOptionImpl({this.experienceOption});

  @override
  final ExperienceOption? experienceOption;

  @override
  String toString() {
    return 'JobEvent.updateExperienceOption(experienceOption: $experienceOption)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$UpdateExperienceOptionImpl &&
            (identical(other.experienceOption, experienceOption) ||
                other.experienceOption == experienceOption));
  }

  @override
  int get hashCode => Object.hash(runtimeType, experienceOption);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$UpdateExperienceOptionImplCopyWith<_$UpdateExperienceOptionImpl>
      get copyWith => __$$UpdateExperienceOptionImplCopyWithImpl<
          _$UpdateExperienceOptionImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(Area? area) updateArea,
    required TResult Function(Profession? profession) updateProfession,
    required TResult Function(Grade? grade) updateGrade,
    required TResult Function(ExperienceOption? experienceOption)
        updateExperienceOption,
    required TResult Function(({DateTime end, DateTime start})? period)
        updatePeriod,
    required TResult Function(SearchSettings searchSettings)
        updateSearchSettings,
    required TResult Function() search,
    required TResult Function() fetchPage,
  }) {
    return updateExperienceOption(experienceOption);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(Area? area)? updateArea,
    TResult? Function(Profession? profession)? updateProfession,
    TResult? Function(Grade? grade)? updateGrade,
    TResult? Function(ExperienceOption? experienceOption)?
        updateExperienceOption,
    TResult? Function(({DateTime end, DateTime start})? period)? updatePeriod,
    TResult? Function(SearchSettings searchSettings)? updateSearchSettings,
    TResult? Function()? search,
    TResult? Function()? fetchPage,
  }) {
    return updateExperienceOption?.call(experienceOption);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(Area? area)? updateArea,
    TResult Function(Profession? profession)? updateProfession,
    TResult Function(Grade? grade)? updateGrade,
    TResult Function(ExperienceOption? experienceOption)?
        updateExperienceOption,
    TResult Function(({DateTime end, DateTime start})? period)? updatePeriod,
    TResult Function(SearchSettings searchSettings)? updateSearchSettings,
    TResult Function()? search,
    TResult Function()? fetchPage,
    required TResult orElse(),
  }) {
    if (updateExperienceOption != null) {
      return updateExperienceOption(experienceOption);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_UpdateArea value) updateArea,
    required TResult Function(_UpdateProfession value) updateProfession,
    required TResult Function(_UpdateGrade value) updateGrade,
    required TResult Function(_UpdateExperienceOption value)
        updateExperienceOption,
    required TResult Function(_UpdatePeriod value) updatePeriod,
    required TResult Function(_UpdateSearchSettings value) updateSearchSettings,
    required TResult Function(_Search value) search,
    required TResult Function(_FetchPage value) fetchPage,
  }) {
    return updateExperienceOption(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_UpdateArea value)? updateArea,
    TResult? Function(_UpdateProfession value)? updateProfession,
    TResult? Function(_UpdateGrade value)? updateGrade,
    TResult? Function(_UpdateExperienceOption value)? updateExperienceOption,
    TResult? Function(_UpdatePeriod value)? updatePeriod,
    TResult? Function(_UpdateSearchSettings value)? updateSearchSettings,
    TResult? Function(_Search value)? search,
    TResult? Function(_FetchPage value)? fetchPage,
  }) {
    return updateExperienceOption?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_UpdateArea value)? updateArea,
    TResult Function(_UpdateProfession value)? updateProfession,
    TResult Function(_UpdateGrade value)? updateGrade,
    TResult Function(_UpdateExperienceOption value)? updateExperienceOption,
    TResult Function(_UpdatePeriod value)? updatePeriod,
    TResult Function(_UpdateSearchSettings value)? updateSearchSettings,
    TResult Function(_Search value)? search,
    TResult Function(_FetchPage value)? fetchPage,
    required TResult orElse(),
  }) {
    if (updateExperienceOption != null) {
      return updateExperienceOption(this);
    }
    return orElse();
  }
}

abstract class _UpdateExperienceOption implements JobEvent {
  const factory _UpdateExperienceOption(
          {final ExperienceOption? experienceOption}) =
      _$UpdateExperienceOptionImpl;

  ExperienceOption? get experienceOption;
  @JsonKey(ignore: true)
  _$$UpdateExperienceOptionImplCopyWith<_$UpdateExperienceOptionImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$UpdatePeriodImplCopyWith<$Res> {
  factory _$$UpdatePeriodImplCopyWith(
          _$UpdatePeriodImpl value, $Res Function(_$UpdatePeriodImpl) then) =
      __$$UpdatePeriodImplCopyWithImpl<$Res>;
  @useResult
  $Res call({({DateTime end, DateTime start})? period});
}

/// @nodoc
class __$$UpdatePeriodImplCopyWithImpl<$Res>
    extends _$JobEventCopyWithImpl<$Res, _$UpdatePeriodImpl>
    implements _$$UpdatePeriodImplCopyWith<$Res> {
  __$$UpdatePeriodImplCopyWithImpl(
      _$UpdatePeriodImpl _value, $Res Function(_$UpdatePeriodImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? period = freezed,
  }) {
    return _then(_$UpdatePeriodImpl(
      period: freezed == period
          ? _value.period
          : period // ignore: cast_nullable_to_non_nullable
              as ({DateTime end, DateTime start})?,
    ));
  }
}

/// @nodoc

class _$UpdatePeriodImpl implements _UpdatePeriod {
  const _$UpdatePeriodImpl({this.period});

  @override
  final ({DateTime end, DateTime start})? period;

  @override
  String toString() {
    return 'JobEvent.updatePeriod(period: $period)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$UpdatePeriodImpl &&
            (identical(other.period, period) || other.period == period));
  }

  @override
  int get hashCode => Object.hash(runtimeType, period);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$UpdatePeriodImplCopyWith<_$UpdatePeriodImpl> get copyWith =>
      __$$UpdatePeriodImplCopyWithImpl<_$UpdatePeriodImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(Area? area) updateArea,
    required TResult Function(Profession? profession) updateProfession,
    required TResult Function(Grade? grade) updateGrade,
    required TResult Function(ExperienceOption? experienceOption)
        updateExperienceOption,
    required TResult Function(({DateTime end, DateTime start})? period)
        updatePeriod,
    required TResult Function(SearchSettings searchSettings)
        updateSearchSettings,
    required TResult Function() search,
    required TResult Function() fetchPage,
  }) {
    return updatePeriod(period);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(Area? area)? updateArea,
    TResult? Function(Profession? profession)? updateProfession,
    TResult? Function(Grade? grade)? updateGrade,
    TResult? Function(ExperienceOption? experienceOption)?
        updateExperienceOption,
    TResult? Function(({DateTime end, DateTime start})? period)? updatePeriod,
    TResult? Function(SearchSettings searchSettings)? updateSearchSettings,
    TResult? Function()? search,
    TResult? Function()? fetchPage,
  }) {
    return updatePeriod?.call(period);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(Area? area)? updateArea,
    TResult Function(Profession? profession)? updateProfession,
    TResult Function(Grade? grade)? updateGrade,
    TResult Function(ExperienceOption? experienceOption)?
        updateExperienceOption,
    TResult Function(({DateTime end, DateTime start})? period)? updatePeriod,
    TResult Function(SearchSettings searchSettings)? updateSearchSettings,
    TResult Function()? search,
    TResult Function()? fetchPage,
    required TResult orElse(),
  }) {
    if (updatePeriod != null) {
      return updatePeriod(period);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_UpdateArea value) updateArea,
    required TResult Function(_UpdateProfession value) updateProfession,
    required TResult Function(_UpdateGrade value) updateGrade,
    required TResult Function(_UpdateExperienceOption value)
        updateExperienceOption,
    required TResult Function(_UpdatePeriod value) updatePeriod,
    required TResult Function(_UpdateSearchSettings value) updateSearchSettings,
    required TResult Function(_Search value) search,
    required TResult Function(_FetchPage value) fetchPage,
  }) {
    return updatePeriod(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_UpdateArea value)? updateArea,
    TResult? Function(_UpdateProfession value)? updateProfession,
    TResult? Function(_UpdateGrade value)? updateGrade,
    TResult? Function(_UpdateExperienceOption value)? updateExperienceOption,
    TResult? Function(_UpdatePeriod value)? updatePeriod,
    TResult? Function(_UpdateSearchSettings value)? updateSearchSettings,
    TResult? Function(_Search value)? search,
    TResult? Function(_FetchPage value)? fetchPage,
  }) {
    return updatePeriod?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_UpdateArea value)? updateArea,
    TResult Function(_UpdateProfession value)? updateProfession,
    TResult Function(_UpdateGrade value)? updateGrade,
    TResult Function(_UpdateExperienceOption value)? updateExperienceOption,
    TResult Function(_UpdatePeriod value)? updatePeriod,
    TResult Function(_UpdateSearchSettings value)? updateSearchSettings,
    TResult Function(_Search value)? search,
    TResult Function(_FetchPage value)? fetchPage,
    required TResult orElse(),
  }) {
    if (updatePeriod != null) {
      return updatePeriod(this);
    }
    return orElse();
  }
}

abstract class _UpdatePeriod implements JobEvent {
  const factory _UpdatePeriod(
      {final ({DateTime end, DateTime start})? period}) = _$UpdatePeriodImpl;

  ({DateTime end, DateTime start})? get period;
  @JsonKey(ignore: true)
  _$$UpdatePeriodImplCopyWith<_$UpdatePeriodImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$UpdateSearchSettingsImplCopyWith<$Res> {
  factory _$$UpdateSearchSettingsImplCopyWith(_$UpdateSearchSettingsImpl value,
          $Res Function(_$UpdateSearchSettingsImpl) then) =
      __$$UpdateSearchSettingsImplCopyWithImpl<$Res>;
  @useResult
  $Res call({SearchSettings searchSettings});

  $SearchSettingsCopyWith<$Res> get searchSettings;
}

/// @nodoc
class __$$UpdateSearchSettingsImplCopyWithImpl<$Res>
    extends _$JobEventCopyWithImpl<$Res, _$UpdateSearchSettingsImpl>
    implements _$$UpdateSearchSettingsImplCopyWith<$Res> {
  __$$UpdateSearchSettingsImplCopyWithImpl(_$UpdateSearchSettingsImpl _value,
      $Res Function(_$UpdateSearchSettingsImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? searchSettings = null,
  }) {
    return _then(_$UpdateSearchSettingsImpl(
      searchSettings: null == searchSettings
          ? _value.searchSettings
          : searchSettings // ignore: cast_nullable_to_non_nullable
              as SearchSettings,
    ));
  }

  @override
  @pragma('vm:prefer-inline')
  $SearchSettingsCopyWith<$Res> get searchSettings {
    return $SearchSettingsCopyWith<$Res>(_value.searchSettings, (value) {
      return _then(_value.copyWith(searchSettings: value));
    });
  }
}

/// @nodoc

class _$UpdateSearchSettingsImpl implements _UpdateSearchSettings {
  const _$UpdateSearchSettingsImpl({required this.searchSettings});

  @override
  final SearchSettings searchSettings;

  @override
  String toString() {
    return 'JobEvent.updateSearchSettings(searchSettings: $searchSettings)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$UpdateSearchSettingsImpl &&
            (identical(other.searchSettings, searchSettings) ||
                other.searchSettings == searchSettings));
  }

  @override
  int get hashCode => Object.hash(runtimeType, searchSettings);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$UpdateSearchSettingsImplCopyWith<_$UpdateSearchSettingsImpl>
      get copyWith =>
          __$$UpdateSearchSettingsImplCopyWithImpl<_$UpdateSearchSettingsImpl>(
              this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(Area? area) updateArea,
    required TResult Function(Profession? profession) updateProfession,
    required TResult Function(Grade? grade) updateGrade,
    required TResult Function(ExperienceOption? experienceOption)
        updateExperienceOption,
    required TResult Function(({DateTime end, DateTime start})? period)
        updatePeriod,
    required TResult Function(SearchSettings searchSettings)
        updateSearchSettings,
    required TResult Function() search,
    required TResult Function() fetchPage,
  }) {
    return updateSearchSettings(searchSettings);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(Area? area)? updateArea,
    TResult? Function(Profession? profession)? updateProfession,
    TResult? Function(Grade? grade)? updateGrade,
    TResult? Function(ExperienceOption? experienceOption)?
        updateExperienceOption,
    TResult? Function(({DateTime end, DateTime start})? period)? updatePeriod,
    TResult? Function(SearchSettings searchSettings)? updateSearchSettings,
    TResult? Function()? search,
    TResult? Function()? fetchPage,
  }) {
    return updateSearchSettings?.call(searchSettings);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(Area? area)? updateArea,
    TResult Function(Profession? profession)? updateProfession,
    TResult Function(Grade? grade)? updateGrade,
    TResult Function(ExperienceOption? experienceOption)?
        updateExperienceOption,
    TResult Function(({DateTime end, DateTime start})? period)? updatePeriod,
    TResult Function(SearchSettings searchSettings)? updateSearchSettings,
    TResult Function()? search,
    TResult Function()? fetchPage,
    required TResult orElse(),
  }) {
    if (updateSearchSettings != null) {
      return updateSearchSettings(searchSettings);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_UpdateArea value) updateArea,
    required TResult Function(_UpdateProfession value) updateProfession,
    required TResult Function(_UpdateGrade value) updateGrade,
    required TResult Function(_UpdateExperienceOption value)
        updateExperienceOption,
    required TResult Function(_UpdatePeriod value) updatePeriod,
    required TResult Function(_UpdateSearchSettings value) updateSearchSettings,
    required TResult Function(_Search value) search,
    required TResult Function(_FetchPage value) fetchPage,
  }) {
    return updateSearchSettings(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_UpdateArea value)? updateArea,
    TResult? Function(_UpdateProfession value)? updateProfession,
    TResult? Function(_UpdateGrade value)? updateGrade,
    TResult? Function(_UpdateExperienceOption value)? updateExperienceOption,
    TResult? Function(_UpdatePeriod value)? updatePeriod,
    TResult? Function(_UpdateSearchSettings value)? updateSearchSettings,
    TResult? Function(_Search value)? search,
    TResult? Function(_FetchPage value)? fetchPage,
  }) {
    return updateSearchSettings?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_UpdateArea value)? updateArea,
    TResult Function(_UpdateProfession value)? updateProfession,
    TResult Function(_UpdateGrade value)? updateGrade,
    TResult Function(_UpdateExperienceOption value)? updateExperienceOption,
    TResult Function(_UpdatePeriod value)? updatePeriod,
    TResult Function(_UpdateSearchSettings value)? updateSearchSettings,
    TResult Function(_Search value)? search,
    TResult Function(_FetchPage value)? fetchPage,
    required TResult orElse(),
  }) {
    if (updateSearchSettings != null) {
      return updateSearchSettings(this);
    }
    return orElse();
  }
}

abstract class _UpdateSearchSettings implements JobEvent {
  const factory _UpdateSearchSettings(
          {required final SearchSettings searchSettings}) =
      _$UpdateSearchSettingsImpl;

  SearchSettings get searchSettings;
  @JsonKey(ignore: true)
  _$$UpdateSearchSettingsImplCopyWith<_$UpdateSearchSettingsImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$SearchImplCopyWith<$Res> {
  factory _$$SearchImplCopyWith(
          _$SearchImpl value, $Res Function(_$SearchImpl) then) =
      __$$SearchImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$SearchImplCopyWithImpl<$Res>
    extends _$JobEventCopyWithImpl<$Res, _$SearchImpl>
    implements _$$SearchImplCopyWith<$Res> {
  __$$SearchImplCopyWithImpl(
      _$SearchImpl _value, $Res Function(_$SearchImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$SearchImpl implements _Search {
  const _$SearchImpl();

  @override
  String toString() {
    return 'JobEvent.search()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$SearchImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(Area? area) updateArea,
    required TResult Function(Profession? profession) updateProfession,
    required TResult Function(Grade? grade) updateGrade,
    required TResult Function(ExperienceOption? experienceOption)
        updateExperienceOption,
    required TResult Function(({DateTime end, DateTime start})? period)
        updatePeriod,
    required TResult Function(SearchSettings searchSettings)
        updateSearchSettings,
    required TResult Function() search,
    required TResult Function() fetchPage,
  }) {
    return search();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(Area? area)? updateArea,
    TResult? Function(Profession? profession)? updateProfession,
    TResult? Function(Grade? grade)? updateGrade,
    TResult? Function(ExperienceOption? experienceOption)?
        updateExperienceOption,
    TResult? Function(({DateTime end, DateTime start})? period)? updatePeriod,
    TResult? Function(SearchSettings searchSettings)? updateSearchSettings,
    TResult? Function()? search,
    TResult? Function()? fetchPage,
  }) {
    return search?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(Area? area)? updateArea,
    TResult Function(Profession? profession)? updateProfession,
    TResult Function(Grade? grade)? updateGrade,
    TResult Function(ExperienceOption? experienceOption)?
        updateExperienceOption,
    TResult Function(({DateTime end, DateTime start})? period)? updatePeriod,
    TResult Function(SearchSettings searchSettings)? updateSearchSettings,
    TResult Function()? search,
    TResult Function()? fetchPage,
    required TResult orElse(),
  }) {
    if (search != null) {
      return search();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_UpdateArea value) updateArea,
    required TResult Function(_UpdateProfession value) updateProfession,
    required TResult Function(_UpdateGrade value) updateGrade,
    required TResult Function(_UpdateExperienceOption value)
        updateExperienceOption,
    required TResult Function(_UpdatePeriod value) updatePeriod,
    required TResult Function(_UpdateSearchSettings value) updateSearchSettings,
    required TResult Function(_Search value) search,
    required TResult Function(_FetchPage value) fetchPage,
  }) {
    return search(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_UpdateArea value)? updateArea,
    TResult? Function(_UpdateProfession value)? updateProfession,
    TResult? Function(_UpdateGrade value)? updateGrade,
    TResult? Function(_UpdateExperienceOption value)? updateExperienceOption,
    TResult? Function(_UpdatePeriod value)? updatePeriod,
    TResult? Function(_UpdateSearchSettings value)? updateSearchSettings,
    TResult? Function(_Search value)? search,
    TResult? Function(_FetchPage value)? fetchPage,
  }) {
    return search?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_UpdateArea value)? updateArea,
    TResult Function(_UpdateProfession value)? updateProfession,
    TResult Function(_UpdateGrade value)? updateGrade,
    TResult Function(_UpdateExperienceOption value)? updateExperienceOption,
    TResult Function(_UpdatePeriod value)? updatePeriod,
    TResult Function(_UpdateSearchSettings value)? updateSearchSettings,
    TResult Function(_Search value)? search,
    TResult Function(_FetchPage value)? fetchPage,
    required TResult orElse(),
  }) {
    if (search != null) {
      return search(this);
    }
    return orElse();
  }
}

abstract class _Search implements JobEvent {
  const factory _Search() = _$SearchImpl;
}

/// @nodoc
abstract class _$$FetchPageImplCopyWith<$Res> {
  factory _$$FetchPageImplCopyWith(
          _$FetchPageImpl value, $Res Function(_$FetchPageImpl) then) =
      __$$FetchPageImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$FetchPageImplCopyWithImpl<$Res>
    extends _$JobEventCopyWithImpl<$Res, _$FetchPageImpl>
    implements _$$FetchPageImplCopyWith<$Res> {
  __$$FetchPageImplCopyWithImpl(
      _$FetchPageImpl _value, $Res Function(_$FetchPageImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$FetchPageImpl implements _FetchPage {
  const _$FetchPageImpl();

  @override
  String toString() {
    return 'JobEvent.fetchPage()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$FetchPageImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(Area? area) updateArea,
    required TResult Function(Profession? profession) updateProfession,
    required TResult Function(Grade? grade) updateGrade,
    required TResult Function(ExperienceOption? experienceOption)
        updateExperienceOption,
    required TResult Function(({DateTime end, DateTime start})? period)
        updatePeriod,
    required TResult Function(SearchSettings searchSettings)
        updateSearchSettings,
    required TResult Function() search,
    required TResult Function() fetchPage,
  }) {
    return fetchPage();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(Area? area)? updateArea,
    TResult? Function(Profession? profession)? updateProfession,
    TResult? Function(Grade? grade)? updateGrade,
    TResult? Function(ExperienceOption? experienceOption)?
        updateExperienceOption,
    TResult? Function(({DateTime end, DateTime start})? period)? updatePeriod,
    TResult? Function(SearchSettings searchSettings)? updateSearchSettings,
    TResult? Function()? search,
    TResult? Function()? fetchPage,
  }) {
    return fetchPage?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(Area? area)? updateArea,
    TResult Function(Profession? profession)? updateProfession,
    TResult Function(Grade? grade)? updateGrade,
    TResult Function(ExperienceOption? experienceOption)?
        updateExperienceOption,
    TResult Function(({DateTime end, DateTime start})? period)? updatePeriod,
    TResult Function(SearchSettings searchSettings)? updateSearchSettings,
    TResult Function()? search,
    TResult Function()? fetchPage,
    required TResult orElse(),
  }) {
    if (fetchPage != null) {
      return fetchPage();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_UpdateArea value) updateArea,
    required TResult Function(_UpdateProfession value) updateProfession,
    required TResult Function(_UpdateGrade value) updateGrade,
    required TResult Function(_UpdateExperienceOption value)
        updateExperienceOption,
    required TResult Function(_UpdatePeriod value) updatePeriod,
    required TResult Function(_UpdateSearchSettings value) updateSearchSettings,
    required TResult Function(_Search value) search,
    required TResult Function(_FetchPage value) fetchPage,
  }) {
    return fetchPage(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_UpdateArea value)? updateArea,
    TResult? Function(_UpdateProfession value)? updateProfession,
    TResult? Function(_UpdateGrade value)? updateGrade,
    TResult? Function(_UpdateExperienceOption value)? updateExperienceOption,
    TResult? Function(_UpdatePeriod value)? updatePeriod,
    TResult? Function(_UpdateSearchSettings value)? updateSearchSettings,
    TResult? Function(_Search value)? search,
    TResult? Function(_FetchPage value)? fetchPage,
  }) {
    return fetchPage?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_UpdateArea value)? updateArea,
    TResult Function(_UpdateProfession value)? updateProfession,
    TResult Function(_UpdateGrade value)? updateGrade,
    TResult Function(_UpdateExperienceOption value)? updateExperienceOption,
    TResult Function(_UpdatePeriod value)? updatePeriod,
    TResult Function(_UpdateSearchSettings value)? updateSearchSettings,
    TResult Function(_Search value)? search,
    TResult Function(_FetchPage value)? fetchPage,
    required TResult orElse(),
  }) {
    if (fetchPage != null) {
      return fetchPage(this);
    }
    return orElse();
  }
}

abstract class _FetchPage implements JobEvent {
  const factory _FetchPage() = _$FetchPageImpl;
}

/// @nodoc
mixin _$JobState {
  TableData get tableData => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(TableData tableData, ErrorDto? errors) initial,
    required TResult Function(TableData tableData) loading,
    required TResult Function(
            TableData tableData,
            SalaryStatistics salaryStatistics,
            List<Vacancy> vacancies,
            bool hasReachedMaxVacancies)
        loaded,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(TableData tableData, ErrorDto? errors)? initial,
    TResult? Function(TableData tableData)? loading,
    TResult? Function(TableData tableData, SalaryStatistics salaryStatistics,
            List<Vacancy> vacancies, bool hasReachedMaxVacancies)?
        loaded,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(TableData tableData, ErrorDto? errors)? initial,
    TResult Function(TableData tableData)? loading,
    TResult Function(TableData tableData, SalaryStatistics salaryStatistics,
            List<Vacancy> vacancies, bool hasReachedMaxVacancies)?
        loaded,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(JobStateInitial value) initial,
    required TResult Function(_Loading value) loading,
    required TResult Function(_Loaded value) loaded,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(JobStateInitial value)? initial,
    TResult? Function(_Loading value)? loading,
    TResult? Function(_Loaded value)? loaded,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(JobStateInitial value)? initial,
    TResult Function(_Loading value)? loading,
    TResult Function(_Loaded value)? loaded,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $JobStateCopyWith<JobState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $JobStateCopyWith<$Res> {
  factory $JobStateCopyWith(JobState value, $Res Function(JobState) then) =
      _$JobStateCopyWithImpl<$Res, JobState>;
  @useResult
  $Res call({TableData tableData});

  $TableDataCopyWith<$Res> get tableData;
}

/// @nodoc
class _$JobStateCopyWithImpl<$Res, $Val extends JobState>
    implements $JobStateCopyWith<$Res> {
  _$JobStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? tableData = null,
  }) {
    return _then(_value.copyWith(
      tableData: null == tableData
          ? _value.tableData
          : tableData // ignore: cast_nullable_to_non_nullable
              as TableData,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $TableDataCopyWith<$Res> get tableData {
    return $TableDataCopyWith<$Res>(_value.tableData, (value) {
      return _then(_value.copyWith(tableData: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$JobStateInitialImplCopyWith<$Res>
    implements $JobStateCopyWith<$Res> {
  factory _$$JobStateInitialImplCopyWith(_$JobStateInitialImpl value,
          $Res Function(_$JobStateInitialImpl) then) =
      __$$JobStateInitialImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({TableData tableData, ErrorDto? errors});

  @override
  $TableDataCopyWith<$Res> get tableData;
}

/// @nodoc
class __$$JobStateInitialImplCopyWithImpl<$Res>
    extends _$JobStateCopyWithImpl<$Res, _$JobStateInitialImpl>
    implements _$$JobStateInitialImplCopyWith<$Res> {
  __$$JobStateInitialImplCopyWithImpl(
      _$JobStateInitialImpl _value, $Res Function(_$JobStateInitialImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? tableData = null,
    Object? errors = freezed,
  }) {
    return _then(_$JobStateInitialImpl(
      tableData: null == tableData
          ? _value.tableData
          : tableData // ignore: cast_nullable_to_non_nullable
              as TableData,
      errors: freezed == errors
          ? _value.errors
          : errors // ignore: cast_nullable_to_non_nullable
              as ErrorDto?,
    ));
  }
}

/// @nodoc

class _$JobStateInitialImpl implements JobStateInitial {
  const _$JobStateInitialImpl({required this.tableData, this.errors});

  @override
  final TableData tableData;
  @override
  final ErrorDto? errors;

  @override
  String toString() {
    return 'JobState.initial(tableData: $tableData, errors: $errors)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$JobStateInitialImpl &&
            (identical(other.tableData, tableData) ||
                other.tableData == tableData) &&
            (identical(other.errors, errors) || other.errors == errors));
  }

  @override
  int get hashCode => Object.hash(runtimeType, tableData, errors);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$JobStateInitialImplCopyWith<_$JobStateInitialImpl> get copyWith =>
      __$$JobStateInitialImplCopyWithImpl<_$JobStateInitialImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(TableData tableData, ErrorDto? errors) initial,
    required TResult Function(TableData tableData) loading,
    required TResult Function(
            TableData tableData,
            SalaryStatistics salaryStatistics,
            List<Vacancy> vacancies,
            bool hasReachedMaxVacancies)
        loaded,
  }) {
    return initial(tableData, errors);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(TableData tableData, ErrorDto? errors)? initial,
    TResult? Function(TableData tableData)? loading,
    TResult? Function(TableData tableData, SalaryStatistics salaryStatistics,
            List<Vacancy> vacancies, bool hasReachedMaxVacancies)?
        loaded,
  }) {
    return initial?.call(tableData, errors);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(TableData tableData, ErrorDto? errors)? initial,
    TResult Function(TableData tableData)? loading,
    TResult Function(TableData tableData, SalaryStatistics salaryStatistics,
            List<Vacancy> vacancies, bool hasReachedMaxVacancies)?
        loaded,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(tableData, errors);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(JobStateInitial value) initial,
    required TResult Function(_Loading value) loading,
    required TResult Function(_Loaded value) loaded,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(JobStateInitial value)? initial,
    TResult? Function(_Loading value)? loading,
    TResult? Function(_Loaded value)? loaded,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(JobStateInitial value)? initial,
    TResult Function(_Loading value)? loading,
    TResult Function(_Loaded value)? loaded,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class JobStateInitial implements JobState {
  const factory JobStateInitial(
      {required final TableData tableData,
      final ErrorDto? errors}) = _$JobStateInitialImpl;

  @override
  TableData get tableData;
  ErrorDto? get errors;
  @override
  @JsonKey(ignore: true)
  _$$JobStateInitialImplCopyWith<_$JobStateInitialImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$LoadingImplCopyWith<$Res> implements $JobStateCopyWith<$Res> {
  factory _$$LoadingImplCopyWith(
          _$LoadingImpl value, $Res Function(_$LoadingImpl) then) =
      __$$LoadingImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({TableData tableData});

  @override
  $TableDataCopyWith<$Res> get tableData;
}

/// @nodoc
class __$$LoadingImplCopyWithImpl<$Res>
    extends _$JobStateCopyWithImpl<$Res, _$LoadingImpl>
    implements _$$LoadingImplCopyWith<$Res> {
  __$$LoadingImplCopyWithImpl(
      _$LoadingImpl _value, $Res Function(_$LoadingImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? tableData = null,
  }) {
    return _then(_$LoadingImpl(
      tableData: null == tableData
          ? _value.tableData
          : tableData // ignore: cast_nullable_to_non_nullable
              as TableData,
    ));
  }
}

/// @nodoc

class _$LoadingImpl implements _Loading {
  const _$LoadingImpl({required this.tableData});

  @override
  final TableData tableData;

  @override
  String toString() {
    return 'JobState.loading(tableData: $tableData)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$LoadingImpl &&
            (identical(other.tableData, tableData) ||
                other.tableData == tableData));
  }

  @override
  int get hashCode => Object.hash(runtimeType, tableData);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$LoadingImplCopyWith<_$LoadingImpl> get copyWith =>
      __$$LoadingImplCopyWithImpl<_$LoadingImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(TableData tableData, ErrorDto? errors) initial,
    required TResult Function(TableData tableData) loading,
    required TResult Function(
            TableData tableData,
            SalaryStatistics salaryStatistics,
            List<Vacancy> vacancies,
            bool hasReachedMaxVacancies)
        loaded,
  }) {
    return loading(tableData);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(TableData tableData, ErrorDto? errors)? initial,
    TResult? Function(TableData tableData)? loading,
    TResult? Function(TableData tableData, SalaryStatistics salaryStatistics,
            List<Vacancy> vacancies, bool hasReachedMaxVacancies)?
        loaded,
  }) {
    return loading?.call(tableData);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(TableData tableData, ErrorDto? errors)? initial,
    TResult Function(TableData tableData)? loading,
    TResult Function(TableData tableData, SalaryStatistics salaryStatistics,
            List<Vacancy> vacancies, bool hasReachedMaxVacancies)?
        loaded,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(tableData);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(JobStateInitial value) initial,
    required TResult Function(_Loading value) loading,
    required TResult Function(_Loaded value) loaded,
  }) {
    return loading(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(JobStateInitial value)? initial,
    TResult? Function(_Loading value)? loading,
    TResult? Function(_Loaded value)? loaded,
  }) {
    return loading?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(JobStateInitial value)? initial,
    TResult Function(_Loading value)? loading,
    TResult Function(_Loaded value)? loaded,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(this);
    }
    return orElse();
  }
}

abstract class _Loading implements JobState {
  const factory _Loading({required final TableData tableData}) = _$LoadingImpl;

  @override
  TableData get tableData;
  @override
  @JsonKey(ignore: true)
  _$$LoadingImplCopyWith<_$LoadingImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$LoadedImplCopyWith<$Res> implements $JobStateCopyWith<$Res> {
  factory _$$LoadedImplCopyWith(
          _$LoadedImpl value, $Res Function(_$LoadedImpl) then) =
      __$$LoadedImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {TableData tableData,
      SalaryStatistics salaryStatistics,
      List<Vacancy> vacancies,
      bool hasReachedMaxVacancies});

  @override
  $TableDataCopyWith<$Res> get tableData;
  $SalaryStatisticsCopyWith<$Res> get salaryStatistics;
}

/// @nodoc
class __$$LoadedImplCopyWithImpl<$Res>
    extends _$JobStateCopyWithImpl<$Res, _$LoadedImpl>
    implements _$$LoadedImplCopyWith<$Res> {
  __$$LoadedImplCopyWithImpl(
      _$LoadedImpl _value, $Res Function(_$LoadedImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? tableData = null,
    Object? salaryStatistics = null,
    Object? vacancies = null,
    Object? hasReachedMaxVacancies = null,
  }) {
    return _then(_$LoadedImpl(
      tableData: null == tableData
          ? _value.tableData
          : tableData // ignore: cast_nullable_to_non_nullable
              as TableData,
      salaryStatistics: null == salaryStatistics
          ? _value.salaryStatistics
          : salaryStatistics // ignore: cast_nullable_to_non_nullable
              as SalaryStatistics,
      vacancies: null == vacancies
          ? _value._vacancies
          : vacancies // ignore: cast_nullable_to_non_nullable
              as List<Vacancy>,
      hasReachedMaxVacancies: null == hasReachedMaxVacancies
          ? _value.hasReachedMaxVacancies
          : hasReachedMaxVacancies // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }

  @override
  @pragma('vm:prefer-inline')
  $SalaryStatisticsCopyWith<$Res> get salaryStatistics {
    return $SalaryStatisticsCopyWith<$Res>(_value.salaryStatistics, (value) {
      return _then(_value.copyWith(salaryStatistics: value));
    });
  }
}

/// @nodoc

class _$LoadedImpl implements _Loaded {
  const _$LoadedImpl(
      {required this.tableData,
      required this.salaryStatistics,
      required final List<Vacancy> vacancies,
      required this.hasReachedMaxVacancies})
      : _vacancies = vacancies;

  @override
  final TableData tableData;
  @override
  final SalaryStatistics salaryStatistics;
  final List<Vacancy> _vacancies;
  @override
  List<Vacancy> get vacancies {
    if (_vacancies is EqualUnmodifiableListView) return _vacancies;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_vacancies);
  }

  @override
  final bool hasReachedMaxVacancies;

  @override
  String toString() {
    return 'JobState.loaded(tableData: $tableData, salaryStatistics: $salaryStatistics, vacancies: $vacancies, hasReachedMaxVacancies: $hasReachedMaxVacancies)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$LoadedImpl &&
            (identical(other.tableData, tableData) ||
                other.tableData == tableData) &&
            (identical(other.salaryStatistics, salaryStatistics) ||
                other.salaryStatistics == salaryStatistics) &&
            const DeepCollectionEquality()
                .equals(other._vacancies, _vacancies) &&
            (identical(other.hasReachedMaxVacancies, hasReachedMaxVacancies) ||
                other.hasReachedMaxVacancies == hasReachedMaxVacancies));
  }

  @override
  int get hashCode => Object.hash(runtimeType, tableData, salaryStatistics,
      const DeepCollectionEquality().hash(_vacancies), hasReachedMaxVacancies);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$LoadedImplCopyWith<_$LoadedImpl> get copyWith =>
      __$$LoadedImplCopyWithImpl<_$LoadedImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(TableData tableData, ErrorDto? errors) initial,
    required TResult Function(TableData tableData) loading,
    required TResult Function(
            TableData tableData,
            SalaryStatistics salaryStatistics,
            List<Vacancy> vacancies,
            bool hasReachedMaxVacancies)
        loaded,
  }) {
    return loaded(
        tableData, salaryStatistics, vacancies, hasReachedMaxVacancies);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(TableData tableData, ErrorDto? errors)? initial,
    TResult? Function(TableData tableData)? loading,
    TResult? Function(TableData tableData, SalaryStatistics salaryStatistics,
            List<Vacancy> vacancies, bool hasReachedMaxVacancies)?
        loaded,
  }) {
    return loaded?.call(
        tableData, salaryStatistics, vacancies, hasReachedMaxVacancies);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(TableData tableData, ErrorDto? errors)? initial,
    TResult Function(TableData tableData)? loading,
    TResult Function(TableData tableData, SalaryStatistics salaryStatistics,
            List<Vacancy> vacancies, bool hasReachedMaxVacancies)?
        loaded,
    required TResult orElse(),
  }) {
    if (loaded != null) {
      return loaded(
          tableData, salaryStatistics, vacancies, hasReachedMaxVacancies);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(JobStateInitial value) initial,
    required TResult Function(_Loading value) loading,
    required TResult Function(_Loaded value) loaded,
  }) {
    return loaded(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(JobStateInitial value)? initial,
    TResult? Function(_Loading value)? loading,
    TResult? Function(_Loaded value)? loaded,
  }) {
    return loaded?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(JobStateInitial value)? initial,
    TResult Function(_Loading value)? loading,
    TResult Function(_Loaded value)? loaded,
    required TResult orElse(),
  }) {
    if (loaded != null) {
      return loaded(this);
    }
    return orElse();
  }
}

abstract class _Loaded implements JobState {
  const factory _Loaded(
      {required final TableData tableData,
      required final SalaryStatistics salaryStatistics,
      required final List<Vacancy> vacancies,
      required final bool hasReachedMaxVacancies}) = _$LoadedImpl;

  @override
  TableData get tableData;
  SalaryStatistics get salaryStatistics;
  List<Vacancy> get vacancies;
  bool get hasReachedMaxVacancies;
  @override
  @JsonKey(ignore: true)
  _$$LoadedImplCopyWith<_$LoadedImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
