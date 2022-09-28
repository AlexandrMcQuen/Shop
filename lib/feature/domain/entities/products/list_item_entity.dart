import 'package:equatable/equatable.dart';

import 'info_entity.dart';
import 'item_entity.dart';

class ListItemEntity extends Equatable{
  final List<ItemEntity> items;
  final InfoEntity info;

  const ListItemEntity({required this.items, required this.info});

  @override

  List<Object?> get props => [items, info];
}