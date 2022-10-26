import 'package:flutter/cupertino.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:shop/feature/data/data_source/store.dart';
import 'package:shop/feature/data/mappers/baskets/basket_item_mapper.dart';
import 'package:shop/feature/data/mappers/baskets/baskets_mapper.dart';
import 'package:shop/feature/data/mappers/categories/categories_list_mapper.dart';
import 'package:shop/feature/data/mappers/categories/categories_mapper.dart';
import 'package:shop/feature/data/mappers/products/colors_mapper.dart';
import 'package:shop/feature/data/mappers/products/file_mapper.dart';
import 'package:shop/feature/data/mappers/products/image_mapper.dart';
import 'package:shop/feature/data/mappers/products/pagination_mapper.dart';
import 'package:shop/feature/data/mappers/products/items_mapper.dart';
import 'package:shop/feature/data/mappers/products/list_item_mapper.dart';
import 'package:shop/feature/data/mappers/user/user_mapper.dart';
import 'package:shop/feature/data/repositories/orders_rep.dart';
import 'package:shop/feature/data/repositories/product_list_rep.dart';
import 'package:shop/feature/data/repositories/products_rep.dart';
import 'package:shop/feature/data/repositories/users_rep.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:shop/feature/domain/repositories/orders_rep.dart';
import 'package:shop/feature/domain/repositories/product_list_rep.dart';
import 'package:shop/feature/domain/repositories/products_rep.dart';

import 'feature/data/repositories/basket_rep.dart';
import 'feature/domain/repositories/basket_rep.dart';
import 'feature/domain/repositories/users_rep.dart';

Future<Widget> injection(Widget app) async{
  final store = Store(await SharedPreferences.getInstance());

  final colorsMapper = ColorsMapper();
  final categoriesMapper = CategoriesMapper();
  final fileMapper = FileMapper();
  final imageMapper = ImageMapper(fileMapper: fileMapper);
  final itemsMapper = ItemsMapper(colorsMapper: colorsMapper, imageMapper: imageMapper);
  final infoMapper = PaginationMapper();
  final basketItemMapper = BasketItemMapper(itemsMapper: itemsMapper);
  final userMapper = UserMapper();
  final listItemMapper = ListItemMapper(itemsMapper: itemsMapper, paginationMapper: infoMapper);
  final categoriesListMapper = CategoriesListMapper(categoriesMapper: categoriesMapper);
  final basketMapper = BasketMapper(userMapper: userMapper, basketItemMapper: basketItemMapper);

  final productRep = ProductRepData(itemsMapper: itemsMapper);
  final userRep = UserRepData(store, userMapper);
  final itemListRep = ProductListRepData(categoriesListMapper: categoriesListMapper, listItemMapper: listItemMapper);
  final orderRep = OrderRepData();
  final basketRep = BasketRepData(store, basketMapper: basketMapper);

  return MultiRepositoryProvider(
      providers: [
        RepositoryProvider<UserRep>(
        create: (_) => userRep
      ),
        RepositoryProvider<ProductListRep>(
            create: (_) => itemListRep
        ),
        RepositoryProvider<ProductRep>(
            create: (_) => productRep
        ),
        RepositoryProvider<OrderRep>(
            create: (_) => orderRep
        ),
        RepositoryProvider<BasketRep>(
            create: (_) => basketRep)

      ],
      child: app);
}