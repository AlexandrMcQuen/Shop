import 'package:shop/feature/data/mappers/products/items_mapper.dart';
import 'package:shop/feature/data/models/baskets/basket_item_model.dart';
import 'package:shop/feature/domain/entities/baskets/basket_item_entity.dart';

import '../mappers.dart';

class BasketItemMapper extends Mappers<BasketItemModel, BasketItemEntity>{
  BasketItemMapper({required this.itemsMapper});

  final ItemsMapper itemsMapper;

  @override
  BasketItemEntity? map(BasketItemModel? entity) {
    return BasketItemEntity(
        id: entity?.id ?? 0,
        quantity: entity?.quantity ?? 0,
        product: itemsMapper.map(entity?.product),
        price: entity?.price ?? 0
    );
  }
}