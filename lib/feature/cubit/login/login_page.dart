import 'package:shop/feature/cubit/basket/basket_cubit.dart';
import 'package:shop/feature/cubit/login/login_cubit.dart';
import 'package:shop/feature/domain/repositories/basket_rep.dart';
import 'package:shop/feature/ui/login/login.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../../domain/repositories/users_rep.dart';
import '../catalog/catalog_page.dart';

class UserLoginPage extends StatelessWidget {
  const UserLoginPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
        providers: [
          BlocProvider(
              create: (_) => UserLoginCubit(context.read<UserRep>())),
          BlocProvider(
              create: (_) => BasketCubit(context.read<BasketRep>()))
        ], child: const LoginPage());
  }
}



class LoginPage extends StatefulWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  @override
  Widget build(BuildContext context) {
    return BlocBuilder<UserLoginCubit, UserLoginState>(
        builder: (context, state){
          return Scaffold(
            backgroundColor: Colors.indigo[400],
            body: SingleChildScrollView(
              child: Column(
                children: [
                  Column(
                    children: [
                      const LoginWidget(),
                      const SizedBox(height: 30,),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          ElevatedButton(
                              onPressed: () async{
                                await context.read<BasketCubit>().fetchBasket();
                                Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                        builder: (context) => const CatalogPage(id: '',)));
                              },
                              style: ElevatedButton.styleFrom(
                                  fixedSize: const Size(150, 50),
                                  backgroundColor: Colors.indigo[900],
                                  shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(15)
                                  )
                              ),
                              child: Text(
                                  'Sign in',
                                  style:  TextStyle(
                                      color: Colors.indigo[100],
                                      fontSize: 30))),
                          const SizedBox(width: 30,),
                          ElevatedButton(
                              onPressed: (){
                                context.read<UserLoginCubit>().fetchLogin();
                                Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                        builder: (context) => const CatalogPage(id: '')));
                              },
                              style: ElevatedButton.styleFrom(
                                  fixedSize: const Size(150, 50),
                                  backgroundColor: Colors.indigo[900],
                                  shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(15)
                                  )
                              ),
                              child: Text(
                                  'Sign up',
                                  style:  TextStyle(
                                      color: Colors.indigo[100],
                                      fontSize: 30))),
                        ],
                      )
                    ],
                  ),
                ],
              ),
            ),
          );
        }
        );
  }
}