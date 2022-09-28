import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:shop/feature/data/models/products/items_model.dart';
import 'package:shop/feature/data/models/user_model/users_model.dart';

part 'baskets_model.freezed.dart';
part 'baskets_model.g.dart';

@freezed
class BasketModel with _$BasketModel{
  factory BasketModel({
    required int id,
    required List<ItemModel> items,
    required UserModel user
}) = _BasketModel;

  factory BasketModel.fromJson(Map<String, dynamic> json) => _$BasketModelFromJson(json);
}