import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:shop/feature/cubit/basket/basket_cubit.dart';

import '../../domain/repositories/basket_rep.dart';

class ADButton extends StatelessWidget {
  const ADButton({Key? key, required this.id}) : super(key: key);

  final int? id;

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (_) => BasketCubit(context.read<BasketRep>()),
      child: AddDeleteButton(id: id),);
  }
}

class AddDeleteButton extends StatefulWidget {
  const AddDeleteButton({Key? key, required this.id}) : super(key: key);

  final int? id;

  @override
  State<AddDeleteButton> createState() => _AddDeleteButtonState();
}

class _AddDeleteButtonState extends State<AddDeleteButton>
  with AutomaticKeepAliveClientMixin {
  @override
  Widget build(BuildContext context) {
    super.build(context);
    return BlocConsumer<BasketCubit, BasketState>(
        builder: (context, state){
          return Center(
            child: CupertinoButton(
                borderRadius: const BorderRadius.all(Radius.circular(10)),
                color: context.read<BasketCubit>().initialProductsId.contains(widget.id) ? Colors.red : Colors.green,
                onPressed: (){
                  context.read<BasketCubit>().addOrDelete(id: widget.id!, value: context.read<BasketCubit>().initialProductsId.contains(widget.id));
                },
                child: Icon(
                  context.read<BasketCubit>().initialProductsId.contains(widget.id) ? Icons.delete_forever : Icons.add_shopping_cart_outlined,
                  size: 25,
                ),
              ),
          );
        },
        listener: (context, state){
          if(state is ItemBasketState){
            if (state.id == widget.id){
              setState(() {
              });
            } else{
              setState(() {
              });
            }
          }
        });
  }

  @override
  bool get wantKeepAlive => true;
}
