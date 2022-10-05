import 'dart:convert';

import 'package:shop/feature/data/mappers/baskets/baskets_mapper.dart';
import 'package:shop/feature/domain/entities/baskets/basket_entity.dart';
import 'package:shop/feature/domain/repositories/basket_rep.dart';
import 'package:http/http.dart' as http;

import '../models/baskets/baskets_model.dart';

class BasketRep implements BasketRepo{
  final _baseUrl = 'https://vue-study.skillbox.cc';
  final BasketMapper basketMapper;

  BasketRep({required this.basketMapper});
  
  @override
  Future addItem({required int itemId}) {
    // TODO: implement addItem
    throw UnimplementedError();
  }

  @override
  Future changeQuantity({required int quantity}) {
    // TODO: implement changeQuantity
    throw UnimplementedError();
  }

  @override
  Future deleteItem({required int itemId}) async{

  }

  @override
  Future<BasketEntity> getBasket() async{
    try{
      var request = await http.get(Uri.parse('$_baseUrl/api/baskets'));
      var jsonResponse = json.decode(request.body);
      final response = BasketModel.fromJson(jsonResponse);
      final basket = basketMapper.map(response);
      return basket;
    } catch(e){
      throw Error();
    }
  }
  
}