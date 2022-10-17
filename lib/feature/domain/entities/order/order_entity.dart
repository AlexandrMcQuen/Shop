import 'package:equatable/equatable.dart';

class OrderEntity extends Equatable{
  final String? name;
  final String? address;
  final String? phone;
  final String? email;
  final String? comment;

  const OrderEntity({required this.name, required this.address, required this.phone, required this.email, required this.comment});

  @override

  List<Object?> get props => [name, address, phone, email, comment];
}