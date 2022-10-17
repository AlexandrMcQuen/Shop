import 'package:shop/feature/data/mappers/mappers.dart';
import 'package:shop/feature/data/mappers/products/items_mapper.dart';
import 'package:shop/feature/data/models/baskets/basket_item_model.dart';
import 'package:shop/feature/domain/entities/baskets/basket_item_entity.dart';

class BasketsItemMapper extends Mappers<BasketItemModel, BasketItemEntity>{
  final ItemsMapper itemsMapper;

  BasketsItemMapper({required this.itemsMapper});

  @override
  BasketItemEntity? map(BasketItemModel? entity) {
    return BasketItemEntity(
        id: entity?.id ?? 0,
        title: entity?.title ?? '',
        quantity: entity?.quantity ?? 0,
        item: itemsMapper.map(entity?.items));
  }
}