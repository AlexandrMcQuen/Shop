import 'package:shop/feature/domain/entities/user/user_entity.dart';

abstract class UsersRepo{
  Future<UserEntity?> getUser();
}