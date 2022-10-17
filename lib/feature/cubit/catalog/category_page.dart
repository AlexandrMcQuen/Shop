import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:shop/feature/domain/repositories/product_list_rep.dart';

import '../../ui/catalog/category.dart';
import 'catalog_cubit.dart';


class CategoryPage extends StatelessWidget {
  const CategoryPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
        create: (_) => CatalogCubit(context.read<ProductListRep>()),
        child: const _CategoryPageWidget());
  }
}

class _CategoryPageWidget extends StatefulWidget {
  const _CategoryPageWidget({Key? key}) : super(key: key);

  @override
  State<_CategoryPageWidget> createState() => _CategoryPageWidgetState();
}

class _CategoryPageWidgetState extends State<_CategoryPageWidget> {

  @override
  void initState() {
    context.read<CatalogCubit>().fetchCategory();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Choose category'),
        backgroundColor: Colors.indigo[400],
      ),
      backgroundColor: Colors.indigo[100],
      body: BlocBuilder<CatalogCubit, CatalogState>(
        builder: (context, state){
          if (state is LoadedCategoryState){
            return ListView.separated(
                itemBuilder: (BuildContext context, index){
                  return CategoryWidget(categoriesEntity: state.loadedCategory!.items![index]);
                },
                separatorBuilder: (context, index){
                  return const Divider(height: 0,);
                },
                itemCount: state.loadedCategory!.items!.length);
          } else if(state is LoadingCategoryState){
            return const Center(
              child: CircularProgressIndicator(),
            );
          } else{
            return const Text('Error');
          }
        },
      ),
    );
  }
}


