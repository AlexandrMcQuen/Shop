import 'package:shop/feature/data/mappers/mappers.dart';
import 'package:shop/feature/data/mappers/products/info_mapper.dart';
import 'package:shop/feature/data/mappers/products/items_mapper.dart';
import 'package:shop/feature/data/models/products/list_item_model.dart';
import 'package:shop/feature/domain/entities/products/list_item_entity.dart';

class ListItemMapper extends Mappers<ListItemModel, ListItemEntity>{
  final InfoMapper infoMapper;
  final ItemsMapper itemsMapper;

  ListItemMapper({required this.itemsMapper, required this.infoMapper});

  @override
  ListItemEntity map(ListItemModel entity) {
    return ListItemEntity(
        items: itemsMapper.mapList(entity.items),
        info: infoMapper.map(entity.info),
    );
  }
}