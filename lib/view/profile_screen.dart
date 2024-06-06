import 'package:dotted_border/dotted_border.dart';
import 'package:flutter/material.dart';
import 'package:flutter_assignment_sajib/viewModel/profile_view_model.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

import '../constants/app_colors.dart';
import '../constants/assets.dart';
import '../global_widgets/custom_button.dart';
import '../global_widgets/custom_title_textinput.dart';

class ProfileScreen extends StatefulWidget {
  const ProfileScreen({super.key});

  @override
  State<ProfileScreen> createState() => _ProfileScreenState();
}

class _ProfileScreenState extends State<ProfileScreen> {
  @override
  Widget build(BuildContext context) {
    
    final profileViewModel = Get.find<ProfileViewModel>();
    
    return SafeArea(
      child:  GetBuilder<ProfileViewModel>(
        builder: (profileCon) {
          return Scaffold(
            backgroundColor: AppColors.pageBackground,
            appBar: AppBar(
              backgroundColor: AppColors.pageBackground,
              automaticallyImplyLeading: false,
              title: Text(
                "My Account",
                style: context.textTheme.titleLarge?.copyWith(
                    color: AppColors.black,
                    fontSize: 22.sp,
                    fontWeight: FontWeight.bold),
              ),
              centerTitle: true,
            ),
            body: Padding(
              padding: EdgeInsets.symmetric(horizontal: 15.w),
              child: SingleChildScrollView(
                child: Column(
                  children: [
                    SizedBox(
                      height: 40.h,
                    ),
                    Center(
                      child: DottedBorder(
                          color: AppColors.primaryColor,
                          dashPattern: [3, 1],
                          strokeWidth: 1,
                          borderType: BorderType.Circle,
                          child: Container(
                            padding: EdgeInsets.all(5.r),
                            height: 112.w,
                            width: 112.w,
                            decoration: BoxDecoration(),
                            child: ClipRRect(
                              borderRadius: BorderRadius.circular(112 / 2),
                              child: Image.asset(AppAssets.profile),
                            ),
                          )),
                    ),
                    SizedBox(
                      height: 40.h,
                    ),
                    Text(
                      "John Smith",
                      style: context.textTheme.titleLarge
                          ?.copyWith(fontWeight: FontWeight.bold),
                    ),
                    Text(
                      "info@johnsmith.com",
                      style: context.textTheme.titleMedium
                          ?.copyWith(color: AppColors.fontColor),
                    ),
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
                              color: AppColors.shadowColor.withOpacity(0.3),
                              spreadRadius: 0.0,
                              blurRadius: 30.0,
                              offset: Offset(0.0, 10.0),
                            ),
                          ],
                          color: AppColors.white),
                      child: Padding(
                        padding:
                            EdgeInsets.symmetric(horizontal: 22.w, vertical: 24.w),
                        child: Column(
                          children: [
                            InkWell(
                              onTap: () {
                                profileViewModel.setActiveItem("Account");
                              },
                              child: Container(
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                  children: [
                                    Row(
                                      children: [
                                        Image.asset(
                                          AppAssets.user,
                                          height: 17.h,
                                          width: 22.w,
                                        ),
                                        SizedBox(
                                          width: 3.w,
                                        ),
                                        Text("Account"),
                                      ],
                                    ),
                                    Container(
                                        alignment: Alignment.topRight,
                                        child:profileViewModel.activeItem == "Account" ? Image.asset(
                                          AppAssets.arrow_shpe_down,
                                          height: 13.h,
                                          width: 18.w,
                                        ) : Image.asset(
                                          AppAssets.arrow_right,
                                          height: 17.h,
                                          width: 22.w,
                                        )),
                                  ],
                                ),
                                padding:profileViewModel.activeItem == "Account" ?EdgeInsets.only(bottom: 15.w) : EdgeInsets.only(bottom: 0.w),
                              ),
                            ),
                            profileViewModel.activeItem == "Account" ?
                            Column(
                              mainAxisAlignment: MainAxisAlignment.start,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text("Email",style: context.textTheme.titleMedium?.copyWith(
                                  color: AppColors.placeholderColor
                                ),),
                                SizedBox(
                                  height: 10.h,
                                ),
                                TitleTextInput(obscureText: false,hintText: "youremail@xmail.com",)
                                ,SizedBox(
                                  height: 20.h,
                                ),
                                Text("Full Name",style: context.textTheme.titleMedium?.copyWith(
                                    color: AppColors.placeholderColor
                                ),),
                                SizedBox(
                                  height: 10.h,
                                ),
                                TitleTextInput(obscureText: false,hintText: "William Bennett",)
                                ,SizedBox(
                                  height: 20.h,
                                ),
                                Text("Street Address",style: context.textTheme.titleMedium?.copyWith(
                                    color: AppColors.placeholderColor
                                ),),
                                SizedBox(
                                  height: 10.h,
                                ),
                                TitleTextInput(obscureText: false,hintText: "465 Nolan Causeway Suite 079",)
                                ,SizedBox(
                                  height: 20.h,
                                ),
                                Text("Apt, Suite, Bldg (optional)",style: context.textTheme.titleMedium?.copyWith(
                                    color: AppColors.placeholderColor
                                ),),
                                SizedBox(
                                  height: 10.h,
                                ),
                                TitleTextInput(obscureText: false,hintText: "Unit 512",)
                                ,SizedBox(
                                  height: 20.h,
                                ),
                                Text("Zip Code",style: context.textTheme.titleMedium?.copyWith(
                                    color: AppColors.placeholderColor
                                ),),
                                SizedBox(
                                  height: 10.h,
                                ),
                                TitleTextInput(obscureText: false,hintText: "77017",widths: 100.w,)
                                ,SizedBox(
                                  height: 24.h,
                                ),
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                  children: [
                                    Expanded(child: Container(
                                      alignment: Alignment.center,
                                      height: 50.h,
                                      decoration: BoxDecoration(
                                        border: Border.all(width: 1,color: AppColors.shadowColor),
                                          borderRadius: BorderRadius.all(Radius.circular(10.r))
                                      ),
                                      child: Text("Cancel",style: Get.theme.textTheme.bodyMedium!.copyWith(
                                          fontWeight: FontWeight.bold, fontSize: 17.sp),),
                                    ),),
                                    SizedBox(
                                      width: 24.w,
                                    ),
                                    Expanded(child: Container(
                                      alignment: Alignment.center,
                                      height: 50.h,
                                      decoration: BoxDecoration(
                                        color: AppColors.buttonGreen,
                                        borderRadius: BorderRadius.all(Radius.circular(10.r))
                                      ),
                                      child: Text("Save",style: Get.theme.textTheme.bodyMedium!.copyWith(
                                          fontWeight: FontWeight.bold, fontSize: 17.sp,
                                      color: AppColors.white
                                      ),),
                                    ),)
                                  ],
                                )
                
                              ],
                            ) :
                                Container(),
                            SizedBox(
                              height: 15.h,
                            ),
                            Container(
                              decoration: BoxDecoration(
                                  border: Border(
                                      bottom: BorderSide(
                                color: AppColors.placeholderColor,
                                width: 1.0,
                              ))),
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
                                      Image.asset(
                                        AppAssets.lock,
                                        height: 17.h,
                                        width: 22.w,
                                      ),
                                      SizedBox(
                                        width: 3.w,
                                      ),
                                      Text("Passwords"),
                                    ],
                                  ),
                                  Container(
                                      alignment: Alignment.topRight,
                                      child: Image.asset(
                                        AppAssets.arrow_right,
                                        height: 17.h,
                                        width: 22.w,
                                      )),
                                ],
                              ),
                              padding: EdgeInsets.only(bottom: 15.w),
                            ),
                            Container(
                              decoration: BoxDecoration(
                                  border: Border(
                                      bottom: BorderSide(
                                color: AppColors.placeholderColor,
                                width: 1.0,
                              ))),
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
                                      Image.asset(
                                        AppAssets.bell,
                                        height: 17.h,
                                        width: 22.w,
                                      ),
                                      SizedBox(
                                        width: 3.w,
                                      ),
                                      Text("Notification"),
                                    ],
                                  ),
                                  Container(
                                      alignment: Alignment.topRight,
                                      child: Image.asset(
                                        AppAssets.arrow_right,
                                        height: 17.h,
                                        width: 22.w,
                                      )),
                                ],
                              ),
                              padding: EdgeInsets.only(bottom: 15.w),
                            ),
                            Container(
                              decoration: BoxDecoration(
                                  border: Border(
                                      bottom: BorderSide(
                                color: AppColors.placeholderColor,
                                width: 1.0,
                              ))),
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
                                      Image.asset(
                                        AppAssets.heart,
                                        height: 17.h,
                                        width: 22.w,
                                      ),
                                      SizedBox(
                                        width: 3.w,
                                      ),
                                      Text("Wishlist (00)"),
                                    ],
                                  ),
                                  Container(
                                      alignment: Alignment.topRight,
                                      child: Image.asset(
                                        AppAssets.arrow_right,
                                        height: 17.h,
                                        width: 22.w,
                                      )),
                                ],
                              ),
                              padding: EdgeInsets.only(bottom: 15.w),
                            ),
                            Container(
                              decoration: BoxDecoration(
                                  border: Border(
                                      bottom: BorderSide(
                                color: AppColors.placeholderColor,
                                width: 1.0,
                              ))),
                            ),
                          ],
                        ),
                      ),
                    )
                  ],
                ),
              ),
            ),
          );
        }
      ),
    );
  }
}
