import 'package:shop/feature/domain/entities/user/user_entity.dart';

abstract class UserRep{
  Future<UserEntity?> getUser();
}