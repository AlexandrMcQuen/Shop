import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:shop/feature/data/models/products/info_model.dart';

import 'items_model.dart';

part 'list_item_model.freezed.dart';
part 'list_item_model.g.dart';

@freezed
class ListItemModel with _$ListItemModel{
  factory ListItemModel({
    required List<ItemModel> items,
    required InfoModel info,
}) = _ListItemModel;

  factory ListItemModel.fromJson(Map<String, dynamic> json) => _$ListItemModelFromJson(json);
}