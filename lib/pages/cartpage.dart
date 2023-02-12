import 'package:flutter/material.dart';
import 'package:shopping_app_ui/widgets/cartitemswidgets.dart';
import 'package:shopping_app_ui/widgets/cartpageappbar.dart';

class CartPage extends StatelessWidget {
  const CartPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        children: [
          CartAppbar(),
          Container(
            padding: EdgeInsets.only(
              top: 15,
            ),
            // height: 700,
            decoration: BoxDecoration(
              color: Color(0xFFEDECF2),
              borderRadius: BorderRadius.only(
                topLeft: Radius.circular(35),
                topRight: Radius.circular(35),
              ),
            ),
            child: Column(
              children: [
                CartItems(),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
