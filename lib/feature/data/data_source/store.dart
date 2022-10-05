import 'package:shared_preferences/shared_preferences.dart';
import 'package:shop/feature/data/data_source/base_store.dart';
import 'package:shop/feature/data/data_source/user_access_key.dart';

class Store extends BaseStore with UserAccessKey{
  const Store(SharedPreferences sharedPreferences) : super(sharedPreferences);
  
}