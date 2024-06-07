import 'package:another_flushbar/flushbar.dart';
import 'package:another_flushbar/flushbar_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_assignment_sajib/constants/app_colors.dart';
import 'package:flutter_assignment_sajib/constants/assets.dart';
import 'package:flutter_assignment_sajib/viewModel/home_view_model.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';

class Utils {

  static Toasts(String msg) {
    Fluttertoast.showToast(
        msg: msg,
        backgroundColor: Colors.deepOrange,
        toastLength: Toast.LENGTH_LONG,
        textColor: Colors.white);
  }

//adding flash bar here
  static void flashbarMethod(String message, BuildContext context) {
    showFlushbar(
        context: context,
        flushbar: Flushbar(
          forwardAnimationCurve: Curves.decelerate,
          margin: EdgeInsets.all(15),
          borderRadius: BorderRadius.all(Radius.circular(10)),
          reverseAnimationCurve: Curves.easeInOut,
          positionOffset: 10,
          icon: Icon(
            Icons.error,
            size: 25,
            color: Colors.white,
          ),
          message: message,
          title: "Dokan",
          flushbarPosition: FlushbarPosition.TOP,
          backgroundColor: Colors.pinkAccent,
          duration: const Duration(seconds: 3),
        )..show(context));
  }

  //add flutter snackbar
  static ScaffoldFeatureController<SnackBar, SnackBarClosedReason> Snackbar(
      String message, BuildContext context) {
    return ScaffoldMessenger.of(context).showSnackBar(SnackBar(
      backgroundColor: Colors.red,
      content: Text(message),
      duration: Duration(seconds: 2),
    ));
  }

  static fiedlFocuschange (BuildContext context, FocusNode current , FocusNode nextfocus){
    current.unfocus();
    FocusScope.of(context).requestFocus(nextfocus) ;
  }


  static getBottomSheet(){
    Get.bottomSheet(
      GetBuilder<HomeViewModel>(
        builder: (homeCon) {
          return Builder(
            builder: (context) {
              return Container(
                padding: EdgeInsets.symmetric(horizontal: 20.r),
                  color: AppColors.white,
                  child:Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                    Expanded(
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          SizedBox(
                            height: 27.h,
                          ),
                          Align(
                              alignment: Alignment.center,
                              child: Image.asset(AppAssets.bottomsheettopbar,width: 47.w,height: 3.h,)),
                          SizedBox(
                            height: 20.h,
                          ),
                          Text("Filter",style: context.textTheme.titleLarge?.copyWith(
                              fontWeight: FontWeight.bold,
                              color: AppColors.black
                          ),),
                          SizedBox(
                            height: 18.h,
                          ),
                          Row(
                            children: [
                              Image.asset(AppAssets.unchecked,height: 24.h,width: 24.w,),
                              SizedBox(
                                width: 12.h,
                              ),
                              Text("Newest",style: context.textTheme.titleSmall?.copyWith(
                                  fontWeight: FontWeight.normal,
                                  color: AppColors.black,
                                  fontSize: 15.sp
                              ),)
                      
                            ],
                          ),

                        ],
                      ),
                    ),
                      SizedBox(
                        height: 70.h,
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
                      ),
                      SizedBox(
                        height: 31.h,
                      ),
                    ],
                  )
              );
            }
          );
        }
      ),
      barrierColor: AppColors.bottomSheetShadow.withOpacity(0.6),
      isDismissible: true,
    );
  }

}