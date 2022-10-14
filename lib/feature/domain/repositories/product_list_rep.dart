import 'package:shop/feature/domain/entities/categories/categories_list_entity.dart';
import 'package:shop/feature/domain/entities/products/list_item_entity.dart';



abstract class ProductListRep{
  Future<ListItemEntity> getAll({required String id, required int page});

  Future<CategoriesListEntity> getCategories();
}