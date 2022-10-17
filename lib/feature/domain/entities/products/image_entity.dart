import 'package:equatable/equatable.dart';
import 'package:shop/feature/domain/entities/products/file_entity.dart';

class ImageEntity extends Equatable{
  final FileEntity? file;

  const ImageEntity({required this.file});

  @override

  List<Object?> get props => [file];
}