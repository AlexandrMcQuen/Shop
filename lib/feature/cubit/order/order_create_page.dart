import 'package:easy_mask/easy_mask.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:shop/feature/cubit/catalog/category_page.dart';
import 'package:shop/feature/cubit/order/order_cubit.dart';
import 'package:shop/feature/domain/repositories/orders_rep.dart';

class OrderCreatePage extends StatelessWidget {
  const OrderCreatePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
        providers:[ BlocProvider(
            create: (_) => OrderCubit(context.read<OrderRep>())),
        ],
        child: OrderCreateWidget());
  }
}

class OrderCreateWidget extends StatefulWidget {
  const OrderCreateWidget({Key? key}) : super(key: key);

  @override
  State<OrderCreateWidget> createState() => _OrderCreateWidgetState();
}

class _OrderCreateWidgetState extends State<OrderCreateWidget> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Create Order'),
      ),
      body: BlocConsumer<OrderCubit, OrderState>(
        listener: (context, state){
          if (state is LoadedOrderState){
            showDialog(
                context: context,
                builder: (BuildContext dialog){
                  return AlertDialog(
                    title: const Text('create order'),
                    content: Text('You order ID: ${state.loadedOrder?.id}'),
                    actions: [
                      TextButton(
                          onPressed: (){
                            Navigator.push(context, MaterialPageRoute(
                                builder: (context) => const CategoryPage()));
                          },
                          child: const Text('Ok'))
                    ],
                  );
                });
          }
        },
        builder: (context, state){
          switch(state.runtimeType){
            case LoadingOrderState: return const ClientOrder();
            case EmptyOrderState: return const Center(
              child: Text('Fill the basket first'),
            );
            case ErrorOrderState: return const Text('Error');
          }
          return const Center(child: CircularProgressIndicator(),);
        },
      ),
    );
  }
}

class ClientOrder extends StatefulWidget {
  const ClientOrder({Key? key}) : super(key: key);

  @override
  State<ClientOrder> createState() => _ClientOrderState();
}

class _ClientOrderState extends State<ClientOrder> {

  final name = TextEditingController();
  final email = TextEditingController();
  final phone = TextEditingController();
  final comment = TextEditingController();
  final address = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
        TextField(
        controller: name,
        cursorColor: Colors.lightGreen,
        decoration: const InputDecoration(
          enabledBorder: OutlineInputBorder(
              borderSide: BorderSide(color: Colors.lightGreen)),
          focusedBorder: OutlineInputBorder(
            borderSide: BorderSide(color: Colors.lightGreen),
          ),
          labelText: 'Name',
          helperText: 'Enter your name',
          labelStyle: TextStyle(color: Colors.black),
        ),
        keyboardType: TextInputType.text,
      ),
      const Padding(padding: const EdgeInsets.symmetric(vertical: 10)),
      TextField(
        controller: email,
        cursorColor: Colors.lightGreen,
        decoration: const InputDecoration(
          enabledBorder: OutlineInputBorder(
              borderSide: BorderSide(color: Colors.lightGreen)),
          focusedBorder: OutlineInputBorder(
            borderSide: BorderSide(color: Colors.lightGreen),
          ),
          labelText: 'Email',
          helperText: 'Enter your email',
          labelStyle: TextStyle(color: Colors.black),
        ),
        keyboardType: TextInputType.emailAddress,
      ),
      const Padding(padding: EdgeInsets.symmetric(vertical: 10)),
      TextField(
        controller: phone,
        cursorColor: Colors.lightGreen,
        decoration: InputDecoration(
          enabledBorder: const OutlineInputBorder(
              borderSide: BorderSide(color: Colors.lightGreen)),
          focusedBorder: const OutlineInputBorder(
            borderSide: BorderSide(color: Colors.lightGreen),
          ),
          labelText: 'Phone',
          helperText: 'Enter your phone',
          labelStyle: const TextStyle(color: Colors.black),
          prefixIcon: Padding(
            padding: const EdgeInsets.only(left: 12, right: 6),
            child: SizedBox(
              width: 40,
              child: Row(
                children: [
                  const Padding(
                    padding: EdgeInsets.only(bottom: 2),
                    child: Text(
                      '+7',
                    ),
                  ),
                  const SizedBox(
                    width: 12,
                  ),
                  Container(
                    height: 28,
                    width: 1,
                    color: Colors.black,
                  ),
                  const SizedBox(
                    width: 3,
                  ),
                ],
              ),
            ),
          ),
        ),
        keyboardType: TextInputType.phone,
        inputFormatters: [
          TextInputMask(mask: ['9999999999'], reverse: false)
        ],
      ),
      const Padding(padding: EdgeInsets.symmetric(vertical: 10)),
      TextField(
        controller: address,
        cursorColor: Colors.lightGreen,
        decoration: const InputDecoration(
          enabledBorder: OutlineInputBorder(
              borderSide: BorderSide(color: Colors.lightGreen)),
          focusedBorder: OutlineInputBorder(
            borderSide: BorderSide(color: Colors.lightGreen),
          ),
          labelText: 'Address',
          helperText: 'Enter your address',
          labelStyle: TextStyle(color: Colors.black),
        ),
        keyboardType: TextInputType.text,
      ),
      const Padding(padding: EdgeInsets.symmetric(vertical: 10)),
      TextField(
        controller: comment,
        cursorColor: Colors.lightGreen,
        decoration: const InputDecoration(
          enabledBorder: OutlineInputBorder(
              borderSide: BorderSide(color: Colors.lightGreen)),
          focusedBorder: OutlineInputBorder(
            borderSide: BorderSide(color: Colors.lightGreen),
          ),
          labelText: 'Comment',
          helperText: 'Enter your comment',
          labelStyle: TextStyle(color: Colors.black),
        ),
        keyboardType: TextInputType.text,
      ),
          IconButton(
              onPressed: (){
                context.read<OrderCubit>().createOrder(
                    name: name.text,
                    phone: '+7${phone.text}',
                    email: email.text,
                    address: address.text,
                    comment: comment.text);
              },
              icon: const Icon(Icons.abc))
        ],
      ),
    );
  }
}
