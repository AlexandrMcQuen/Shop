import '../entities/products/item_entity.dart';

abstract class ProductRep{
  Future<ItemEntity?> getProducts({required int id});
}