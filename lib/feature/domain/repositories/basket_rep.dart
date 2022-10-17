import '../entities/baskets/basket_entity.dart';

abstract class BasketRep{
  Future<BasketEntity?> getBasket();

  Future addItem({required int itemId});

  Future deleteItem({required int itemId});

  Future changeQuantity({required int quantity, required int itemId});
}