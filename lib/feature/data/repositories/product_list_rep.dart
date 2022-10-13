import 'dart:convert';

import 'package:http/http.dart' as http;
import 'package:shop/feature/data/mappers/categories/categories_list_mapper.dart';
import 'package:shop/feature/data/models/categories/categories_list_model.dart';
import 'package:shop/feature/data/models/products/list_item_model.dart';
import 'package:shop/feature/domain/entities/categories/categories_list_entity.dart';
import 'package:shop/feature/domain/entities/products/list_item_entity.dart';
import 'package:shop/feature/domain/repositories/product_list_rep.dart';

import '../mappers/products/list_item_mapper.dart';

class ProductListRepData extends ProductListRep{
  final _baseUrl = 'https://vue-study.skillbox.cc';
  final CategoriesListMapper categoriesListMapper;
  final ListItemMapper listItemMapper;

  ProductListRepData({required this.categoriesListMapper, required this.listItemMapper});
  


  @override
  Future<CategoriesListEntity> getCategories() async{
    try{
      var request = await http.get(Uri.parse('$_baseUrl/api/productCategories'));
      var jsonRequest = json.decode(request.body);
      final response = CategoriesListModel.fromJson(jsonRequest);
      final categories = categoriesListMapper.map(response);
      return categories;

    } catch(e){
      throw Error();
    }
  }

  @override
  Future<ListItemEntity> getAll({required id}) async{
    try{
      var request = await http.get(Uri.https(_baseUrl, '/api/products', <String, String>{
        'categoryId': id,
      }));
      var jsonRequest = json.decode(request.body);
      final response = ListItemModel.fromJson(jsonRequest);
      final list = listItemMapper.map(response);
      return list;
    } catch (e){
      throw Error();
    }
  }
  
}