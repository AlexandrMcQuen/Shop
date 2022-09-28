// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'colors_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

Colors _$ColorsFromJson(Map<String, dynamic> json) {
  return _Colors.fromJson(json);
}

/// @nodoc
mixin _$Colors {
  dynamic get id => throw _privateConstructorUsedError;
  dynamic get title => throw _privateConstructorUsedError;
  dynamic get code => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ColorsCopyWith<Colors> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ColorsCopyWith<$Res> {
  factory $ColorsCopyWith(Colors value, $Res Function(Colors) then) =
      _$ColorsCopyWithImpl<$Res>;
  $Res call({dynamic id, dynamic title, dynamic code});
}

/// @nodoc
class _$ColorsCopyWithImpl<$Res> implements $ColorsCopyWith<$Res> {
  _$ColorsCopyWithImpl(this._value, this._then);

  final Colors _value;
  // ignore: unused_field
  final $Res Function(Colors) _then;

  @override
  $Res call({
    Object? id = freezed,
    Object? title = freezed,
    Object? code = freezed,
  }) {
    return _then(_value.copyWith(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as dynamic,
      title: title == freezed
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as dynamic,
      code: code == freezed
          ? _value.code
          : code // ignore: cast_nullable_to_non_nullable
              as dynamic,
    ));
  }
}

/// @nodoc
abstract class _$$_ColorsCopyWith<$Res> implements $ColorsCopyWith<$Res> {
  factory _$$_ColorsCopyWith(_$_Colors value, $Res Function(_$_Colors) then) =
      __$$_ColorsCopyWithImpl<$Res>;
  @override
  $Res call({dynamic id, dynamic title, dynamic code});
}

/// @nodoc
class __$$_ColorsCopyWithImpl<$Res> extends _$ColorsCopyWithImpl<$Res>
    implements _$$_ColorsCopyWith<$Res> {
  __$$_ColorsCopyWithImpl(_$_Colors _value, $Res Function(_$_Colors) _then)
      : super(_value, (v) => _then(v as _$_Colors));

  @override
  _$_Colors get _value => super._value as _$_Colors;

  @override
  $Res call({
    Object? id = freezed,
    Object? title = freezed,
    Object? code = freezed,
  }) {
    return _then(_$_Colors(
      id: id == freezed ? _value.id : id,
      title: title == freezed ? _value.title : title,
      code: code == freezed ? _value.code : code,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_Colors implements _Colors {
  _$_Colors({required this.id, required this.title, required this.code});

  factory _$_Colors.fromJson(Map<String, dynamic> json) =>
      _$$_ColorsFromJson(json);

  @override
  final dynamic id;
  @override
  final dynamic title;
  @override
  final dynamic code;

  @override
  String toString() {
    return 'Colors(id: $id, title: $title, code: $code)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Colors &&
            const DeepCollectionEquality().equals(other.id, id) &&
            const DeepCollectionEquality().equals(other.title, title) &&
            const DeepCollectionEquality().equals(other.code, code));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(id),
      const DeepCollectionEquality().hash(title),
      const DeepCollectionEquality().hash(code));

  @JsonKey(ignore: true)
  @override
  _$$_ColorsCopyWith<_$_Colors> get copyWith =>
      __$$_ColorsCopyWithImpl<_$_Colors>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_ColorsToJson(
      this,
    );
  }
}

abstract class _Colors implements Colors {
  factory _Colors(
      {required final dynamic id,
      required final dynamic title,
      required final dynamic code}) = _$_Colors;

  factory _Colors.fromJson(Map<String, dynamic> json) = _$_Colors.fromJson;

  @override
  dynamic get id;
  @override
  dynamic get title;
  @override
  dynamic get code;
  @override
  @JsonKey(ignore: true)
  _$$_ColorsCopyWith<_$_Colors> get copyWith =>
      throw _privateConstructorUsedError;
}
