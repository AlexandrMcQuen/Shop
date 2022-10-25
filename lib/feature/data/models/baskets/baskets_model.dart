import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:shop/feature/data/models/baskets/basket_item_model.dart';
import 'package:shop/feature/data/models/user/users_model.dart';

part 'baskets_model.freezed.dart';
part 'baskets_model.g.dart';

@freezed
class BasketModel with _$BasketModel{
  factory BasketModel({
    required int? id,
    required List<BasketItemModel?>? items,
    required UserModel? user
}) = _BasketModel;

  factory BasketModel.fromJson(Map<String, dynamic> json) => _$BasketModelFromJson(json);
}