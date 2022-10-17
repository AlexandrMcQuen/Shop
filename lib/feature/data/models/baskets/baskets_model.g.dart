// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'baskets_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_BasketModel _$$_BasketModelFromJson(Map<String, dynamic> json) =>
    _$_BasketModel(
      id: json['id'] as int?,
      items: (json['items'] as List<dynamic>?)
          ?.map((e) => BasketItemModel.fromJson(e as Map<String, dynamic>))
          .toList(),
      user: json['user'] == null
          ? null
          : UserModel.fromJson(json['user'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$_BasketModelToJson(_$_BasketModel instance) =>
    <String, dynamic>{
      'id': instance.id,
      'items': instance.items,
      'user': instance.user,
    };
