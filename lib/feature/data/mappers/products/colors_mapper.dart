import 'package:shop/feature/data/mappers/mappers.dart';
import 'package:shop/feature/data/models/products/colors_model.dart';
import 'package:shop/feature/domain/entities/products/colors_entity.dart';

class ColorsMapper extends Mappers<ColorsModel, ColorsEntity>{
  @override
  ColorsEntity map(ColorsModel entity) {
     return ColorsEntity(
       id: entity.id,
       title: entity.title,
       code: entity.code
     );
  }
}