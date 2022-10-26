
import 'package:shop/feature/data/mappers/baskets/basket_item_mapper.dart';
import 'package:shop/feature/data/mappers/mappers.dart';
import 'package:shop/feature/data/mappers/products/items_mapper.dart';
import 'package:shop/feature/data/mappers/user/user_mapper.dart';
import 'package:shop/feature/data/models/baskets/baskets_model.dart';
import 'package:shop/feature/domain/entities/baskets/basket_entity.dart';

class BasketMapper extends Mappers<BasketModel, BasketEntity>{
  final BasketItemMapper basketItemMapper;
  final UserMapper userMapper;

  BasketMapper({required this.userMapper, required this.basketItemMapper});

  @override
  BasketEntity? map(BasketModel? entity) {
    return BasketEntity(
        id: entity?.id ?? 0,
        items: basketItemMapper.mapList(entity?.items),
        user: userMapper.map(entity?.user)
    );
  }

}