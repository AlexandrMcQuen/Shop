// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'basket_item_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

BasketItemModel _$BasketItemModelFromJson(Map<String, dynamic> json) {
  return _BasketItemModel.fromJson(json);
}

/// @nodoc
mixin _$BasketItemModel {
  int? get id => throw _privateConstructorUsedError;
  int? get price => throw _privateConstructorUsedError;
  int? get quantity => throw _privateConstructorUsedError;
  ItemModel? get product => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $BasketItemModelCopyWith<BasketItemModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $BasketItemModelCopyWith<$Res> {
  factory $BasketItemModelCopyWith(
          BasketItemModel value, $Res Function(BasketItemModel) then) =
      _$BasketItemModelCopyWithImpl<$Res>;
  $Res call({int? id, int? price, int? quantity, ItemModel? product});

  $ItemModelCopyWith<$Res>? get product;
}

/// @nodoc
class _$BasketItemModelCopyWithImpl<$Res>
    implements $BasketItemModelCopyWith<$Res> {
  _$BasketItemModelCopyWithImpl(this._value, this._then);

  final BasketItemModel _value;
  // ignore: unused_field
  final $Res Function(BasketItemModel) _then;

  @override
  $Res call({
    Object? id = freezed,
    Object? price = freezed,
    Object? quantity = freezed,
    Object? product = freezed,
  }) {
    return _then(_value.copyWith(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      price: price == freezed
          ? _value.price
          : price // ignore: cast_nullable_to_non_nullable
              as int?,
      quantity: quantity == freezed
          ? _value.quantity
          : quantity // ignore: cast_nullable_to_non_nullable
              as int?,
      product: product == freezed
          ? _value.product
          : product // ignore: cast_nullable_to_non_nullable
              as ItemModel?,
    ));
  }

  @override
  $ItemModelCopyWith<$Res>? get product {
    if (_value.product == null) {
      return null;
    }

    return $ItemModelCopyWith<$Res>(_value.product!, (value) {
      return _then(_value.copyWith(product: value));
    });
  }
}

/// @nodoc
abstract class _$$_BasketItemModelCopyWith<$Res>
    implements $BasketItemModelCopyWith<$Res> {
  factory _$$_BasketItemModelCopyWith(
          _$_BasketItemModel value, $Res Function(_$_BasketItemModel) then) =
      __$$_BasketItemModelCopyWithImpl<$Res>;
  @override
  $Res call({int? id, int? price, int? quantity, ItemModel? product});

  @override
  $ItemModelCopyWith<$Res>? get product;
}

/// @nodoc
class __$$_BasketItemModelCopyWithImpl<$Res>
    extends _$BasketItemModelCopyWithImpl<$Res>
    implements _$$_BasketItemModelCopyWith<$Res> {
  __$$_BasketItemModelCopyWithImpl(
      _$_BasketItemModel _value, $Res Function(_$_BasketItemModel) _then)
      : super(_value, (v) => _then(v as _$_BasketItemModel));

  @override
  _$_BasketItemModel get _value => super._value as _$_BasketItemModel;

  @override
  $Res call({
    Object? id = freezed,
    Object? price = freezed,
    Object? quantity = freezed,
    Object? product = freezed,
  }) {
    return _then(_$_BasketItemModel(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      price: price == freezed
          ? _value.price
          : price // ignore: cast_nullable_to_non_nullable
              as int?,
      quantity: quantity == freezed
          ? _value.quantity
          : quantity // ignore: cast_nullable_to_non_nullable
              as int?,
      product: product == freezed
          ? _value.product
          : product // ignore: cast_nullable_to_non_nullable
              as ItemModel?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_BasketItemModel implements _BasketItemModel {
  _$_BasketItemModel(
      {required this.id,
      required this.price,
      required this.quantity,
      required this.product});

  factory _$_BasketItemModel.fromJson(Map<String, dynamic> json) =>
      _$$_BasketItemModelFromJson(json);

  @override
  final int? id;
  @override
  final int? price;
  @override
  final int? quantity;
  @override
  final ItemModel? product;

  @override
  String toString() {
    return 'BasketItemModel(id: $id, price: $price, quantity: $quantity, product: $product)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_BasketItemModel &&
            const DeepCollectionEquality().equals(other.id, id) &&
            const DeepCollectionEquality().equals(other.price, price) &&
            const DeepCollectionEquality().equals(other.quantity, quantity) &&
            const DeepCollectionEquality().equals(other.product, product));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(id),
      const DeepCollectionEquality().hash(price),
      const DeepCollectionEquality().hash(quantity),
      const DeepCollectionEquality().hash(product));

  @JsonKey(ignore: true)
  @override
  _$$_BasketItemModelCopyWith<_$_BasketItemModel> get copyWith =>
      __$$_BasketItemModelCopyWithImpl<_$_BasketItemModel>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_BasketItemModelToJson(
      this,
    );
  }
}

abstract class _BasketItemModel implements BasketItemModel {
  factory _BasketItemModel(
      {required final int? id,
      required final int? price,
      required final int? quantity,
      required final ItemModel? product}) = _$_BasketItemModel;

  factory _BasketItemModel.fromJson(Map<String, dynamic> json) =
      _$_BasketItemModel.fromJson;

  @override
  int? get id;
  @override
  int? get price;
  @override
  int? get quantity;
  @override
  ItemModel? get product;
  @override
  @JsonKey(ignore: true)
  _$$_BasketItemModelCopyWith<_$_BasketItemModel> get copyWith =>
      throw _privateConstructorUsedError;
}
