import 'package:equatable/equatable.dart';

import 'pagination_entity.dart';
import 'item_entity.dart';

class ListItemEntity extends Equatable{
  final List<ItemEntity>? items;
  final PaginationEntity? pagination;


  const ListItemEntity({required this.items, required this.pagination});

  @override
  List<Object?> get props => [items, pagination];
}