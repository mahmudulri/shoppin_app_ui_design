import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:shopping_app_ui/const/colors.dart';

class CartAppbar extends StatelessWidget {
  const CartAppbar({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      padding: EdgeInsets.all(20),
      child: InkWell(
        onTap: () {
          Navigator.pop(context);
        },
        child: Row(
          children: [
            Icon(
              Icons.arrow_back,
              size: 30,
              color: AppColor.defaultColor,
            ),
            Padding(
              padding: const EdgeInsets.only(
                left: 20,
              ),
              child: Text(
                "Cart",
                style: TextStyle(
                  fontSize: 23,
                  color: AppColor.defaultColor,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            Spacer(),
            Icon(
              Icons.more_vert,
              color: AppColor.defaultColor,
              size: 30,
            )
          ],
        ),
      ),
    );
  }
}
