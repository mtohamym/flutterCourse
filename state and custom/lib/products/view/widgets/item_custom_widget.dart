import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:state_mangment/products/view_model/products_cubit.dart';

class ItemCustomWidget extends StatelessWidget {
  const ItemCustomWidget(
      {Key? key, required this.image, required this.price, required this.title , required this.isFav , required this.itemIndex})
      : super(key: key);
  final String image;
  final String price;
  final String title;
  final bool isFav;
  final int itemIndex;

  @override
  Widget build(BuildContext context) {
    ProductsCubit myCubit = ProductsCubit().get(context);
    return Stack(
      children: [
        Container(
          padding: const EdgeInsets.all(15),
          height: 260,
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(16),
              color: CupertinoColors.white,
              boxShadow: const [
                BoxShadow(
                    spreadRadius: 2, blurRadius: 20, color: Color(0xffF1F3F6))
              ]),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Center(
                child: Image.network(
                  image,
                  width: 100,
                  height: 100,
                ),
              ),
              const SizedBox(
                height: 5,
              ),
              Text(
                title,
                style: const TextStyle(color: Colors.black),
              ),
              const SizedBox(
                height: 5,
              ),
              Text(
                price + " EGP",
                style: const TextStyle(
                    fontWeight: FontWeight.bold, color: Color(0xff1d4ca1)),
              )
            ],
          ),
        ),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 10),
          child: Align(
            alignment: AlignmentDirectional.topEnd,
            child: Container(
              width: 40,
              height: 50,
              decoration: const BoxDecoration(
                  color: Color(0xffe8edf5),
                  borderRadius: BorderRadius.only(
                      bottomRight: Radius.circular(8),
                      bottomLeft: Radius.circular(8))),
              child: IconButton(
                icon: Icon(
                  isFav ?
                  Icons.favorite:
                  Icons.favorite_outline_rounded,
                  color:  isFav ?
                  CupertinoColors.destructiveRed:
                  CupertinoColors.activeBlue,
                ),
                onPressed: () {
                  myCubit.addProductToFav(itemIndex);
                },
              ),
            ),
          ),
        ),
        Align(
            alignment: Alignment.bottomCenter,
            child: IconButton(
              icon: const Icon(Icons.shopping_cart_checkout),
              color: CupertinoColors.white,
              style: IconButton.styleFrom(
                  backgroundColor: CupertinoColors.activeBlue),
              onPressed: () {
                myCubit.removeProduct(itemIndex);
              },
            )),
      ],
    );
  }
}
