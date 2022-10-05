import '../entities/baskets/basket_entity.dart';

abstract class BasketRepo{
  Future<BasketEntity> getBasket();

  Future addItem({required int itemId});

  Future deleteItem({required int itemId});

  Future changeQuantity({required int quantity});
}