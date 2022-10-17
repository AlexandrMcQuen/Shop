import 'package:shop/feature/data/mappers/products/colors_mapper.dart';
import 'package:shop/feature/domain/entities/products/item_entity.dart';

import '../../models/products/items_model.dart';
import '../mappers.dart';
import 'image_mapper.dart';

class ItemsMapper extends Mappers<ItemModel, ItemEntity>{
  final ColorsMapper colorsMapper;
  final ImageMapper imageMapper;

  ItemsMapper({required this.colorsMapper, required this.imageMapper});

  @override
  ItemEntity? map(ItemModel? entity) {
    return ItemEntity(
        id: entity?.id ?? 0,
        title: entity?.title ?? '',
        slug: entity?.slug ?? '',
        image: imageMapper.map(entity?.image),
        price: entity?.price ?? 0,
        colors: colorsMapper.mapList(entity?.colors)
    );
  }
}