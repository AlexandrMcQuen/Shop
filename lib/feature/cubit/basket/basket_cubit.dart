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



class BasketCubit extends Cubit<BasketState>{
  final BasketRep basketRep;
  Set<int> initialProductsId = {};

  BasketCubit(this.basketRep) : super(const LoadingBasketState()){
    init();
  }

  Future<void> init() async{
    initialProductsId = Set.from(respBasketProducts);
  }

  Future<void> initBasket() async{
    emit(const LoadingBasketState());
    try{
      final result = await basketRep.getBasket();
      if(result.items.isNotEmpty){
        emit(LoadedBasketState(loadedBasket: result));
      }
      else{
        emit(const EmptyBasketState());
      }
    }catch(e){
      emit(const ErrorBasketState());
    }
  }

  Future<BasketEntity?> fetchBasket() async{
    emit(const LoadingBasketState());
    try{
      final basketResult = await basketRep.getBasket();
      if(basketResult.items.isNotEmpty){
        emit(LoadedBasketState(loadedBasket: basketResult));
        respBasketProducts.addAll(basketResult.items.map((e) => e.item.id));
      }
      else{
        emit(const EmptyBasketState());
      }
    }catch(e){
      emit(const ErrorBasketState());
    }
  }

}