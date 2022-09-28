import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:shop/feature/data/models/products/image_model.dart';

import 'colors_model.dart';

part 'items_model.freezed.dart';
part 'items_model.g.dart';

@freezed
class ItemModel with _$ItemModel{
  factory ItemModel({
    required int id,
    required String title,
    required String slug,
    required ImageModel image,
    required int price,
    required List<ColorsModel> colors
}) = _ItemModel;

  factory ItemModel.fromJson(Map<String, dynamic> json) => _$ItemModelFromJson(json);
}