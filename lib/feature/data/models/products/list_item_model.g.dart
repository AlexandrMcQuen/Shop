// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'list_item_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_ListItemModel _$$_ListItemModelFromJson(Map<String, dynamic> json) =>
    _$_ListItemModel(
      items: (json['items'] as List<dynamic>?)
          ?.map((e) => ItemModel.fromJson(e as Map<String, dynamic>))
          .toList(),
      paging: json['paging'] == null
          ? null
          : PaginationModel.fromJson(json['paging'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$_ListItemModelToJson(_$_ListItemModel instance) =>
    <String, dynamic>{
      'items': instance.items,
      'paging': instance.paging,
    };
