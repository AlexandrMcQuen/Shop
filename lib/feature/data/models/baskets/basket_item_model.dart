import 'package:freezed_annotation/freezed_annotation.dart';

import '../products/items_model.dart';

part 'basket_item_model.freezed.dart';
part 'basket_item_model.g.dart';

@freezed
class BasketItemModel with _$BasketItemModel{
  factory BasketItemModel({
    required int? id,
    required String? title,
    required int? quantity,
    required ItemModel? items
}) = _BasketItemModel;

  factory BasketItemModel.fromJson(Map<String, dynamic> json) => _$BasketItemModelFromJson(json);
}