import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../../cubit/item/item_page.dart';
import '../../domain/entities/products/item_entity.dart';

class ListItem extends StatelessWidget {
  final ItemEntity items;

  const ListItem({Key? key, required this. items}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => Navigator.push(
          context, MaterialPageRoute(
          builder: (context) => ItemPage(id: items.id))),
      child: Container(
        margin: const EdgeInsets.all(5),
        padding: const EdgeInsets.all(10),
        decoration: BoxDecoration(
            color: Colors.indigo[900],
            borderRadius: BorderRadius.circular(10)
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Center(
                child: Container(
                  height: 200,
                  width: 200,
                  decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(10)
                  ),
                  child: SizedBox(
                      height: 200,
                      child: ClipRRect(
                          borderRadius: BorderRadius.circular(10),
                          child: Image.network('${items.image!.file!.url}',))),
                )),
            const SizedBox(height: 10,),
            Container(
              padding: const EdgeInsets.all(3),
              decoration: BoxDecoration(
                  color: Colors.green[500],
                  borderRadius: BorderRadius.circular(10)
              ),
              child: Text("${items.price} ₽",
                style: TextStyle(color: Colors.indigo[100], fontSize: 20),),
            ),

            const SizedBox(height: 10,),
            Text('${items.title}',
              style: TextStyle(color: Colors.indigo[100], fontSize: 20),),
            const SizedBox(height: 10,),

          ],
        ),

      ),
    );
  }
}