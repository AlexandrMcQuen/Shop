import 'package:shop/feature/data/mappers/mappers.dart';
import 'package:shop/feature/data/models/user/users_model.dart';

import '../../../domain/entities/user/user_entity.dart';

class UserMapper extends Mappers<UserModel, UserEntity>{
  @override
  UserEntity map(UserModel entity) {
    return UserEntity(
        id: entity.id,
        accessKey: entity.accessKey);
  }
}