import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../../cubit/order/order_create_page.dart';
import '../../cubit/order/order_info_page.dart';

class SideBar extends StatelessWidget {
  const SideBar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        padding: EdgeInsets.zero,
        children: [
          UserAccountsDrawerHeader(
              accountName: const Text('User'),
              accountEmail: const Text('user@gmail.com'),
            currentAccountPicture: CircleAvatar(
              child: ClipOval(
                child: Image.network(
                  'https://oflutter.com/wp-content/uploads/2021/02/girl-profile.png',
                  fit: BoxFit.cover,
                  width: 90,
                  height: 90,
                ),
              ),
            ),
            decoration: BoxDecoration(
              color: Colors.indigo[800]
            ),
          ),
          ListTile(
            title: const Text('Create order'),
            leading: const Icon(Icons.bookmark_add_outlined),
            onTap: () => Navigator.push(
                context, MaterialPageRoute(
                builder: (context) => const OrderCreatePage())),
          ),
          const Divider(),
          ListTile(
            title: const Text('Check order'),
            leading: const Icon(Icons.bookmark_added_outlined),
            onTap: () => Navigator.push(
                context, MaterialPageRoute(
                builder: (context) => const OrderInfoPage())),
          )
        ],
      ),
    );
  }
}
