import '../entities/products/item_entity.dart';

abstract class ProductsRep{
  Future<ItemEntity> getProducts({required int id});
}