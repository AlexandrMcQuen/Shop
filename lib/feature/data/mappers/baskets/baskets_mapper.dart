import 'package:shop/feature/data/mappers/baskets/baskets_item_mapper.dart';
import 'package:shop/feature/data/mappers/mappers.dart';
import 'package:shop/feature/data/mappers/user/user_mapper.dart';
import 'package:shop/feature/data/models/baskets/baskets_model.dart';
import 'package:shop/feature/domain/entities/baskets/basket_entity.dart';

class BasketMapper extends Mappers<BasketModel, BasketEntity>{
  final BasketsItemMapper basketsItemMapper;
  final UserMapper userMapper;

  BasketMapper({required this.userMapper, required this.basketsItemMapper});

  @override
  BasketEntity map(BasketModel entity) {
    return BasketEntity(
        id: entity.id,
        items: basketsItemMapper.mapList(entity.items),
        user: userMapper.map(entity.user)
    );
  }

}