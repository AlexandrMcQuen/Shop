import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:shop/feature/data/repositories/orders_rep.dart';
import 'package:shop/feature/domain/entities/order/order_entity.dart';

import '../../domain/entities/order/status_order_entity.dart';

abstract class OrderState extends Equatable{
  const OrderState();

  @override
  List<Object?> get props => [];
}

class LoadingCreateOrderState extends OrderState{
  const LoadingCreateOrderState();
}

class ErrorOrderState extends OrderState{
  const ErrorOrderState();
}

class LoadedCreateOrderState extends OrderState{
  final OrderEntity loadedCreateOrder;

  const LoadedCreateOrderState({required this.loadedCreateOrder});

  @override
  List<Object?> get props => [loadedCreateOrder];
}

class LoadingOrderState extends OrderState{
  const LoadingOrderState();
}

class LoadedOrderState extends OrderState{
  final OrderStatusEntity loadedOrder;

  const LoadedOrderState({required this.loadedOrder});

  @override
  List<Object?> get props => [loadedOrder];
}

class OrderCubit extends Cubit<OrderState>{
  final OrderRepo orderRep;

  OrderCubit(this.orderRep) : super(const LoadingOrderState());

  Future<OrderEntity?> createOrder({required name, required phone, required email, required address, required comment}) async{
    emit(const LoadingCreateOrderState());
    try{
      final result = await orderRep.createOrder(name: name, address: address, phone: phone, email: email, comment: comment);
      emit(LoadedCreateOrderState(loadedCreateOrder: result));
    }catch(e){
      emit(const ErrorOrderState());
    }
  }

  Future<OrderStatusEntity?> chekOrder({required id}) async{
    emit(const LoadingOrderState());
    try{
      final result = await orderRep.statusOrder(id: id);
      emit(LoadedOrderState(loadedOrder: result));
    }catch(e){
      emit(const ErrorOrderState());
    }
  }
}