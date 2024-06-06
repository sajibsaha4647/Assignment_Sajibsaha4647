import 'package:flutter/material.dart';
import 'package:flutter_assignment_sajib/constants/app_colors.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';


class CustomButton extends StatelessWidget {
  final VoidCallback? onPressed;
  final String name;
  final double? width;
  final double? height;
  final double? radius;
  final Color? color;
  final Color? btnFontColor;
  final bool isIcon;
  final bool? loading;
  const CustomButton(
      {super.key,
        this.btnFontColor,
        this.onPressed,
        required this.name,
        this.width,
        this.height,
        this.radius,
        this.isIcon = false,
        this.color,
        this.loading});

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: loading == true ? () {} : onPressed,
      style: ElevatedButton.styleFrom(
        backgroundColor: color ?? Get.theme.primaryColor,
        // shadowColor: Colors.transparent,
        // primary: Colors.transparent,
        minimumSize: Size(width ?? Get.width, height ?? 42),
        padding: const EdgeInsets.symmetric(horizontal: 2),
        textStyle: Get.theme.textTheme.bodyMedium!.copyWith(
            fontWeight: FontWeight.w600, fontSize: 14.sp),
        shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(radius ?? 5)),
      ),
      child: loading == true
          ? CircularProgressIndicator(
        color: AppColors.white,
      )
          : isIcon
          ? Row(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(
                horizontal: 5),
            child: Text(name,style: Get.textTheme.titleMedium!.copyWith(color: btnFontColor??Colors.white),),
          ),
        ],
      )
          : Padding(
        padding:
        const EdgeInsets.symmetric(horizontal: 4),
        child: Text(
          name,
          style: context.textTheme.titleMedium?.copyWith(
              color: btnFontColor ?? AppColors.white,
              fontWeight: FontWeight.w600,
              fontSize: 17.sp,

          ),
        ),
      ),
    );
  }
}
