import 'package:equatable/equatable.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:shop/feature/domain/entities/products/item_entity.dart';

import '../../domain/repositories/products_rep.dart';

abstract class ItemState extends Equatable{
  const ItemState();

  @override
  List<Object?> get props => [];

}

class LoadingItemState extends ItemState{
    const LoadingItemState();
}

class ErrorItemState extends ItemState{
  const ErrorItemState();
}

class LoadedItemState extends ItemState{
  final ItemEntity? loadedItem;

  const LoadedItemState({required this.loadedItem});

  @override
  List<Object?> get props => [loadedItem];
}

class ItemCubit extends Cubit<ItemState>{
  final ProductRep itemRep;

  ItemCubit(this.itemRep) : super(const LoadingItemState());

  Future<void> fetchItem({required id}) async{
    emit(const LoadingItemState());
    try{
      final result = await itemRep.getProducts(id: id);
      emit(LoadedItemState(loadedItem: result));
    }catch(e){
      emit(const ErrorItemState());
    }
  }
}