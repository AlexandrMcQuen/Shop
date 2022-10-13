import 'dart:convert';

import 'package:http/http.dart' as http;
import 'package:shop/feature/domain/repositories/products_rep.dart';

import '../../domain/entities/products/item_entity.dart';
import '../mappers/products/items_mapper.dart';
import '../models/products/items_model.dart';

class ProductRepData implements ProductRep{
  final _baseUrl = 'https://vue-study.skillbox.cc';
  final ItemsMapper itemsMapper;

  ProductRepData({required this.itemsMapper});

  @override
  Future<ItemEntity> getProducts({required id}) async{
    try{
      var request = await http.get(Uri.parse('$_baseUrl/api/products/$id'));
      var jsonRequest = json.decode(request.body);
      final response = ItemModel.fromJson(jsonRequest);
      final item = itemsMapper.map(response);
      return item;
    } catch(e){
      throw Error();
    }
  }
}