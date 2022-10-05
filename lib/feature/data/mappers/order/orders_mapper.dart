import 'package:shop/feature/data/mappers/mappers.dart';
import 'package:shop/feature/data/models/order/orders_model.dart';
import 'package:shop/feature/domain/entities/order/order_entity.dart';

class OrderMapper extends Mappers<OrderModel, OrderEntity>{
  @override
  OrderEntity map(OrderModel entity) {
    return OrderEntity(
        name: entity.name,
        address: entity.address,
        phone: entity.phone,
        email: entity.email,
        comment: entity.comment
    );
  }

}