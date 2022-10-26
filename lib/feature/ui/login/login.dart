import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class LoginWidget extends StatelessWidget {
  const LoginWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 150, right: 20, left: 20,),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Text('Shop',
            style: TextStyle(fontSize: 80, color: Colors.indigo[900], fontWeight: FontWeight.bold),),
          const SizedBox(height: 70,),
          const UserLoginInput(),
          const SizedBox(height: 20),
          const UserPasswordInput(),
        ],
      ),
    );
  }
}

class UserLoginInput extends StatefulWidget {
  const UserLoginInput({Key? key}) : super(key: key);

  @override
  State<UserLoginInput> createState() => _UserLoginInputState();
}

class _UserLoginInputState extends State<UserLoginInput> {
  @override
  Widget build(BuildContext context) {
    return TextField(
      style: TextStyle(fontSize: 30, color: Colors.indigo[900]),
      decoration: InputDecoration(
          enabled: true,
          filled: true,
          fillColor: Colors.indigo[100],
          icon: Icon(Icons.login, color: Colors.indigo[100],),
          hintText: 'Please enter your login',
          hintStyle: TextStyle(color: Colors.indigo[300], fontSize: 20),
          border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(15),
              borderSide: BorderSide.none
          )

      ),
    );
  }
}


class UserPasswordInput extends StatefulWidget {
  const UserPasswordInput({Key? key}) : super(key: key);

  @override
  State<UserPasswordInput> createState() => _UserPasswordInputState();
}

class _UserPasswordInputState extends State<UserPasswordInput> {
  @override
  Widget build(BuildContext context) {
    return TextField(
      style: TextStyle(fontSize: 30, color: Colors.indigo[900]),
      decoration: InputDecoration(
          enabled: true,
          filled: true,
          fillColor: Colors.indigo[100],
          icon: Icon(Icons.password, color: Colors.indigo[100],),
          hintText: 'Please enter your password',
          hintStyle: TextStyle(color: Colors.indigo[300], fontSize: 20),
          border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(15),
              borderSide: BorderSide.none
          )

      ),
      obscureText: true,
    );
  }
}
