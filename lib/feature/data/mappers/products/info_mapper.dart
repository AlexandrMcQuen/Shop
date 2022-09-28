import 'package:shop/feature/data/mappers/mappers.dart';
import 'package:shop/feature/domain/entities/products/info_entity.dart';
import '../../models/products/info_model.dart';

class InfoMapper extends Mappers<InfoModel, InfoEntity>{
  @override
  InfoEntity map(InfoModel entity) {
    return InfoEntity(
        page: entity.page,
        count: entity.count);
  }
}