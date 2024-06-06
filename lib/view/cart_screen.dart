import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

import '../constants/app_colors.dart';
import '../constants/assets.dart';

class CartScreen extends StatefulWidget {
  const CartScreen({super.key});

  @override
  State<CartScreen> createState() => _CartScreenState();
}

class _CartScreenState extends State<CartScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.pageBackground,
      appBar: AppBar(
        automaticallyImplyLeading: false,
        backgroundColor: AppColors.pageBackground,
        title: Text("Cart",style: context.textTheme.titleLarge?.copyWith(
            color: AppColors.black,
            fontSize: 22.sp,
            fontWeight: FontWeight.bold
        ),),
        centerTitle: true,
        actions: [
          Container(
              margin: EdgeInsets.only(right: 20.w),
              child: Image.asset(AppAssets.cart,width: 22.w,height: 22.w,)),
        ],
      ),
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: 15.w),
        child: Column(
          children: [

          ],
        ),
      ),
    );
  }
}
