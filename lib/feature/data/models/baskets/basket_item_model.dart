import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:shop/feature/data/models/products/items_model.dart';

part 'basket_item_model.g.dart';
part 'basket_item_model.freezed.dart';

@freezed
class BasketItemModel with _$BasketItemModel{
  factory BasketItemModel({
    required int? id,
    required int? price,
    required int? quantity,
    required ItemModel? product
}) = _BasketItemModel;

  factory BasketItemModel.fromJson(Map<String, dynamic> json) => _$BasketItemModelFromJson(json);
}