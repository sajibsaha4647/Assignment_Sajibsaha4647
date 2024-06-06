

import 'package:flutter/cupertino.dart';
import 'package:flutter_assignment_sajib/constants/assets.dart';
import 'package:flutter_assignment_sajib/view/cart_screen.dart';
import 'package:flutter_assignment_sajib/view/category_screen.dart';
import 'package:flutter_assignment_sajib/view/product_list_screen.dart';
import 'package:flutter_assignment_sajib/view/profile_screen.dart';
import 'package:get/get.dart';

class HomeViewModel extends GetxController{
  var bottomNavIndex = 0;

  final iconList = <String>[
    AppAssets.home,
    AppAssets.category,
    AppAssets.cart,
    AppAssets.user,
  ];
  final bodyList=<Widget> [
    ProductListScreen(),
    CategoryScreen(),
    CartScreen(),
    ProfileScreen(),
  ];

  void changBottomNavBar(int index){
    bottomNavIndex=index;
    update();
    print(index);
    print("index here print index");
  }

}