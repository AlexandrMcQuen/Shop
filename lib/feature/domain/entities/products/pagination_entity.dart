import 'package:equatable/equatable.dart';

class PaginationEntity extends Equatable{
  final int? page;
  final int? pages;
  final int? total;

  const PaginationEntity({required this.page, required this.pages, required this.total});

  @override

  List<Object?> get props => [page, pages, total];
}