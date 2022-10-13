import '../entities/order/order_entity.dart';
import '../entities/order/status_order_entity.dart';

abstract class OrderRep{
  Future<OrderEntity> createOrder(
      {required String name,
        required String address,
        required String phone,
        required String email,
        required String comment
  });

  Future<OrderStatusEntity> statusOrder({required String id});

}