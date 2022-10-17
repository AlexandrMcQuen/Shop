import 'package:freezed_annotation/freezed_annotation.dart';

import 'categories_model.dart';

part 'categories_list_model.g.dart';
part 'categories_list_model.freezed.dart';

@freezed
class CategoriesListModel with _$CategoriesListModel{
  factory CategoriesListModel({
    required List<CategoriesModel>? items
}) = _CategoriesListModel;

  factory CategoriesListModel.fromJson(Map<String, dynamic> json) => _$CategoriesListModelFromJson(json);
}