

import 'dart:async';
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

import '../model/response_model/filter_list_model.dart';

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

    //===================== filter list ===============

  List<FilterList> filterListResponse = [];
  bool filterListLoading = false;

  Future<void> filterList() async {
    filterListLoading = true;
    update();
    _homeRepo.filterList().then((value){
      filterListResponse = value;
        update();
      filterListLoading = false;
        update();
            }).onError((error, stackTrace){
      filterListLoading = false;
        update();
        print(error);
      });
    }

    void getFilteredCheckPress(int index){
        if(filterListResponse.length != 0){
          filterListResponse[index] = filterListResponse[index].copyWith(
            ischecked: filterListResponse[index].ischecked == true ? false : true
          );
        }
        update();
    }

      bool sortBy = false;

      void setSortBy(){
        sortBy = !sortBy;
        update();
      }

    void sorByNameProductList(){
      setSortBy();
      if(sortBy == false){
        productListResponse..sort((a, b) => a.name!.compareTo(b.name!));
        update();
      }else if(sortBy == true){
        productListResponse..sort((a, b) => b.name!.compareTo(a.name!));
        update();

      }
      update();

    }


    void filterProductList(){
      sorByNameProductList();
      update();
      Get.back();
    }




}

