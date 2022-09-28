import 'package:freezed_annotation/freezed_annotation.dart';

part 'orders_model.freezed.dart';
part 'orders_model.g.dart';

@freezed
class OrderModel with _$OrderModel{
  factory OrderModel({
    required String name,
    required String address,
    required String phone,
    required String email,
    required String comment
}) = _OrderModel;

  factory OrderModel.fromJson(Map<String, dynamic> json) => _$OrderModelFromJson(json);
}