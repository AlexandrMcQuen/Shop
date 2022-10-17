import 'package:equatable/equatable.dart';
import 'package:shop/feature/domain/entities/products/image_entity.dart';

import 'colors_entity.dart';

class ItemEntity extends Equatable{
  final int? id;
  final String? title;
  final String? slug;
  final ImageEntity? image;
  final int? price;
  final List<ColorsEntity>? colors;

  const ItemEntity({
    required this.id,
    required this.title,
    required this.slug,
    required this.image,
    required this.price,
    required this.colors});

  @override

  List<Object?> get props => [id, title, slug, image, price, colors];
}