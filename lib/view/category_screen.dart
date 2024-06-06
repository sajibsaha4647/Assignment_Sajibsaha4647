import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

import '../constants/app_colors.dart';
import '../constants/assets.dart';

class CategoryScreen extends StatefulWidget {
  const CategoryScreen({super.key});

  @override
  State<CategoryScreen> createState() => _CategoryScreenState();
}

class _CategoryScreenState extends State<CategoryScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.pageBackground,

      appBar: AppBar(
        automaticallyImplyLeading: false,
        backgroundColor: AppColors.pageBackground,
        title: Text("Category List",style: context.textTheme.titleLarge?.copyWith(
            color: AppColors.black,
            fontSize: 22.sp,
            fontWeight: FontWeight.bold
        ),),
        centerTitle: true,
        actions: [
          Container(
              margin: EdgeInsets.only(right: 20.w),
              child: Image.asset(AppAssets.search_black,width: 22.w,height: 22.w,)),
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
