import 'dart:convert';

import 'package:http/http.dart' as http;
import 'package:shop/feature/data/data_source/store.dart';
import 'package:shop/feature/data/mappers/order/order_status_mapper.dart';
import 'package:shop/feature/data/mappers/order/orders_mapper.dart';
import 'package:shop/feature/data/models/order/order_status.dart';
import 'package:shop/feature/domain/entities/order/order_entity.dart';
import 'package:shop/feature/domain/entities/order/status_order_entity.dart';
import 'package:shop/feature/domain/repositories/orders_rep.dart';

import '../models/order/orders_model.dart';

class OrderRepData extends OrderRep{
  late final OrderStatusMapper orderStatusMapper;
  final _baseUrl = 'https://vue-study.skillbox.cc';
  late final Store _store;
  late final OrderMapper orderMapper;

  @override
  Future<OrderEntity> createOrder(
      {required String name,
        required String address,
        required String phone,
        required String email,
        required String comment}) async{
    try{
      final response = await http.post(Uri.https(_baseUrl, '/api/orders', <String, String>{'userAccessKey': '${_store.getAccessKey()}'}), body: {'name': name, 'address': address, 'phone': phone, 'email': email, 'comment': comment});
      final jsonResponse = OrderModel.fromJson(json.decode(response.body));
      final _response = orderMapper.map(jsonResponse);
      return _response;
    }catch(e){
      throw Error();
    }
  }

  @override
  Future<OrderStatusEntity> statusOrder({required String id}) async{
    try{
      final request = await http.get(Uri.https(_baseUrl, '/api/orders/$id', <String, String> {'userAccessKey': '${_store.getAccessKey()}'}));
      final jsonRequest = OrderStatusModel.fromJson(json.decode(request.body));
      final response = orderStatusMapper.map(jsonRequest);
      return response;
    }catch(e){
      throw Error();
    }
  }
}