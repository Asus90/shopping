import 'package:flutter/material.dart';
import 'package:shop/Widgets/cart/cart_item_product.dart';
import 'package:shop/Widgets/cart/cartapp_bar.dart';

class CartItems extends StatelessWidget {
  const CartItems({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        children: [
          CartAppBar(),
          Container(
            height: 700,
            padding: const EdgeInsets.only(top: 15),
            decoration: const BoxDecoration(
                color: Color.fromARGB(255, 241, 241, 241),
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(30),
                  topRight: Radius.circular(30),
                )),
            child: Column(
              children: [
                CartItemproduct(),
              ],
            ),
          )
        ],
      ),
    );
  }
}
