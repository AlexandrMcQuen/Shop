import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../domain/entities/products/colors_entity.dart';
import '../../domain/repositories/basket_rep.dart';
import '../../ui/basket/change_quantity_button.dart';
import '../../ui/basket/delete_from_basket_button.dart';
import 'basket_cubit.dart';


class BasketPage extends StatelessWidget {
  const BasketPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
        create: (_) => BasketCubit(context.read<BasketRep>()),
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
                  return BasketWidget(
                      id: state.loadedBasket.items[index]!.id,
                      quantity: state.loadedBasket.items[index]!.quantity,
                      price: state.loadedBasket.items[index]!.price,
                      title: state.loadedBasket.items[index]!.product!.title!,
                      colors: state.loadedBasket.items[index]!.product!.colors!,
                      url: state.loadedBasket.items[index]!.product!.image!.file!.url!);
                },
                separatorBuilder: (context, index){
                  return const Divider(height: 0, color: Colors.black,);
                },
                itemCount: state.loadedBasket.items.length);
          }
          if (state is EmptyBasketState){
            return const Center(
              child: Text(
                'Basket is Empty'
              ),
            );
          }
          if (state is ErrorBasketState){
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

class BasketWidget extends StatelessWidget {
  const BasketWidget({Key? key, required this.id, required this.quantity, required this.price, required this.title, required this.colors, required this.url}) : super(key: key);

  final int? id;
  final int? quantity;
  final int? price;
  final List<ColorsEntity> colors;
  final String title;
  final String url;


  @override
  Widget build(BuildContext context) {
    return Container(
      width: 200,
        margin: const EdgeInsets.only(top: 10, left: 10, right: 10),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          color: Colors.indigo[800]
        ),
        child: Column(
          children: [

            Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Container(
                  padding: const EdgeInsets.all(8),
                  height: 150,
                  width: 150,
                  child: Container(
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(10)
                    ),
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(10),
                      child: Image.network(url),
                    ),
                  ),
                ),
                Container(
                  padding: const EdgeInsets.all(8),
                  width: 200,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                        Text(title,
                          style: TextStyle(color: Colors.indigo[100], fontSize: 16),
                          softWrap: true,
                        ),
                      const SizedBox(height: 10,),
                      Container(
                        padding: const EdgeInsets.all(5),
                        decoration: BoxDecoration(
                            color: Colors.green[500],
                            borderRadius: BorderRadius.circular(10)
                        ),
                        child: Text('$price ₽',
                          style:  TextStyle(color: Colors.indigo[100], fontSize: 18),),
                      ),
                    ],
                  ),
                ),

              ],
            ),
            Padding(
              padding: const EdgeInsets.only(bottom: 8),
              child: Row(

                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  ChangeQuantityButton(quantity: quantity, id: id),
                  const SizedBox(width: 20,),
                  DeleteItemFromBasket(id: id)
                ],
              ),
            )
          ],
        ),
      );
  }
}




