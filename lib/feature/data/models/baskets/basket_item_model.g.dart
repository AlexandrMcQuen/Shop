// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'basket_item_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_BasketItemModel _$$_BasketItemModelFromJson(Map<String, dynamic> json) =>
    _$_BasketItemModel(
      id: json['id'] as int?,
      price: json['price'] as int?,
      quantity: json['quantity'] as int?,
      product: json['product'] == null
          ? null
          : ItemModel.fromJson(json['product'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$_BasketItemModelToJson(_$_BasketItemModel instance) =>
    <String, dynamic>{
      'id': instance.id,
      'price': instance.price,
      'quantity': instance.quantity,
      'product': instance.product,
    };
