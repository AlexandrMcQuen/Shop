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
  int get id => throw _privateConstructorUsedError;
  String get title => throw _privateConstructorUsedError;
  int get quantity => throw _privateConstructorUsedError;
  ItemModel get items => throw _privateConstructorUsedError;

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
  $Res call({int id, String title, int quantity, ItemModel items});

  $ItemModelCopyWith<$Res> get items;
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
    Object? title = freezed,
    Object? quantity = freezed,
    Object? items = freezed,
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
      quantity: quantity == freezed
          ? _value.quantity
          : quantity // ignore: cast_nullable_to_non_nullable
              as int,
      items: items == freezed
          ? _value.items
          : items // ignore: cast_nullable_to_non_nullable
              as ItemModel,
    ));
  }

  @override
  $ItemModelCopyWith<$Res> get items {
    return $ItemModelCopyWith<$Res>(_value.items, (value) {
      return _then(_value.copyWith(items: value));
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
  $Res call({int id, String title, int quantity, ItemModel items});

  @override
  $ItemModelCopyWith<$Res> get items;
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
    Object? title = freezed,
    Object? quantity = freezed,
    Object? items = freezed,
  }) {
    return _then(_$_BasketItemModel(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      title: title == freezed
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      quantity: quantity == freezed
          ? _value.quantity
          : quantity // ignore: cast_nullable_to_non_nullable
              as int,
      items: items == freezed
          ? _value.items
          : items // ignore: cast_nullable_to_non_nullable
              as ItemModel,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_BasketItemModel implements _BasketItemModel {
  _$_BasketItemModel(
      {required this.id,
      required this.title,
      required this.quantity,
      required this.items});

  factory _$_BasketItemModel.fromJson(Map<String, dynamic> json) =>
      _$$_BasketItemModelFromJson(json);

  @override
  final int id;
  @override
  final String title;
  @override
  final int quantity;
  @override
  final ItemModel items;

  @override
  String toString() {
    return 'BasketItemModel(id: $id, title: $title, quantity: $quantity, items: $items)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_BasketItemModel &&
            const DeepCollectionEquality().equals(other.id, id) &&
            const DeepCollectionEquality().equals(other.title, title) &&
            const DeepCollectionEquality().equals(other.quantity, quantity) &&
            const DeepCollectionEquality().equals(other.items, items));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(id),
      const DeepCollectionEquality().hash(title),
      const DeepCollectionEquality().hash(quantity),
      const DeepCollectionEquality().hash(items));

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
      {required final int id,
      required final String title,
      required final int quantity,
      required final ItemModel items}) = _$_BasketItemModel;

  factory _BasketItemModel.fromJson(Map<String, dynamic> json) =
      _$_BasketItemModel.fromJson;

  @override
  int get id;
  @override
  String get title;
  @override
  int get quantity;
  @override
  ItemModel get items;
  @override
  @JsonKey(ignore: true)
  _$$_BasketItemModelCopyWith<_$_BasketItemModel> get copyWith =>
      throw _privateConstructorUsedError;
}
