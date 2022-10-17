import 'package:shop/feature/data/mappers/mappers.dart';
import 'package:shop/feature/data/mappers/products/file_mapper.dart';
import 'package:shop/feature/data/models/products/image_model.dart';
import 'package:shop/feature/domain/entities/products/image_entity.dart';

class ImageMapper extends Mappers<ImageModel, ImageEntity>{
  final FileMapper fileMapper;

  ImageMapper({required this.fileMapper});

  @override
  ImageEntity? map(ImageModel? entity) {
    return ImageEntity(
        file: fileMapper.map(entity?.file));
  }

}