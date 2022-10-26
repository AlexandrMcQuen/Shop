import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:shop/feature/ui/item/add_delete_button.dart';


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
    return Expanded(
      child: Container(
        padding: const EdgeInsets.all(10),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Center(
              child: Container(
                width: 400,
                height: 400,
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(10)
                ),
                padding: const EdgeInsets.all(10),
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(10),
                      child: Image.network(url))),
            ),
            const SizedBox(height: 10,),
            Padding(
              padding: const EdgeInsets.only(left: 10),
              child: Container(
                padding: const EdgeInsets.all(5),
                decoration: BoxDecoration(
                  color: Colors.green[500],
                  borderRadius: BorderRadius.circular(10)
                ),
                child: Text('$price ₽',
                style:  TextStyle(color: Colors.indigo[100], fontSize: 30),),
              ),
            ),
            const SizedBox(height: 10,),
            Padding(
              padding: const EdgeInsets.only(left: 10),
              child: Text(title,
                  style:  TextStyle(color: Colors.indigo[100], fontSize: 30, fontWeight: FontWeight.bold)),
            ),
            const SizedBox(height: 10,),
            SizedBox(
              height: 50,
              child: ListView.builder(
                scrollDirection: Axis.horizontal,
                  itemBuilder: (context, index){
                    return Container(
                      width: 50,
                      padding: const EdgeInsets.all(5),
                      margin: const EdgeInsets.only(right: 10, left: 10),
                      decoration: BoxDecoration(
                        border: Border.all(width: 2),
                        color: HexColor('${colors[index].code}')
                      ),
                    );
                  },
                  itemCount: colors.length,),
            ),
            const SizedBox(height: 10,),
            ADButton(id: id,),

          ],
        ),
      ),
    );
  }
}
