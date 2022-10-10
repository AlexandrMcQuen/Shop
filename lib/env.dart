import 'package:flutter/cupertino.dart';
import 'package:shop/injection.dart';
import 'package:shop/main.dart';

class Env{
  Future init() async{
    WidgetsFlutterBinding.ensureInitialized();
    final injectionContainer = await injection(const MyApp());
    runApp(injectionContainer);
  }
}