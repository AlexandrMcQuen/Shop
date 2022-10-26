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

import '../../ui/catalog/list_items.dart';
import '../../ui/catalog/side_bar.dart';

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
      drawer: SideBar(),
      appBar: AppBar(
        automaticallyImplyLeading: false,
        title: const Text('Shop Catalog'),
        backgroundColor: Colors.indigo[800],
        actions: [
          IconButton(
              onPressed: () => Navigator.push(
                  context, MaterialPageRoute(
                  builder: (context) => const BasketPage())),
              icon: const Icon(Icons.shopping_cart)),
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



























