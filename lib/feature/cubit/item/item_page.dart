import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:shop/feature/cubit/item/item_cubit.dart';
import 'package:shop/feature/domain/repositories/products_rep.dart';

import '../../ui/item/item_card.dart';

class ItemPage extends StatelessWidget {
  final int id;

  const ItemPage({Key? key, required this.id}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
        providers: [BlocProvider(
            create: (_) => ItemCubit(context.read<ProductRep>())),],
        child: ItemWidget(id: id,));
  }
}

class ItemWidget extends StatefulWidget {
  final int id;

  const ItemWidget({Key? key, required this.id}) : super(key: key);

  @override
  State<ItemWidget> createState() => _ItemWidgetState();
}

class _ItemWidgetState extends State<ItemWidget> {

  @override
  void initState() {
    context.read<ItemCubit>().fetchItem(id: widget.id);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<ItemCubit, ItemState>(
        builder: (context, state) {
          if (state is LoadedItemState){
            return Scaffold(
              appBar: AppBar(
                title: Text(state.loadedItem.title),
              ),
              body: Center(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    ItemCardWidget(
                      id: state.loadedItem.id,
                      url: state.loadedItem.image.file.url,
                      price: state.loadedItem.price,
                      colors: state.loadedItem.colors,
                      title: state.loadedItem.title,)
                  ],
                ),
              ),
            );
          }
          if(state is Error){
            return const Text('Error');
          }
          return const Center(
            child: CircularProgressIndicator(),
          );
        });
  }
}

