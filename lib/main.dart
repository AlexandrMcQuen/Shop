import 'package:flutter/material.dart';
import 'package:shop/feature/data/mappers/products/colors_mapper.dart';
import 'package:shop/feature/data/mappers/products/items_mapper.dart';
import 'package:shop/feature/data/repositories/products_rep.dart';

import 'feature/cubit/login/login_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: LoginPage(),

    );
  }
}

