import 'package:flutter/cupertino.dart';

import '../../domain/entities/products/colors_entity.dart';

class ItemCardWidget extends StatelessWidget {
  final int id;
  final String url;
  final int price;
  final String title;
  final List<ColorsEntity> colors;

  const ItemCardWidget({Key? key, required this.id, required this.url, required this.price, required this.colors, required this.title}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(10),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(title),
          const SizedBox(height: 10,),
          Text('$price'),
          const SizedBox(height: 10,),

        ],
      ),
    );
  }
}
