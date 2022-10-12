import 'package:shop/feature/cubit/login/login_cubit.dart';
import 'package:shop/feature/cubit/login/two.dart';
import 'package:shop/feature/data/repositories/users_rep.dart';
import 'package:shop/feature/ui/login/login.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class UserLoginPage extends StatelessWidget {
  const UserLoginPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
        providers: [
          BlocProvider(
              create: (_) => UserLoginCubit(context.read<UserReps>()))
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
            body: Column(


              children: [
                const LoginWidget(),
                const SizedBox(height: 30,),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    ElevatedButton(
                        onPressed: (){
                          context.read<UserLoginCubit>().fetchLogin();
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => const Two()));
                        },
                        style: ElevatedButton.styleFrom(
                            fixedSize: const Size(200, 50),
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
                                  builder: (context) => const Two()));
                        },
                        style: ElevatedButton.styleFrom(
                            fixedSize: const Size(200, 50),
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
          );
        }
        );
  }
}