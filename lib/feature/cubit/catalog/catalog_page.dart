import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:shop/feature/cubit/catalog/catalog_cubit.dart';
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
      appBar: AppBar(
        title: const Text('Catalog'),
      ),
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
                                  padding: const EdgeInsets.only(bottom: 20),
                                  child: ListItem(
                                    items: items
                                  ),);
                            }),
                        separatorBuilder: (context, index){
                          return const SizedBox(height: 10,);
                        })
                  ],
                ));
          },
          listener: (context, state) async{
            if (state is LoadedCatalogState) {
              if (state.loadedCatalog.info.page ==
                  state.loadedCatalog.info.pages) {
                _pagingController.appendLastPage(state.loadedCatalog.items);
              } else {
                _pagingController.appendPage(state.loadedCatalog.items,
                    state.loadedCatalog.info.page + 1);
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
    return Container(
      margin: const EdgeInsets.all(5),
      padding: const EdgeInsets.all(10),
      decoration: BoxDecoration(
          color: Colors.indigo[900],
          borderRadius: BorderRadius.circular(10)
      ),
      child: Center(
        child: Column(
          children: [
            Text("${items.id}",
              style: TextStyle(color: Colors.indigo[100], fontSize: 20),),
            Text(items.title,
              style: TextStyle(color: Colors.indigo[100], fontSize: 20),),
            Text("${items.price}",
              style: TextStyle(color: Colors.indigo[100], fontSize: 20),),
            Text(items.image.file.url,
              style: TextStyle(color: Colors.indigo[100], fontSize: 20),),
          ],
        ),
      ),
    );
  }
}

























