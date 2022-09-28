import 'package:equatable/equatable.dart';

class BasketItemEntity extends Equatable{

  final int id;
  final String title;
  final int quantity;

  const BasketItemEntity({required this.id, required this.title, required this.quantity});

  @override

  List<Object?> get props => [id, title, quantity];

}