import 'package:flutter/material.dart';
import 'package:flutter_assignment_sajib/constants/app_colors.dart';
import 'package:flutter_assignment_sajib/constants/assets.dart';
import 'package:flutter_assignment_sajib/routs/routes_names.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:get/get_utils/get_utils.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.pageBackground,

      appBar: AppBar(

        automaticallyImplyLeading: false,
        backgroundColor: AppColors.pageBackground,
        title: Text("Product List",style: context.textTheme.titleLarge?.copyWith(
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
            SizedBox(
              height: 30.h,
            ),
            Container(
        padding: EdgeInsets.symmetric(horizontal:10.w),
          decoration: BoxDecoration(
              borderRadius: BorderRadius.all(Radius.circular(10.r)),
              boxShadow: [
                BoxShadow(
                  color: AppColors.shadowColor,
                ),
                BoxShadow(
                  color:AppColors.shadowColor.withOpacity(0.3),
                  spreadRadius: 0.0,
                  blurRadius: 30.0,
                  offset: Offset(0.0,10.0),
                ),
              ],
              color: AppColors.white),
          width: Get.width,
          height: 60.h,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Container(
                child: Row(
                  children: [
                    Image.asset(AppAssets.filter,height: 16.h,width: 15.w,),
                    SizedBox(
                      width: 6.w,
                    ),
                    Text("Filter",style: context.textTheme.titleMedium?.copyWith(
                      fontSize: 16.sp,
                      color: AppColors.shadowColor
                    ),)
                  ],
                ),
              ),
              Container(
                child: Row(
                  children: [
                    Text("Sort By",style: context.textTheme.titleMedium?.copyWith(
                        fontSize: 16.sp,
                        color: AppColors.shadowColor
                    ),),
                    SizedBox(
                      width: 6.w,
                    ),
                    Image.asset(AppAssets.arrow_down,height: 16.h,width: 15.w,),
                    SizedBox(
                      width: 16.w,
                    ),
                    Container(
                      child:  Image.asset(AppAssets.menus,height: 16.h,width: 15.w,),
                    ),
                  ],
                ),
              ),
            ],
          )),
            SizedBox(
              height: 30.h,
            ),
            Expanded(
              child: GridView.builder(
                itemCount: 10,
                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount:  2 ,
                mainAxisSpacing: 14.w,
                  crossAxisSpacing: 14.w,
                    childAspectRatio: (150.0 / 250.0)
                ),
                itemBuilder: (BuildContext context, int index) {
                  return  InkWell(
                    onTap: (){
                      Get.toNamed(RoutesName.profile_screen);
                    },
                    child: Container(
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.all(Radius.circular(10.r)),
                          boxShadow: [
                            BoxShadow(
                              color:AppColors.shadowColor.withOpacity(0.3),
                              spreadRadius: 0.0,
                              blurRadius: 5.0,
                              offset: Offset(0.0,10.0),
                            ),
                          ],
                          color: AppColors.white),
                      child:Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                            ClipRRect(
                                child: Image.asset(AppAssets.man1,width: Get.width,height: 150.h, fit: BoxFit.fitWidth,),
                            borderRadius: BorderRadius.only(topRight: Radius.circular(10.r),topLeft:Radius.circular(10.r) ),
                            ),
                          SizedBox(
                            height: 10.h,
                          ),
                         Padding(
                           padding: EdgeInsets.symmetric(horizontal: 19.w),
                           child: Column(
                             mainAxisAlignment: MainAxisAlignment.start,
                             crossAxisAlignment: CrossAxisAlignment.start,
                             children: [
                               Text("Girls Stylish Dresses…",maxLines: 2,style: context.textTheme.titleMedium?.copyWith(
                                   fontWeight: FontWeight.normal,
                                   fontSize: 14.sp
                               ),),
                               SizedBox(
                                 height: 10.h,
                               ),
                               Row(
                                 children: [
                                   Container(
                                     child: Text("\$150",style: context.textTheme.titleMedium?.copyWith(
                                       color: AppColors.shadowColor,
                                       fontSize: 15.sp,
                                       decoration: TextDecoration.lineThrough,
                                     ),),
                                   ),
                                   SizedBox(
                                     width: 6.h,
                                   ),
                                   Container(
                                     child: Text("\$79.00",style: context.textTheme.titleMedium?.copyWith(
                                         color: AppColors.black,
                                         fontSize: 18.sp,
                                         decoration: TextDecoration.lineThrough,
                                         fontWeight: FontWeight.bold
                                     ),),
                                   )
                                 ],
                               ),
                               SizedBox(
                                 height: 10.h,
                               ),
                               RatingBar.builder(
                                 initialRating: 4,
                                 minRating: 1,
                                 direction: Axis.horizontal,
                                 allowHalfRating: true,
                                 itemCount: 5,
                                 itemSize: 15.0,
                                 itemPadding: EdgeInsets.symmetric(horizontal: 2.0),
                                 itemBuilder: (context, _) => Icon(
                                   Icons.star,
                                   color: Colors.amber,
                                   size: 5,
                                   opticalSize: 5,
                                   weight: 10,
                                 ),
                                 onRatingUpdate: (rating) {
                                   print(rating);
                                 },
                               )
                             ],
                           ),
                         ),

                        ],
                      )
                    ),
                  );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
