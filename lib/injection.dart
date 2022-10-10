import 'package:flutter/cupertino.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:shop/feature/data/data_source/store.dart';
import 'package:shop/feature/data/mappers/user/user_mapper.dart';
import 'package:shop/feature/data/repositories/users_rep.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

Future<Widget> injection(Widget app) async{
  final store = Store(await SharedPreferences.getInstance());

  final userMapper = UserMapper();

  final userRep = UserReps(store, userMapper);

  return MultiRepositoryProvider(
      providers: [
        RepositoryProvider<UserReps>(
        create: (_) => userRep
      ),
      ],
      child: app);
}