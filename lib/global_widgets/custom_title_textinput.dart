import "package:flutter/material.dart";
import "package:flutter_assignment_sajib/constants/app_colors.dart";
import "package:flutter_screenutil/flutter_screenutil.dart";
import "package:get/get.dart";

class TitleTextInput extends StatelessWidget {
  TitleTextInput(
      {super.key,
        this.widths,
        this.hintText,
        this.onSaved,
        this.leftIcon,
        this.enabled,
        this.editController,
        this.prefixImage,
        this.suffixImage,
        required this.obscureText,
        this.keyboardType});

  double? widths;
  String? hintText;
  String? prefixImage;
  String? suffixImage;
  bool? leftIcon = false;
  bool obscureText = false;
  bool? enabled = true;
  TextInputType? keyboardType;
  void Function(String?)? onSaved;
  TextEditingController? editController;


  @override
  Widget build(BuildContext context) {
    return Container(
        padding: EdgeInsets.symmetric(horizontal:10.w),
        decoration: BoxDecoration(
            borderRadius: BorderRadius.all(Radius.circular(10.r)),
            border: Border.all(width: 1,color: AppColors.placeholderColor),
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
                obscureText:obscureText ,
                decoration: InputDecoration(
                  hintText: hintText,
                  hintStyle: context.textTheme.titleMedium?.copyWith(
                      color: AppColors.placeholderColor
                  ),
                  border: InputBorder.none,
                ),
                onSaved: onSaved,
              ),
            )
          ],
        ));
  }
}
