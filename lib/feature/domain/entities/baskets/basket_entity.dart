import 'package:equatable/equatable.dart';
import 'package:shop/feature/domain/entities/baskets/basket_item_entity.dart';

import '../user/user_entity.dart';

class BasketEntity extends Equatable{
  final int? id;
  final List<BasketItemEntity?> items;
  final UserEntity? user;

  const BasketEntity({required this.id, required this.items, required this.user});

  @override
  List<Object?> get props => [id, items, user];

}