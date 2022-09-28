// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'categories_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

CategoriesModel _$CategoriesModelFromJson(Map<String, dynamic> json) {
  return _CategoriesModel.fromJson(json);
}

/// @nodoc
mixin _$CategoriesModel {
  int get id => throw _privateConstructorUsedError;
  String get title => throw _privateConstructorUsedError;
  String get slug => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $CategoriesModelCopyWith<CategoriesModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CategoriesModelCopyWith<$Res> {
  factory $CategoriesModelCopyWith(
          CategoriesModel value, $Res Function(CategoriesModel) then) =
      _$CategoriesModelCopyWithImpl<$Res>;
  $Res call({int id, String title, String slug});
}

/// @nodoc
class _$CategoriesModelCopyWithImpl<$Res>
    implements $CategoriesModelCopyWith<$Res> {
  _$CategoriesModelCopyWithImpl(this._value, this._then);

  final CategoriesModel _value;
  // ignore: unused_field
  final $Res Function(CategoriesModel) _then;

  @override
  $Res call({
    Object? id = freezed,
    Object? title = freezed,
    Object? slug = freezed,
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
      slug: slug == freezed
          ? _value.slug
          : slug // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
abstract class _$$_CategoriesModelCopyWith<$Res>
    implements $CategoriesModelCopyWith<$Res> {
  factory _$$_CategoriesModelCopyWith(
          _$_CategoriesModel value, $Res Function(_$_CategoriesModel) then) =
      __$$_CategoriesModelCopyWithImpl<$Res>;
  @override
  $Res call({int id, String title, String slug});
}

/// @nodoc
class __$$_CategoriesModelCopyWithImpl<$Res>
    extends _$CategoriesModelCopyWithImpl<$Res>
    implements _$$_CategoriesModelCopyWith<$Res> {
  __$$_CategoriesModelCopyWithImpl(
      _$_CategoriesModel _value, $Res Function(_$_CategoriesModel) _then)
      : super(_value, (v) => _then(v as _$_CategoriesModel));

  @override
  _$_CategoriesModel get _value => super._value as _$_CategoriesModel;

  @override
  $Res call({
    Object? id = freezed,
    Object? title = freezed,
    Object? slug = freezed,
  }) {
    return _then(_$_CategoriesModel(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      title: title == freezed
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      slug: slug == freezed
          ? _value.slug
          : slug // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_CategoriesModel implements _CategoriesModel {
  _$_CategoriesModel(
      {required this.id, required this.title, required this.slug});

  factory _$_CategoriesModel.fromJson(Map<String, dynamic> json) =>
      _$$_CategoriesModelFromJson(json);

  @override
  final int id;
  @override
  final String title;
  @override
  final String slug;

  @override
  String toString() {
    return 'CategoriesModel(id: $id, title: $title, slug: $slug)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_CategoriesModel &&
            const DeepCollectionEquality().equals(other.id, id) &&
            const DeepCollectionEquality().equals(other.title, title) &&
            const DeepCollectionEquality().equals(other.slug, slug));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(id),
      const DeepCollectionEquality().hash(title),
      const DeepCollectionEquality().hash(slug));

  @JsonKey(ignore: true)
  @override
  _$$_CategoriesModelCopyWith<_$_CategoriesModel> get copyWith =>
      __$$_CategoriesModelCopyWithImpl<_$_CategoriesModel>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_CategoriesModelToJson(
      this,
    );
  }
}

abstract class _CategoriesModel implements CategoriesModel {
  factory _CategoriesModel(
      {required final int id,
      required final String title,
      required final String slug}) = _$_CategoriesModel;

  factory _CategoriesModel.fromJson(Map<String, dynamic> json) =
      _$_CategoriesModel.fromJson;

  @override
  int get id;
  @override
  String get title;
  @override
  String get slug;
  @override
  @JsonKey(ignore: true)
  _$$_CategoriesModelCopyWith<_$_CategoriesModel> get copyWith =>
      throw _privateConstructorUsedError;
}
