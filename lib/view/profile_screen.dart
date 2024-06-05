import 'package:dotted_border/dotted_border.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

import '../constants/app_colors.dart';
import '../constants/assets.dart';

class ProfileScreen extends StatefulWidget {
  const ProfileScreen({super.key});

  @override
  State<ProfileScreen> createState() => _ProfileScreenState();
}

class _ProfileScreenState extends State<ProfileScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.pageBackground,
      appBar: AppBar(
        backgroundColor: AppColors.pageBackground,
        automaticallyImplyLeading: false,
        title: Text("My Account",style: context.textTheme.titleLarge?.copyWith(
            color: AppColors.black,
            fontSize: 22.sp,
            fontWeight: FontWeight.bold
        ),),
        centerTitle: true,
      ),
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: 15.w),
        child: Column(
          children: [
            SizedBox(
              height: 40.h,
            ),
              Center(
                child: DottedBorder(
                  color: AppColors.primaryColor,
                  dashPattern: [3,1],
                  strokeWidth: 1,
                  borderType: BorderType.Circle,
                  child:Container(
                    padding: EdgeInsets.all(5.r),
                    height: 112.w,
                    width: 112.w,
                    decoration: BoxDecoration(
                
                    ),
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(112/2),
                      child: Image.asset(AppAssets.profile),
                    ),
                  )
                ),
              ),
            SizedBox(
              height: 40.h,
            ),
            Text("John Smith",style: context.textTheme.titleLarge?.copyWith(
              fontWeight: FontWeight.bold
            ),),
            Text("info@johnsmith.com",style:context.textTheme.titleMedium?.copyWith(
              color:AppColors.fontColor
            ) ,),
            SizedBox(
              height: 40.h,
            ),
            Container(
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
                  child: Padding(
                    padding: EdgeInsets.symmetric(horizontal: 22.w,vertical: 24.w),
                    child: Column(
                      children: [
                        Container(
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                             Row(
                               children: [
                                 Image.asset(AppAssets.user,height: 17.h,width: 22.w,),
                                 SizedBox(
                                   width: 3.w,
                                 ),
                                 Text("Account"),
                               ],
                             ),
                              Container(
                                  alignment: Alignment.topRight,
                                  child: Image.asset(AppAssets.arrow_right,height: 17.h,width: 22.w,)),
                            ],
                          ),
                          padding: EdgeInsets.only(bottom: 15.w),
                          decoration: BoxDecoration(
                            border: Border(
                              bottom:BorderSide(
                                color: AppColors.placeholderColor,
                                width: 1.0,
                              )
                            )
                          ),
                        ),
                        SizedBox(
                          height: 15.h,
                        ),
                        Container(
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Row(
                                children: [
                                  Image.asset(AppAssets.lock,height: 17.h,width: 22.w,),
                                  SizedBox(
                                    width: 3.w,
                                  ),
                                  Text("Passwords"),
                                ],
                              ),
                              Container(
                                  alignment: Alignment.topRight,
                                  child: Image.asset(AppAssets.arrow_right,height: 17.h,width: 22.w,)),
                            ],
                          ),
                          padding: EdgeInsets.only(bottom: 15.w),
                          decoration: BoxDecoration(
                              border: Border(
                                  bottom:BorderSide(
                                    color: AppColors.placeholderColor,
                                    width: 1.0,
                                  )
                              )
                          ),
                        ),
                        SizedBox(
                          height: 15.h,
                        ),
                        Container(
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Row(
                                children: [
                                  Image.asset(AppAssets.bell,height: 17.h,width: 22.w,),
                                  SizedBox(
                                    width: 3.w,
                                  ),
                                  Text("Notification"),
                                ],
                              ),
                              Container(
                                  alignment: Alignment.topRight,
                                  child: Image.asset(AppAssets.arrow_right,height: 17.h,width: 22.w,)),
                            ],
                          ),
                          padding: EdgeInsets.only(bottom: 15.w),
                          decoration: BoxDecoration(
                              border: Border(
                                  bottom:BorderSide(
                                    color: AppColors.placeholderColor,
                                    width: 1.0,
                                  )
                              )
                          ),
                        ),
                        SizedBox(
                          height: 15.h,
                        ),
                        Container(
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Row(
                                children: [
                                  Image.asset(AppAssets.heart,height: 17.h,width: 22.w,),
                                  SizedBox(
                                    width: 3.w,
                                  ),
                                  Text("Wishlist (00)"),
                                ],
                              ),
                              Container(
                                  alignment: Alignment.topRight,
                                  child: Image.asset(AppAssets.arrow_right,height: 17.h,width: 22.w,)),
                            ],
                          ),
                          padding: EdgeInsets.only(bottom: 15.w),
                          decoration: BoxDecoration(
                              border: Border(
                                  bottom:BorderSide(
                                    color: AppColors.placeholderColor,
                                    width: 1.0,
                                  )
                              )
                          ),
                        ),
                      ],
                    ),
                  ),
            )

          ],
        ),
      ),
    );
  }
}
