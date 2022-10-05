import 'dart:convert';

import 'package:http/http.dart' as http;
import 'package:shop/feature/data/mappers/categories/categories_list_mapper.dart';
import 'package:shop/feature/data/models/categories/categories_list_model.dart';
import 'package:shop/feature/domain/entities/categories/categories_list_entity.dart';
import 'package:shop/feature/domain/entities/products/list_item_entity.dart';
import 'package:shop/feature/domain/repositories/product_list_rep.dart';

class ProductListRepo extends ProductListRep{
  final _baseUrl = 'https://vue-study.skillbox.cc';
  final CategoriesListMapper categoriesListMapper;

  ProductListRepo({required this.categoriesListMapper});
  


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
  Future<ListItemEntity> getAll({required String id, required int page}) async{
    try{
      var request = await http.get(Uri.parse('$_baseUrl/api/products' + <String, String>{
        'categoryId': id,
        'page': page.toString(),
        'limit': 10.toString()
      }
      )
      );
    } catch (e){
      throw Error();
    }
  }
  
}