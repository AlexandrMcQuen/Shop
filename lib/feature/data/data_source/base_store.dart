import 'package:shared_preferences/shared_preferences.dart';

abstract class BaseStore {
  final SharedPreferences sharedPreferences;

  const BaseStore(this.sharedPreferences);
}