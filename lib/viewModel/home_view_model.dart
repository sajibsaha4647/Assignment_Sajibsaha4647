

import 'dart:math';

import 'package:flutter/cupertino.dart';
import 'package:flutter/services.dart';
import 'package:flutter_assignment_sajib/constants/assets.dart';
import 'package:flutter_assignment_sajib/model/response_model/product_list_response_model.dart';
import 'package:flutter_assignment_sajib/repository/home_repository.dart';
import 'package:flutter_assignment_sajib/view/cart_screen.dart';
import 'package:flutter_assignment_sajib/view/category_screen.dart';
import 'package:flutter_assignment_sajib/view/product_list_screen.dart';
import 'package:flutter_assignment_sajib/view/profile_screen.dart';
import 'package:get/get.dart';

class HomeViewModel extends GetxController{

 final _homeRepo = HomeRepository() ;

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

  //===================== product list ===============

  List<ProductListResponse> productListResponse = [] ;
  bool productListLoading = false ;
  Future<void> productList() async {
    productListLoading = true;
    update();
    _homeRepo.productList().then((value){
      productListResponse = value ;
        update();
      productListLoading = false;
        update();
            }).onError((error, stackTrace){
      productListLoading = false;
        update();
        print(error);
      });
    }


    void sorByNameProductList(){

      productListResponse.shuffle();

    }


}

