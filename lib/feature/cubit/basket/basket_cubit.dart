import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:shop/feature/domain/entities/baskets/basket_entity.dart';

import '../../data/data_source/constants.dart';
import '../../domain/repositories/basket_rep.dart';



abstract class BasketState extends Equatable{
  const BasketState();

  @override
  List<Object?> get props => [];
}

class EmptyBasketState extends BasketState{
  const EmptyBasketState();
}

class StartPutBasketState extends BasketState{
  const StartPutBasketState();
}

class StopPutBasketState extends BasketState{
  const StopPutBasketState();
}

class LoadingBasketState extends BasketState{
  const LoadingBasketState();
}

class ErrorBasketState extends BasketState{
  const ErrorBasketState();
}

class LoadedBasketState extends BasketState{
  final BasketEntity loadedBasket;

  const LoadedBasketState({required this.loadedBasket});

  @override
  List<Object?> get props => [loadedBasket];
}

class ItemBasketState extends BasketState{
  const ItemBasketState({required this.id});

  final int? id;

  @override
  List<Object?> get props => [id];
}

class StartChangeQuantityBasketState extends BasketState{
  const StartChangeQuantityBasketState();
}

class StopChangeQuantityBasketState extends BasketState{
  const StopChangeQuantityBasketState();
}




class BasketCubit extends Cubit<BasketState> {
  BasketCubit(this.basketRep) : super(const LoadingBasketState()) {
    init();
  }

  final BasketRep basketRep;
  Set<int> initialProductsId = {};

  Future<void> init() async {
    initialProductsId = Set.from(respBasketProducts);
  }


  Future<void> initBasket() async {
    emit(const LoadingBasketState());
    try {
      final result = await basketRep.getBasket();
      if (result!.items!.isNotEmpty) {
        emit(LoadedBasketState(loadedBasket: result));
      }
      else {
        emit(const EmptyBasketState());
      }
    } catch (e) {
      emit(const ErrorBasketState());
    }
  }

  Future<BasketEntity?> fetchBasket() async {
    emit(const LoadingBasketState());
    try {
      final basketResult = await basketRep.getBasket();
      print('$basketResult');
      if (basketResult!.items!.isNotEmpty) {
        emit(LoadedBasketState(loadedBasket: basketResult));
        respBasketProducts.addAll(basketResult.items!.map((e) => e.item?.id));
      }
      else {
        emit(const EmptyBasketState());
      }
    } catch (e) {
      emit(const ErrorBasketState());
    }
  }

  Future<void> addOrDelete({required int id, required bool value}) async{
    emit(const StartPutBasketState());
    try{
      if(!value){
        basketRep.addItem(itemId: id);
        initialProductsId.add(id);
        respBasketProducts.add(id);
      } else{
        basketRep.deleteItem(itemId: id);
        initialProductsId.remove(id);
        respBasketProducts.remove(id);
      }
      await fetchBasket();
    } catch(e){
      emit(const ErrorBasketState());
    }
    emit(const StopPutBasketState());
    emit(ItemBasketState(id: id));
  }

  Future<void> changeQuantity({required int id, required int quantity}) async{
    emit(const StartChangeQuantityBasketState());
    await basketRep.changeQuantity(quantity: quantity, itemId: id);
    await fetchBasket();
    emit(const StopChangeQuantityBasketState());
  }

  Future<void> deleteFromBasket({required int id}) async{
    emit(const StartChangeQuantityBasketState());
    await basketRep.deleteItem(itemId: id);
    await fetchBasket();
    respBasketProducts.remove(id);
    emit(const StopChangeQuantityBasketState());
  }

}

