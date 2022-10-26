import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../cubit/basket/basket_cubit.dart';

class ChangeQuantityButton extends StatefulWidget {
  final int? quantity;
  final int? id;

  const ChangeQuantityButton({Key? key, required this.quantity, required this.id}) : super(key: key);

  @override
  State<ChangeQuantityButton> createState() => _ChangeQuantityButtonState();
}

class _ChangeQuantityButtonState extends State<ChangeQuantityButton> {
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        color: Colors.indigo[500],
      ),
      padding: const EdgeInsets.all(2),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          IconButton(
              onPressed: () {
                if (widget.quantity! > 1){
                  context.read<BasketCubit>().changeQuantity(id: widget.id!, quantity: widget.quantity! - 1);
                }
              },
              icon: Icon(Icons.remove, color: Colors.indigo[100],)),
          Container(
            padding: const EdgeInsets.only(top: 10, left: 5, right: 5),
            child: Center(
              child: Text(
                '${widget.quantity}',
                style: TextStyle(fontSize: 20, color: Colors.indigo[100], fontWeight: FontWeight.bold),
              ),
            ),

          ),
          IconButton(
              onPressed: () {
                context.read<BasketCubit>().changeQuantity(id: widget.id!, quantity: widget.quantity! + 1);
              },
              icon: Icon(Icons.add, color: Colors.indigo[100],))
        ],
      ),
    );
  }
}