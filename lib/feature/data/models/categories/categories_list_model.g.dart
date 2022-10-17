// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'categories_list_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_CategoriesListModel _$$_CategoriesListModelFromJson(
        Map<String, dynamic> json) =>
    _$_CategoriesListModel(
      items: (json['items'] as List<dynamic>?)
          ?.map((e) => CategoriesModel.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$_CategoriesListModelToJson(
        _$_CategoriesListModel instance) =>
    <String, dynamic>{
      'items': instance.items,
    };
