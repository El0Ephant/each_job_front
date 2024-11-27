// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'profession.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

Profession _$ProfessionFromJson(Map<String, dynamic> json) {
  return _Profession.fromJson(json);
}

/// @nodoc
mixin _$Profession {
  String get id => throw _privateConstructorUsedError;
  String get title => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ProfessionCopyWith<Profession> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ProfessionCopyWith<$Res> {
  factory $ProfessionCopyWith(
          Profession value, $Res Function(Profession) then) =
      _$ProfessionCopyWithImpl<$Res, Profession>;
  @useResult
  $Res call({String id, String title});
}

/// @nodoc
class _$ProfessionCopyWithImpl<$Res, $Val extends Profession>
    implements $ProfessionCopyWith<$Res> {
  _$ProfessionCopyWithImpl(this._value, this._then);

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
abstract class _$$ProfessionImplCopyWith<$Res>
    implements $ProfessionCopyWith<$Res> {
  factory _$$ProfessionImplCopyWith(
          _$ProfessionImpl value, $Res Function(_$ProfessionImpl) then) =
      __$$ProfessionImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String id, String title});
}

/// @nodoc
class __$$ProfessionImplCopyWithImpl<$Res>
    extends _$ProfessionCopyWithImpl<$Res, _$ProfessionImpl>
    implements _$$ProfessionImplCopyWith<$Res> {
  __$$ProfessionImplCopyWithImpl(
      _$ProfessionImpl _value, $Res Function(_$ProfessionImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? title = null,
  }) {
    return _then(_$ProfessionImpl(
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
class _$ProfessionImpl extends _Profession {
  const _$ProfessionImpl({required this.id, required this.title}) : super._();

  factory _$ProfessionImpl.fromJson(Map<String, dynamic> json) =>
      _$$ProfessionImplFromJson(json);

  @override
  final String id;
  @override
  final String title;

  @override
  String toString() {
    return 'Profession(id: $id, title: $title)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ProfessionImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.title, title) || other.title == title));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, id, title);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ProfessionImplCopyWith<_$ProfessionImpl> get copyWith =>
      __$$ProfessionImplCopyWithImpl<_$ProfessionImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ProfessionImplToJson(
      this,
    );
  }
}

abstract class _Profession extends Profession {
  const factory _Profession(
      {required final String id,
      required final String title}) = _$ProfessionImpl;
  const _Profession._() : super._();

  factory _Profession.fromJson(Map<String, dynamic> json) =
      _$ProfessionImpl.fromJson;

  @override
  String get id;
  @override
  String get title;
  @override
  @JsonKey(ignore: true)
  _$$ProfessionImplCopyWith<_$ProfessionImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
