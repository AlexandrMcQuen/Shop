import 'dart:convert';

import 'package:http/http.dart' as http;
import 'package:shop/feature/data/mappers/user/user_mapper.dart';
import 'package:shop/feature/data/models/user/users_model.dart';
import 'package:shop/feature/domain/entities/user/user_entity.dart';
import 'package:shop/feature/domain/repositories/users_rep.dart';

import '../data_source/store.dart';

class UserRepData implements UserRep{
  final UserMapper userMapper;
  final _baseUrl = 'vue-study.skillbox.cc';
  final Store store;

  UserRepData(this.store, this.userMapper);

  @override
  Future<UserEntity?> getUser() async {
    try{
      var request = await http.get(Uri.https(_baseUrl, '/api/users/accessKey'));
      var jsonRequest = json.decode(request.body);
      final response = UserModel.fromJson(jsonRequest);
      final user = userMapper.map(response);
      await store.setAccessKey(user?.accessKey);
      print('$user');
      return user;
    } catch (e){
      throw Error();
    }
  }

}