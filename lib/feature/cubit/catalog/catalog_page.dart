import 'package:flutter/cupertino.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:shop/feature/cubit/catalog/catalog_cubit.dart';
import 'package:shop/feature/domain/repositories/product_list_rep.dart';

class CatalogPage extends StatelessWidget {
  const CatalogPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
        providers: [
          BlocProvider(
              create: (_) => CatalogCubit(context.read<ProductListRep>()))
        ],
        child: CatalogPageWidget());
  }
}

class CatalogPageWidget extends StatefulWidget {
  const CatalogPageWidget({Key? key}) : super(key: key);

  @override
  State<CatalogPageWidget> createState() => _CatalogPageWidgetState();
}

class _CatalogPageWidgetState extends State<CatalogPageWidget> {

  @override
  void initState() {
    context.read<CatalogCubit>().productListRep.getAll(id: id, page: 1);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Container();
  }
}
