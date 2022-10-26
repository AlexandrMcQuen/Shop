import '../entities/baskets/basket_entity.dart';

abstract class BasketRep{
  Future<BasketEntity?> getBasket();

  Future<void> addItem({required int itemId});

  Future<bool>? deleteItem({required int itemId});

  Future<void> changeQuantity({required int quantity, required int itemId});
}