import 'package:shop/feature/data/mappers/mappers.dart';
import 'package:shop/feature/data/models/categories/categories_model.dart';
import 'package:shop/feature/domain/entities/categories/categories_entity.dart';

class CategoriesMapper extends Mappers<CategoriesModel, CategoriesEntity>{
  @override
  CategoriesEntity map(CategoriesModel entity) {
    return CategoriesEntity(
        id: entity.id,
        title: entity.title,
        slug: entity.slug);
  }
}