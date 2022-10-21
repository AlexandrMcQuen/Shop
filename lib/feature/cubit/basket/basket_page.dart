import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'basket_cubit.dart';


class BasketPage extends StatelessWidget {
  const BasketPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
        create: (_) => BasketCubit(context.read()),
        child: const BasketPageWidget());
  }
}

class BasketPageWidget extends StatefulWidget {
  const BasketPageWidget({Key? key}) : super(key: key);

  @override
  State<BasketPageWidget> createState() => _BasketPageWidgetState();
}

class _BasketPageWidgetState extends State<BasketPageWidget> {

  @override
  void initState() {
    context.read<BasketCubit>().fetchBasket();
    super.initState();
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.indigo[800],
        title: const Text('Basket'),
      ),
      backgroundColor: Colors.indigo[100],
      body: BlocBuilder<BasketCubit, BasketState>(
        builder: (context, state){
          if (state is LoadedBasketState){
            return ListView.separated(
                itemBuilder: (BuildContext context, index){
                  return BasketWidget(id: state.loadedBasket.items![index].id, title: state.loadedBasket.items![index].title, quantity: state.loadedBasket.items![index].quantity);
                },
                separatorBuilder: (context, index){
                  return const Divider(height: 0, color: Colors.black,);
                },
                itemCount: state.loadedBasket.items!.length);
          }
          if (state is EmptyBasketState){
            return const Center(
              child: Text(
                'Basket is Empty'
              ),
            );
          }
          if (state is ErrorBasketState){
            return Text('Error');
          }
          return const Center(
            child: CircularProgressIndicator(),
          );
        },
      ),
    );
  }
}

class BasketWidget extends StatelessWidget {
  const BasketWidget({Key? key, required this.id, required this.title, required this.quantity,}) : super(key: key);

  final int? id;
  final String? title;
  final int? quantity;


  @override
  Widget build(BuildContext context) {
    return Text('$id, $title, $quantity');
  }
}
