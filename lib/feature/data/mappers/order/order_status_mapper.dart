import 'package:shop/feature/data/mappers/mappers.dart';
import 'package:shop/feature/data/models/order/order_status.dart';
import 'package:shop/feature/domain/entities/order/status_order_entity.dart';

class OrderStatusMapper extends Mappers<OrderStatusModel, OrderStatusEntity>{

  @override
  OrderStatusEntity map(OrderStatusModel entity) {
    return OrderStatusEntity(
        id: entity.id,
        status: entity.status);
  }
}