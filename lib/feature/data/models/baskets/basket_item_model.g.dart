// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'basket_item_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_BasketItemModel _$$_BasketItemModelFromJson(Map<String, dynamic> json) =>
    _$_BasketItemModel(
      id: json['id'] as int?,
      title: json['title'] as String?,
      quantity: json['quantity'] as int?,
      items: json['items'] == null
          ? null
          : ItemModel.fromJson(json['items'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$_BasketItemModelToJson(_$_BasketItemModel instance) =>
    <String, dynamic>{
      'id': instance.id,
      'title': instance.title,
      'quantity': instance.quantity,
      'items': instance.items,
    };
