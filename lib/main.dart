import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';


import 'package:shop/feature/cubit/item/item_page.dart';
import 'package:shop/feature/data/data_source/store.dart';
import 'package:shop/feature/data/mappers/products/items_mapper.dart';
import 'package:shop/feature/data/mappers/user/user_mapper.dart';
import 'package:shop/feature/data/repositories/products_rep.dart';
import 'package:shop/feature/data/repositories/users_rep.dart';

import 'development.dart';
import 'feature/cubit/catalog/catalog_page.dart';
import 'feature/cubit/catalog/category_page.dart';
import 'feature/cubit/login/login_page.dart';

Future<void> main() async => Development().init();

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: CatalogPage(id: ''),
    );
  }
}

