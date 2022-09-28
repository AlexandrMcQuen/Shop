import 'package:equatable/equatable.dart';

import 'categories_entity.dart';

class CategoriesListEntity extends Equatable{
  final List<CategoriesEntity> items;

  const CategoriesListEntity({required this.items});

  @override

  List<Object?> get props => [items];
}