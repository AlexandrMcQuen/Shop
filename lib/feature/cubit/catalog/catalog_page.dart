import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:shop/feature/cubit/catalog/catalog_cubit.dart';
import 'package:shop/feature/domain/entities/products/item_entity.dart';
import 'package:shop/feature/domain/repositories/product_list_rep.dart';

import '../../ui/item/item_card.dart';

class CatalogPage extends StatelessWidget {
  final String id;

  const CatalogPage({Key? key, required this.id}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
        providers: [BlocProvider(
            create: (_) => CatalogCubit(context.read<ProductListRep>()))],
        child: CatalogWidget(id: id,));
  }
}

class CatalogWidget extends StatefulWidget {
  final String id;

  const CatalogWidget({Key? key, required this.id}) : super(key: key);

  @override
  State<CatalogWidget> createState() => _CatalogWidgetState();
}

class _CatalogWidgetState extends State<CatalogWidget> {

  @override
  void initState() {
    context.read<CatalogCubit>().fetchCatalog(id: widget.id, page: 1);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Catalog'),
      ),
      body: BlocBuilder<CatalogCubit, CatalogState>(
        builder: (context, state) {
          if(state is LoadedCatalogState){
            return ListView.separated(
                itemBuilder: (BuildContext context, index){
                  return CardWidget(item: state.loadedCatalog.items[index]);
                },
                separatorBuilder: (context, index){
                  return const Divider(height: 0,);
                },
                itemCount: state.loadedCatalog.items.length);
          }
          if (state is ErrorCatalogState){
            return const Text('Error');
          }
          return const Center(
            child: CircularProgressIndicator(),
          );
        },
      ),
    );
  }
}

class CardWidget extends StatelessWidget {
  final ItemEntity item;
  const CardWidget({Key? key, required this.item}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.all(5),
      padding: const EdgeInsets.all(10),
      decoration: BoxDecoration(
          color: Colors.indigo[900],
          borderRadius: BorderRadius.circular(10)
      ),
      child: Center(
        child: Column(
          children: [
            Text("${item.id}",
              style: TextStyle(color: Colors.indigo[100], fontSize: 20),),
            Text(item.title,
              style: TextStyle(color: Colors.indigo[100], fontSize: 20),),
            Text("${item.price}",
              style: TextStyle(color: Colors.indigo[100], fontSize: 20),),
            Text(item.image.file.url,
              style: TextStyle(color: Colors.indigo[100], fontSize: 20),),
          ],
        ),
      ),
    );;
  }
}
