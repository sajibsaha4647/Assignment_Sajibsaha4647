import "package:flutter/material.dart";
import "package:flutter_assignment_sajib/constants/app_colors.dart";
import "package:flutter_screenutil/flutter_screenutil.dart";
import "package:get/get.dart";

class InputFormWidget extends StatelessWidget {
  InputFormWidget(
      {super.key,
        this.widths,
        this.hintText,
        this.onSaved,
        this.leftIcon,
        this.enabled,
        this.editController,
        this.prefixImage,
        this.suffixImage,
        this.keyboardType});

  double? widths;
  String? hintText;
  String? prefixImage;
  String? suffixImage;
  bool? leftIcon = false;
  bool? enabled = true;
  TextInputType? keyboardType;
  void Function(String?)? onSaved;
  TextEditingController? editController;


  @override
  Widget build(BuildContext context) {
    return Container(
        padding: EdgeInsets.symmetric(horizontal:5.w),
        decoration: BoxDecoration(
            boxShadow: [
               BoxShadow(
                color: AppColors.shadowColor,
              ),
               BoxShadow(
                color:AppColors.shadowColor.withOpacity(0.3),
                spreadRadius: 1.0,
                blurRadius: 30.0,
                 offset: Offset(0.0,10.0),
              ),
            ],
            color: AppColors.white),
        width: widths ?? Get.width,
        height: 50.h,
        child: Row(
          children: [
            leftIcon == true
                ? Container(
              height: 40.h,
              width: 40.h,
              // child: Image.asset("",height: 15.h,width: 19.w,)
            )
                : Container(),
            Flexible(
              child: TextFormField(
                keyboardType: keyboardType,
                controller: editController,
                enabled: enabled,
                decoration: InputDecoration(
                  
                  hintText: hintText,
                  hintStyle: context.textTheme.titleMedium?.copyWith(
                    color: AppColors.placeholderColor
                  ),
                  border: InputBorder.none,
                  suffixIcon:suffixImage != null ?   Padding(
                      padding: EdgeInsets.all(12.r),
                      child: Image.asset(suffixImage.toString(),)) :Text(""),
                  prefixIcon:prefixImage != null ?   Padding(
                      padding: EdgeInsets.all(12.r),
                      child: Image.asset(prefixImage.toString(),)) : Text(""),
                ),
                onSaved: onSaved,
              ),
            )
          ],
        ));
  }
}
