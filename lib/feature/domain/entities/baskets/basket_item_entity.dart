import 'package:equatable/equatable.dart';
import 'package:shop/feature/domain/entities/products/item_entity.dart';

class BasketItemEntity extends Equatable{

  const BasketItemEntity({required this.id, required this.quantity, required this.product, required this.price});

  final int? id;
  final int? quantity;
  final int? price;
  final ItemEntity? product;

  @override
  List<Object?> get props => [id, quantity, product, price];
}

