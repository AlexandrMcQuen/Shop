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
        backgroundColor: Colors.indigo[800],
        title: const Text('Create Order'),
      ),
      backgroundColor: Colors.indigo[100],
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
        Padding(
          padding: const EdgeInsets.only(right: 5, left: 5),
          child: TextField(
            style: TextStyle(color: Colors.indigo[800], fontSize: 20, fontWeight: FontWeight.bold),
          controller: name,
          decoration: InputDecoration(
            enabledBorder: OutlineInputBorder(
                borderSide: BorderSide(color: Colors.indigo[800]!)),
            focusedBorder: OutlineInputBorder(
              borderSide: BorderSide(color: Colors.indigo[800]!),
            ),
            labelText: 'Name',
            hintText: 'Enter your name',
            hintStyle: TextStyle(color: Colors.indigo[500], fontWeight: FontWeight.w300),
            labelStyle: TextStyle(color: Colors.indigo[800], fontWeight: FontWeight.bold),
          ),
          keyboardType: TextInputType.text,
      ),
        ),
          const SizedBox(height: 10,),
      Padding(
        padding: const EdgeInsets.only(right: 5, left:  5),
        child: TextField(
          style: TextStyle(color: Colors.indigo[800], fontSize: 20, fontWeight: FontWeight.bold),
          controller: email,
          cursorColor: Colors.lightGreen,
          decoration: InputDecoration(
            enabledBorder: OutlineInputBorder(
                borderSide: BorderSide(color: Colors.indigo[800]!)),
            focusedBorder: OutlineInputBorder(
              borderSide: BorderSide(color: Colors.indigo[800]!),
            ),
            labelText: 'Email',
            hintText: 'Enter your email',
            hintStyle: TextStyle(color: Colors.indigo[500], fontWeight: FontWeight.w300),
            labelStyle: TextStyle(color: Colors.indigo[800], fontWeight: FontWeight.bold),
          ),
          keyboardType: TextInputType.emailAddress,
        ),
      ),
          const SizedBox(height: 10,),
      Padding(
        padding: const EdgeInsets.only(right: 5, left: 5),
        child: TextField(
          style: TextStyle(color: Colors.indigo[800], fontSize: 20, fontWeight: FontWeight.bold),
          controller: phone,
          cursorColor: Colors.lightGreen,
          decoration: InputDecoration(
            enabledBorder: OutlineInputBorder(
                borderSide: BorderSide(color: Colors.indigo[800]!)),
            focusedBorder: OutlineInputBorder(
              borderSide: BorderSide(color: Colors.indigo[800]!),
            ),
            labelText: 'Phone',
            hintText: 'Enter your phone',
            hintStyle: TextStyle(color: Colors.indigo[500], fontWeight: FontWeight.w300),
            labelStyle: TextStyle(color: Colors.indigo[800], fontWeight: FontWeight.bold),
            prefixIcon: Padding(
              padding: const EdgeInsets.only(left: 12, right: 6),
              child: SizedBox(
                width: 50,
                child: Row(
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(bottom: 2),
                      child: Text(
                        '+7',
                        style:TextStyle(color: Colors.indigo[800], fontWeight: FontWeight.bold,fontSize: 20),
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
      ),
          const SizedBox(height: 10,),
      Padding(
        padding: const EdgeInsets.only(right: 5, left: 5),
        child: TextField(
          style: TextStyle(color: Colors.indigo[800], fontSize: 20, fontWeight: FontWeight.bold),
          controller: address,
          cursorColor: Colors.lightGreen,
          decoration: InputDecoration(
            enabledBorder: OutlineInputBorder(
                borderSide: BorderSide(color: Colors.indigo[800]!)),
            focusedBorder: OutlineInputBorder(
              borderSide: BorderSide(color: Colors.indigo[800]!),
            ),
            labelText: 'Address',
            hintText: 'Enter your address',
            hintStyle: TextStyle(color: Colors.indigo[500], fontWeight: FontWeight.w300),
            labelStyle: TextStyle(color: Colors.indigo[800], fontWeight: FontWeight.bold),
          ),
          keyboardType: TextInputType.text,
        ),
      ),
          const SizedBox(height: 10,),
      Padding(
        padding: const EdgeInsets.only(right: 5, left: 5),
        child: TextField(
          style: TextStyle(color: Colors.indigo[800], fontSize: 20, fontWeight: FontWeight.bold),
          controller: comment,
          cursorColor: Colors.lightGreen,
          decoration: InputDecoration(
            enabledBorder: OutlineInputBorder(
                borderSide: BorderSide(color: Colors.indigo[800]!)),
            focusedBorder: OutlineInputBorder(
              borderSide: BorderSide(color: Colors.indigo[800]!),
            ),
            labelText: 'Comment',
            hintText: 'Enter your comment',
            hintStyle: TextStyle(color: Colors.indigo[500], fontWeight: FontWeight.w300),
            labelStyle: TextStyle(color: Colors.indigo[800], fontWeight: FontWeight.bold),
          ),
          keyboardType: TextInputType.text,
        ),
      ),
          const SizedBox(height: 10,),
          ElevatedButton(
              onPressed: (){
                context.read<OrderCubit>().createOrder(
                    name: name.text,
                    phone: '+7${phone.text}',
                    email: email.text,
                    address: address.text,
                    comment: comment.text);
              },
              style: ElevatedButton.styleFrom(
                  fixedSize: const Size(160, 40),
                  backgroundColor: Colors.indigo[900],
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(15)
                  )
              ),
              child: Center(
                child: Text(
                    'Create',
                    style:  TextStyle(
                        color: Colors.indigo[100],
                        fontSize: 30)),
              ))
        ],
      ),
    );
  }
}
