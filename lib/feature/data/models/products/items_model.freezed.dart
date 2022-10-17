// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'items_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

ItemModel _$ItemModelFromJson(Map<String, dynamic> json) {
  return _ItemModel.fromJson(json);
}

/// @nodoc
mixin _$ItemModel {
  int? get id => throw _privateConstructorUsedError;
  String? get title => throw _privateConstructorUsedError;
  String? get slug => throw _privateConstructorUsedError;
  ImageModel? get image => throw _privateConstructorUsedError;
  int? get price => throw _privateConstructorUsedError;
  List<ColorsModel>? get colors => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ItemModelCopyWith<ItemModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ItemModelCopyWith<$Res> {
  factory $ItemModelCopyWith(ItemModel value, $Res Function(ItemModel) then) =
      _$ItemModelCopyWithImpl<$Res>;
  $Res call(
      {int? id,
      String? title,
      String? slug,
      ImageModel? image,
      int? price,
      List<ColorsModel>? colors});

  $ImageModelCopyWith<$Res>? get image;
}

/// @nodoc
class _$ItemModelCopyWithImpl<$Res> implements $ItemModelCopyWith<$Res> {
  _$ItemModelCopyWithImpl(this._value, this._then);

  final ItemModel _value;
  // ignore: unused_field
  final $Res Function(ItemModel) _then;

  @override
  $Res call({
    Object? id = freezed,
    Object? title = freezed,
    Object? slug = freezed,
    Object? image = freezed,
    Object? price = freezed,
    Object? colors = freezed,
  }) {
    return _then(_value.copyWith(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      title: title == freezed
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String?,
      slug: slug == freezed
          ? _value.slug
          : slug // ignore: cast_nullable_to_non_nullable
              as String?,
      image: image == freezed
          ? _value.image
          : image // ignore: cast_nullable_to_non_nullable
              as ImageModel?,
      price: price == freezed
          ? _value.price
          : price // ignore: cast_nullable_to_non_nullable
              as int?,
      colors: colors == freezed
          ? _value.colors
          : colors // ignore: cast_nullable_to_non_nullable
              as List<ColorsModel>?,
    ));
  }

  @override
  $ImageModelCopyWith<$Res>? get image {
    if (_value.image == null) {
      return null;
    }

    return $ImageModelCopyWith<$Res>(_value.image!, (value) {
      return _then(_value.copyWith(image: value));
    });
  }
}

/// @nodoc
abstract class _$$_ItemModelCopyWith<$Res> implements $ItemModelCopyWith<$Res> {
  factory _$$_ItemModelCopyWith(
          _$_ItemModel value, $Res Function(_$_ItemModel) then) =
      __$$_ItemModelCopyWithImpl<$Res>;
  @override
  $Res call(
      {int? id,
      String? title,
      String? slug,
      ImageModel? image,
      int? price,
      List<ColorsModel>? colors});

  @override
  $ImageModelCopyWith<$Res>? get image;
}

/// @nodoc
class __$$_ItemModelCopyWithImpl<$Res> extends _$ItemModelCopyWithImpl<$Res>
    implements _$$_ItemModelCopyWith<$Res> {
  __$$_ItemModelCopyWithImpl(
      _$_ItemModel _value, $Res Function(_$_ItemModel) _then)
      : super(_value, (v) => _then(v as _$_ItemModel));

  @override
  _$_ItemModel get _value => super._value as _$_ItemModel;

  @override
  $Res call({
    Object? id = freezed,
    Object? title = freezed,
    Object? slug = freezed,
    Object? image = freezed,
    Object? price = freezed,
    Object? colors = freezed,
  }) {
    return _then(_$_ItemModel(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      title: title == freezed
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String?,
      slug: slug == freezed
          ? _value.slug
          : slug // ignore: cast_nullable_to_non_nullable
              as String?,
      image: image == freezed
          ? _value.image
          : image // ignore: cast_nullable_to_non_nullable
              as ImageModel?,
      price: price == freezed
          ? _value.price
          : price // ignore: cast_nullable_to_non_nullable
              as int?,
      colors: colors == freezed
          ? _value._colors
          : colors // ignore: cast_nullable_to_non_nullable
              as List<ColorsModel>?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_ItemModel implements _ItemModel {
  _$_ItemModel(
      {required this.id,
      required this.title,
      required this.slug,
      required this.image,
      required this.price,
      required final List<ColorsModel>? colors})
      : _colors = colors;

  factory _$_ItemModel.fromJson(Map<String, dynamic> json) =>
      _$$_ItemModelFromJson(json);

  @override
  final int? id;
  @override
  final String? title;
  @override
  final String? slug;
  @override
  final ImageModel? image;
  @override
  final int? price;
  final List<ColorsModel>? _colors;
  @override
  List<ColorsModel>? get colors {
    final value = _colors;
    if (value == null) return null;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  String toString() {
    return 'ItemModel(id: $id, title: $title, slug: $slug, image: $image, price: $price, colors: $colors)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_ItemModel &&
            const DeepCollectionEquality().equals(other.id, id) &&
            const DeepCollectionEquality().equals(other.title, title) &&
            const DeepCollectionEquality().equals(other.slug, slug) &&
            const DeepCollectionEquality().equals(other.image, image) &&
            const DeepCollectionEquality().equals(other.price, price) &&
            const DeepCollectionEquality().equals(other._colors, _colors));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(id),
      const DeepCollectionEquality().hash(title),
      const DeepCollectionEquality().hash(slug),
      const DeepCollectionEquality().hash(image),
      const DeepCollectionEquality().hash(price),
      const DeepCollectionEquality().hash(_colors));

  @JsonKey(ignore: true)
  @override
  _$$_ItemModelCopyWith<_$_ItemModel> get copyWith =>
      __$$_ItemModelCopyWithImpl<_$_ItemModel>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_ItemModelToJson(
      this,
    );
  }
}

abstract class _ItemModel implements ItemModel {
  factory _ItemModel(
      {required final int? id,
      required final String? title,
      required final String? slug,
      required final ImageModel? image,
      required final int? price,
      required final List<ColorsModel>? colors}) = _$_ItemModel;

  factory _ItemModel.fromJson(Map<String, dynamic> json) =
      _$_ItemModel.fromJson;

  @override
  int? get id;
  @override
  String? get title;
  @override
  String? get slug;
  @override
  ImageModel? get image;
  @override
  int? get price;
  @override
  List<ColorsModel>? get colors;
  @override
  @JsonKey(ignore: true)
  _$$_ItemModelCopyWith<_$_ItemModel> get copyWith =>
      throw _privateConstructorUsedError;
}
