import 'package:freezed_annotation/freezed_annotation.dart';

part 'order_status.g.dart';
part 'order_status.freezed.dart';

@freezed
class OrderStatusModel with _$OrderStatusModel{
  factory OrderStatusModel({
    required int? id,
    required String? status
}) = _OrderStatusModel;

  factory OrderStatusModel.fromJson(Map<String, dynamic> json) => _$OrderStatusModelFromJson(json);

}