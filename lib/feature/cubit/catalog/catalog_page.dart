import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:shop/feature/cubit/basket/basket_page.dart';
import 'package:shop/feature/cubit/catalog/catalog_cubit.dart';
import 'package:shop/feature/cubit/catalog/category_page.dart';
import 'package:shop/feature/cubit/item/item_page.dart';
import 'package:shop/feature/cubit/login/login_page.dart';
import 'package:shop/feature/cubit/order/order_create_page.dart';
import 'package:shop/feature/cubit/order/order_info_page.dart';
import 'package:shop/feature/domain/entities/products/item_entity.dart';
import 'package:shop/feature/domain/repositories/product_list_rep.dart';
import 'package:infinite_scroll_pagination/infinite_scroll_pagination.dart';

class CatalogPage extends StatelessWidget {
  final String id;

  const CatalogPage({Key? key, required this.id}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
        providers: [BlocProvider(
            create: (_) => CatalogCubit(context.read<ProductListRep>()))],
        child: CatalogWidget(id: id));
  }
}

class CatalogWidget extends StatefulWidget {
  final String id;

  const CatalogWidget({Key? key, required this.id}) : super(key: key);

  @override
  State<CatalogWidget> createState() => _CatalogWidgetState();
}

class _CatalogWidgetState extends State<CatalogWidget> {

  final PagingController<int, ItemEntity> _pagingController = PagingController(firstPageKey: 1);

  @override
  void initState() {
    _pagingController.addPageRequestListener((pageKey) {
      context.read<CatalogCubit>().fetchCatalog(id: widget.id, page: pageKey);
    });
    super.initState();
  }


  @override
  Widget build(BuildContext context) {


    return Scaffold(
      bottomNavigationBar: BottomAppBar(
        color: Colors.indigo[300],
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            IconButton(
                onPressed: () => Navigator.push(
                    context, MaterialPageRoute(
                    builder: (context) => const BasketPage())),
                icon: const Icon(Icons.shopping_basket)),
            IconButton(
                onPressed: () => Navigator.push(
                    context, MaterialPageRoute(
                    builder: (context) => const OrderCreatePage())),
                icon: const Icon(Icons.account_balance_outlined)),
            IconButton(
                onPressed: () => Navigator.push(
                    context, MaterialPageRoute(
                    builder: (context) => const OrderInfoPage())),
                icon: const Icon(Icons.assessment_sharp))
          ],
        ),
      ),
      appBar: AppBar(
        automaticallyImplyLeading: false,
        title: const Text('Shop Catalog'),
        backgroundColor: Colors.indigo[800],
        actions: [
          IconButton(
              onPressed: () => Navigator.push(
                  context, MaterialPageRoute(
                  builder: (context) => const CategoryPage())),
              icon: const Icon(Icons.filter_list)),
          IconButton(
              onPressed: () => Navigator.push(
                  context, MaterialPageRoute(
                  builder: (context) => const UserLoginPage())),
              icon: const Icon(Icons.logout))
        ],
      ),
      backgroundColor: Colors.indigo[100],
      body: BlocConsumer<CatalogCubit, CatalogState>(
          builder: (context, state){
            return CupertinoScrollbar(
                child: CustomScrollView(
                  slivers: [
                    PagedSliverList.separated(
                        pagingController: _pagingController,
                        builderDelegate: PagedChildBuilderDelegate<ItemEntity>(
                            itemBuilder: (BuildContext context, items, index){
                              return Padding(
                                  padding: const EdgeInsets.only(bottom: 0),
                                  child: ListItem(
                                    items: items
                                  ),);
                            }),
                        separatorBuilder: (context, index){
                          return const SizedBox(height: 0,);
                        })
                  ],
                ));
          },
          listener: (context, state) async{
            if (state is LoadedCatalogState) {
              if (state.loadedCatalog?.pagination!.page ==
                  state.loadedCatalog?.pagination!.pages) {
                _pagingController.appendLastPage(state.loadedCatalog!.items!);
              } else {
                _pagingController.appendPage(state.loadedCatalog!.items!,
                    state.loadedCatalog!.pagination!.page! + 1);
              }
            }
          })
    );
  }
}

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
                      child: SizedBox(
                        height: 200,
                          child: Image.network('${items.image!.file!.url}', fit: BoxFit.fill,))),
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

























