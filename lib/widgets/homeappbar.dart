import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:badges/badges.dart' as badges;

import 'package:shopping_app_ui/const/colors.dart';
import 'package:shopping_app_ui/pages/cartpage.dart';

class HomeAppbar extends StatelessWidget {
  const HomeAppbar({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      child: Padding(
        padding: const EdgeInsets.all(25.0),
        child: Row(
          children: [
            Icon(
              Icons.sort,
              color: AppColor.defaultColor,
            ),
            Padding(
              padding: const EdgeInsets.only(
                left: 20,
              ),
              child: Text(
                "DP Shop",
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 23,
                  color: AppColor.defaultColor,
                ),
              ),
            ),
            Spacer(),
            Badge(
              backgroundColor: Colors.red,
              padding: EdgeInsets.all(4),
              label: Text(
                "2",
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 5,
                ),
              ),
              // label: Text(
              //   "3",
              //   style: TextStyle(
              //     color: Colors.white,
              //   ),
              // ),
              child: InkWell(
                onTap: () {
                  Get.to(() => CartPage());
                  // Navigator.push(context,
                  //     MaterialPageRoute(builder: ((context) => CartPage())));
                },
                child: Icon(
                  Icons.shopping_bag_outlined,
                  size: 30,
                  color: AppColor.defaultColor,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
