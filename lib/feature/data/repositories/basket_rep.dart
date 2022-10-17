import 'dart:async';
import 'dart:convert';

import 'package:shop/feature/data/mappers/baskets/baskets_mapper.dart';
import 'package:shop/feature/domain/entities/baskets/basket_entity.dart';
import 'package:shop/feature/domain/repositories/basket_rep.dart';
import 'package:http/http.dart' as http;

import '../data_source/store.dart';
import '../models/baskets/baskets_model.dart';

class BasketRepData implements BasketRep{
  final _baseUrl = 'https://vue-study.skillbox.cc';
  final BasketMapper basketMapper;
  final Store _store;

  BasketRepData(this._store, {required this.basketMapper});
  
  @override
  Future addItem({required int itemId}) async{
    try{
      final completer = Completer();
      final request = await http.post(Uri.https(_baseUrl, '/api/baskets/products', <String, String>{'userAccessKey': '${_store.getAccessKey()}'}), body: {'productId': '$itemId', 'quantity': '1'});
      completer.complete(true);
      return completer.future;
    }catch(e){
      throw Error();
    }
  }

  @override
  Future changeQuantity({required int quantity, required int itemId}) async{
    try{
      final completer = Completer();
      final request = await http.put(Uri.https(_baseUrl, '/api/baskets/products', <String, String>{'userAccessKey': '${_store.getAccessKey()}'}), body: {'productId': '$itemId', 'quantity': '$quantity'});
      completer.complete(true);
      return completer.future;
    } catch(e){
      throw Error();
    }
  }

  @override
  Future deleteItem({required int itemId}) async{
    try{
      final completer = Completer();
      final request = await http.delete(Uri.https(_baseUrl, '/api/baskets/products', <String, String>{'userAccessKey': '${_store.getAccessKey()}'}), body: {'productId': '$itemId'});
      completer.complete(true);
      return completer.future;
    } catch(e){
      throw Error();
    }
  }

  @override
  Future<BasketEntity?> getBasket() async{
    try{
      var request = await http.get(Uri.parse('$_baseUrl/api/baskets'));
      var jsonRequest = json.decode(request.body);
      final response = BasketModel.fromJson(jsonRequest);
      final basket = basketMapper.map(response);
      return basket;
    } catch(e){
      throw Error();
    }
  }
  
}