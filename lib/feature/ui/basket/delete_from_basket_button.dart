
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../cubit/basket/basket_cubit.dart';

class DeleteItemFromBasket extends StatefulWidget {
  final int? id;

  const DeleteItemFromBasket({Key? key, required this.id}) : super(key: key);

  @override
  State<DeleteItemFromBasket> createState() => _DeleteItemFromBasketState();
}

class _DeleteItemFromBasketState extends State<DeleteItemFromBasket> {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(2),
      decoration: BoxDecoration(
          color: Colors.indigo[500],
          borderRadius: BorderRadius.circular(10)
      ),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            padding: const EdgeInsets.only(top: 10, left: 10),
            child: Center(
              child: Text('Delete',
                style: TextStyle(fontSize: 20, color: Colors.indigo[100], fontWeight: FontWeight.bold),),
            ),
          ),
          IconButton(
              onPressed: () {
                context.read<BasketCubit>().deleteFromBasket(id: widget.id!);
              },
              icon: Icon(Icons.delete_forever, color: Colors.red,))
        ],
      ),
    );

  }
}
