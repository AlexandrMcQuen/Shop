import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:shop/feature/domain/entities/categories/categories_entity.dart';

import '../../cubit/catalog/catalog_page.dart';

class CategoryWidget extends StatelessWidget {
  final CategoriesEntity? categoriesEntity;

  const CategoryWidget({Key? key, required this.categoriesEntity}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => Navigator.push(
          context, MaterialPageRoute(
          builder: (context) => CatalogPage(id: '${categoriesEntity!.id}'))),
      child: Container(
        margin: const EdgeInsets.all(5),
        padding: const EdgeInsets.all(10),
        decoration: BoxDecoration(
          color: Colors.indigo[900],
          borderRadius: BorderRadius.circular(10)
        ),
        child: Center(
          child: Text("${categoriesEntity!.title}",
          style: TextStyle(color: Colors.indigo[100], fontSize: 20),),
        ),
      ),
    );
  }
}
