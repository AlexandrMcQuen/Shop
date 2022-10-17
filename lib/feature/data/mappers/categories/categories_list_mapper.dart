import 'package:shop/feature/data/mappers/categories/categories_mapper.dart';
import 'package:shop/feature/data/mappers/mappers.dart';
import 'package:shop/feature/data/models/categories/categories_list_model.dart';
import 'package:shop/feature/domain/entities/categories/categories_list_entity.dart';

class CategoriesListMapper extends Mappers<CategoriesListModel, CategoriesListEntity>{
  final CategoriesMapper categoriesMapper;

  CategoriesListMapper({required this.categoriesMapper});

  @override
  CategoriesListEntity? map(CategoriesListModel? entity) {
    return CategoriesListEntity(
        items: categoriesMapper.mapList(entity?.items));
  }

}