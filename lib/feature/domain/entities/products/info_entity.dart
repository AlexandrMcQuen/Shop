import 'package:equatable/equatable.dart';

class InfoEntity extends Equatable{
  final int page;
  final int pages;
  final int total;

  const InfoEntity({required this.page, required this.pages, required this.total});

  @override

  List<Object?> get props => [page, pages, total];
}