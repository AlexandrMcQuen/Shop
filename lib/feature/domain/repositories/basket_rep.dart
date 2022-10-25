import '../entities/baskets/basket_entity.dart';

abstract class BasketRep{
  Future<BasketEntity?> getBasket();

  Future<bool> addItem({required int itemId});

  Future<bool> deleteItem({required int itemId});

  Future<bool> changeQuantity({required int quantity, required int itemId});
}