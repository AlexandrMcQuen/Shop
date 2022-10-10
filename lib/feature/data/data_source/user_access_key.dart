import 'package:shop/feature/data/data_source/base_store.dart';

mixin UserAccessKey on BaseStore{
  static const accessKey = 'accessKey';
  String? getAccessKey(){
    return sharedPreferences.getString(accessKey);
  }
  Future setAccessKey(String? string){
    return sharedPreferences.setString(accessKey, '$string');
  }
}