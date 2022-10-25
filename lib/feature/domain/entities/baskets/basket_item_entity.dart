import 'package:equatable/equatable.dart';
import 'package:shop/feature/domain/entities/products/item_entity.dart';

class BasketItemEntity extends Equatable{

  final int? id;
  final String? title;
  final int? quantity;
  final ItemEntity? item;

  const BasketItemEntity({required this.id, required this.title, required this.quantity, required this.item});

  @override

  List<Object?> get props => [id, title, quantity, item];

}