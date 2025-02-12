// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'experience_option.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

ExperienceOption _$ExperienceOptionFromJson(Map<String, dynamic> json) {
  return _ExperienceOption.fromJson(json);
}

/// @nodoc
mixin _$ExperienceOption {
  String get id => throw _privateConstructorUsedError;
  String get title => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ExperienceOptionCopyWith<ExperienceOption> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ExperienceOptionCopyWith<$Res> {
  factory $ExperienceOptionCopyWith(
          ExperienceOption value, $Res Function(ExperienceOption) then) =
      _$ExperienceOptionCopyWithImpl<$Res, ExperienceOption>;
  @useResult
  $Res call({String id, String title});
}

/// @nodoc
class _$ExperienceOptionCopyWithImpl<$Res, $Val extends ExperienceOption>
    implements $ExperienceOptionCopyWith<$Res> {
  _$ExperienceOptionCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? title = null,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      title: null == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$ExperienceOptionImplCopyWith<$Res>
    implements $ExperienceOptionCopyWith<$Res> {
  factory _$$ExperienceOptionImplCopyWith(_$ExperienceOptionImpl value,
          $Res Function(_$ExperienceOptionImpl) then) =
      __$$ExperienceOptionImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String id, String title});
}

/// @nodoc
class __$$ExperienceOptionImplCopyWithImpl<$Res>
    extends _$ExperienceOptionCopyWithImpl<$Res, _$ExperienceOptionImpl>
    implements _$$ExperienceOptionImplCopyWith<$Res> {
  __$$ExperienceOptionImplCopyWithImpl(_$ExperienceOptionImpl _value,
      $Res Function(_$ExperienceOptionImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? title = null,
  }) {
    return _then(_$ExperienceOptionImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      title: null == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$ExperienceOptionImpl extends _ExperienceOption {
  const _$ExperienceOptionImpl({required this.id, required this.title})
      : super._();

  factory _$ExperienceOptionImpl.fromJson(Map<String, dynamic> json) =>
      _$$ExperienceOptionImplFromJson(json);

  @override
  final String id;
  @override
  final String title;

  @override
  String toString() {
    return 'ExperienceOption(id: $id, title: $title)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ExperienceOptionImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.title, title) || other.title == title));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, id, title);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ExperienceOptionImplCopyWith<_$ExperienceOptionImpl> get copyWith =>
      __$$ExperienceOptionImplCopyWithImpl<_$ExperienceOptionImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ExperienceOptionImplToJson(
      this,
    );
  }
}

abstract class _ExperienceOption extends ExperienceOption {
  const factory _ExperienceOption(
      {required final String id,
      required final String title}) = _$ExperienceOptionImpl;
  const _ExperienceOption._() : super._();

  factory _ExperienceOption.fromJson(Map<String, dynamic> json) =
      _$ExperienceOptionImpl.fromJson;

  @override
  String get id;
  @override
  String get title;
  @override
  @JsonKey(ignore: true)
  _$$ExperienceOptionImplCopyWith<_$ExperienceOptionImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
