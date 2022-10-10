import 'package:equatable/equatable.dart';

class UserEntity extends Equatable{
  final int? id;
  final String? accessKey;

  const UserEntity({required this.id, required this.accessKey});

  @override

  List<Object?> get props => [id, accessKey];

}