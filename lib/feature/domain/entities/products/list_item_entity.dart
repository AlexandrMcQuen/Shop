import 'package:equatable/equatable.dart';

import 'info_entity.dart';
import 'item_entity.dart';

class ListItemEntity extends Equatable{
  final List<ItemEntity> items;


  const ListItemEntity({required this.items, });

  @override

  List<Object?> get props => [items];
}