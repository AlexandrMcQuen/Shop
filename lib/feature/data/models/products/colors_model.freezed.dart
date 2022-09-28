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

ColorsModel _$ColorsModelFromJson(Map<String, dynamic> json) {
  return _ColorsModel.fromJson(json);
}

/// @nodoc
mixin _$ColorsModel {
  int get id => throw _privateConstructorUsedError;
  String get title => throw _privateConstructorUsedError;
  String get code => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ColorsModelCopyWith<ColorsModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ColorsModelCopyWith<$Res> {
  factory $ColorsModelCopyWith(
          ColorsModel value, $Res Function(ColorsModel) then) =
      _$ColorsModelCopyWithImpl<$Res>;
  $Res call({int id, String title, String code});
}

/// @nodoc
class _$ColorsModelCopyWithImpl<$Res> implements $ColorsModelCopyWith<$Res> {
  _$ColorsModelCopyWithImpl(this._value, this._then);

  final ColorsModel _value;
  // ignore: unused_field
  final $Res Function(ColorsModel) _then;

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
              as int,
      title: title == freezed
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      code: code == freezed
          ? _value.code
          : code // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
abstract class _$$_ColorsModelCopyWith<$Res>
    implements $ColorsModelCopyWith<$Res> {
  factory _$$_ColorsModelCopyWith(
          _$_ColorsModel value, $Res Function(_$_ColorsModel) then) =
      __$$_ColorsModelCopyWithImpl<$Res>;
  @override
  $Res call({int id, String title, String code});
}

/// @nodoc
class __$$_ColorsModelCopyWithImpl<$Res> extends _$ColorsModelCopyWithImpl<$Res>
    implements _$$_ColorsModelCopyWith<$Res> {
  __$$_ColorsModelCopyWithImpl(
      _$_ColorsModel _value, $Res Function(_$_ColorsModel) _then)
      : super(_value, (v) => _then(v as _$_ColorsModel));

  @override
  _$_ColorsModel get _value => super._value as _$_ColorsModel;

  @override
  $Res call({
    Object? id = freezed,
    Object? title = freezed,
    Object? code = freezed,
  }) {
    return _then(_$_ColorsModel(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      title: title == freezed
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      code: code == freezed
          ? _value.code
          : code // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_ColorsModel implements _ColorsModel {
  _$_ColorsModel({required this.id, required this.title, required this.code});

  factory _$_ColorsModel.fromJson(Map<String, dynamic> json) =>
      _$$_ColorsModelFromJson(json);

  @override
  final int id;
  @override
  final String title;
  @override
  final String code;

  @override
  String toString() {
    return 'ColorsModel(id: $id, title: $title, code: $code)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_ColorsModel &&
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
  _$$_ColorsModelCopyWith<_$_ColorsModel> get copyWith =>
      __$$_ColorsModelCopyWithImpl<_$_ColorsModel>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_ColorsModelToJson(
      this,
    );
  }
}

abstract class _ColorsModel implements ColorsModel {
  factory _ColorsModel(
      {required final int id,
      required final String title,
      required final String code}) = _$_ColorsModel;

  factory _ColorsModel.fromJson(Map<String, dynamic> json) =
      _$_ColorsModel.fromJson;

  @override
  int get id;
  @override
  String get title;
  @override
  String get code;
  @override
  @JsonKey(ignore: true)
  _$$_ColorsModelCopyWith<_$_ColorsModel> get copyWith =>
      throw _privateConstructorUsedError;
}
