import 'package:equatable/equatable.dart';

class InfoEntity extends Equatable{
  final int page;
  final int count;

  const InfoEntity({required this.page, required this.count});

  @override

  List<Object?> get props => [page, count];
}