import 'package:shop/feature/data/mappers/mappers.dart';
import 'package:shop/feature/data/models/products/file_model.dart';
import 'package:shop/feature/domain/entities/products/file_entity.dart';

class FileMapper extends Mappers<FileModel, FileEntity>{
  @override
  FileEntity? map(FileModel? entity) {
    return FileEntity(
        url: entity?.url ?? '',
        name: entity?.name ?? '',
        originalName: entity?.originalName ?? '',
        extension: entity?.extension ?? '',
        size: entity?.size ?? '');
  }
}