import 'package:equatable/equatable.dart';

class OrderStatusEntity extends Equatable{
  final int id;
  final String status;

  const OrderStatusEntity({required this.id, required this.status});

  @override

  List<Object?> get props => [id, status];

}