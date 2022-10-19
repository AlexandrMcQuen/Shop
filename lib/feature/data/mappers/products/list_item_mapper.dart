import 'package:shop/feature/data/mappers/mappers.dart';
import 'package:shop/feature/data/mappers/products/pagination_mapper.dart';
import 'package:shop/feature/data/mappers/products/items_mapper.dart';
import 'package:shop/feature/data/models/products/list_item_model.dart';
import 'package:shop/feature/domain/entities/products/list_item_entity.dart';

class ListItemMapper extends Mappers<ListItemModel, ListItemEntity>{
  final PaginationMapper paginationMapper;
  final ItemsMapper itemsMapper;

  ListItemMapper({required this.itemsMapper, required this.paginationMapper});

  @override
  ListItemEntity? map(ListItemModel? entity) {
    return ListItemEntity(
        items: itemsMapper.mapList(entity?.items),
        pagination: paginationMapper.map(entity?.paging),
    );
  }
}