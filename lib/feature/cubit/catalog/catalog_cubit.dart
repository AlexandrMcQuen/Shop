import 'package:equatable/equatable.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:shop/feature/domain/entities/categories/categories_list_entity.dart';
import 'package:shop/feature/domain/entities/products/list_item_entity.dart';

import '../../domain/repositories/product_list_rep.dart';

abstract class CatalogState extends Equatable{
  const CatalogState();

  @override
  List<Object?> get props => [];
}

class LoadingCatalogState extends CatalogState{
  const LoadingCatalogState();
}

class LoadedCatalogState extends CatalogState{
  final ListItemEntity? loadedCatalog;

  const LoadedCatalogState({ required this.loadedCatalog});

  @override
  List<Object?> get props => [loadedCatalog];
}

class LoadingCategoryState extends CatalogState{
  const LoadingCategoryState();
}

class LoadedCategoryState extends CatalogState{
  final CategoriesListEntity? loadedCategory;

  const LoadedCategoryState({ required this.loadedCategory});

  @override
  List<Object?> get props => [loadedCategory];
}

class ErrorCatalogState extends CatalogState{
  const ErrorCatalogState();
}

class CatalogCubit extends Cubit<CatalogState>{
  final ProductListRep productListRep;

  CatalogCubit(this.productListRep) : super(const LoadingCatalogState());

  Future<void> fetchCategory() async{
    emit(const LoadingCategoryState()); 
    try{
      final resultCategory = await productListRep.getCategories();
      emit(LoadedCategoryState(loadedCategory: resultCategory));
    }catch(e){
      emit(const ErrorCatalogState());
    }
  }

  Future<void> fetchCatalog({required id, required page}) async{
    emit(const LoadingCatalogState());
    try{
      final resultCatalog = await productListRep.getAll(id: id, page: page);
      emit(LoadedCatalogState(loadedCatalog: resultCatalog));
    } catch(e){
      emit(const ErrorCatalogState());
    }
  }


}