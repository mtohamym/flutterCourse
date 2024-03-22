import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:state_mangment/products/view/widgets/item_custom_widget.dart';
import 'package:state_mangment/products/view_model/products_cubit.dart';

class ProductsScreen extends StatelessWidget {
  const ProductsScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      backgroundColor: const Color(0xfff9f9fa),

      body: SafeArea(
        child: BlocProvider(
          create: (context) => ProductsCubit()..initScreen(),
          child: BlocConsumer<ProductsCubit, ProductsState>(
            listener: (context, state) {
              // TODO: implement listener
            },
            builder: (context, state) {

              ProductsCubit myCubit = ProductsCubit().get(context);
              return 
                myCubit.data.length == 0? 
                    Center(
                      child: Text("ملقتش داتا جبتلك جرجير"),
                    ):
                GridView.builder(
                gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                    childAspectRatio: 1 / 1.6,
                    crossAxisCount: 2,
                    crossAxisSpacing: 10,
                    mainAxisSpacing: 10),
                itemCount: myCubit.data.length,
                padding: const EdgeInsets.symmetric(
                    horizontal: 16, vertical: 10),
                itemBuilder: (BuildContext context, int index) {
                  return  ItemCustomWidget(
                    image:
                    myCubit.data[index].image,
                    price: myCubit.data[index].price,
                    title:
                    myCubit.data[index].title,
                    isFav: myCubit.data[index].isFav,
                    itemIndex: index,
                  );
                },
              );
            },
          ),
        ),
      ),
    );
  }
}
