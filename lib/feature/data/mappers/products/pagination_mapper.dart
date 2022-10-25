import 'package:shop/feature/data/mappers/mappers.dart';
import 'package:shop/feature/domain/entities/products/pagination_entity.dart';
import '../../models/products/pagination_model.dart';

class PaginationMapper extends Mappers<PaginationModel, PaginationEntity>{
  @override
  PaginationEntity? map(PaginationModel? entity) {
    return PaginationEntity(
        page: entity?.page ?? 0,
        pages: entity?.pages ?? 0,
        total: entity?.total ?? 0,
        );
  }
}