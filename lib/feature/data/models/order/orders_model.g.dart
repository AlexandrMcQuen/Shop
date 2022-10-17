// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'orders_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_OrderModel _$$_OrderModelFromJson(Map<String, dynamic> json) =>
    _$_OrderModel(
      name: json['name'] as String?,
      address: json['address'] as String?,
      phone: json['phone'] as String?,
      email: json['email'] as String?,
      comment: json['comment'] as String?,
    );

Map<String, dynamic> _$$_OrderModelToJson(_$_OrderModel instance) =>
    <String, dynamic>{
      'name': instance.name,
      'address': instance.address,
      'phone': instance.phone,
      'email': instance.email,
      'comment': instance.comment,
    };
