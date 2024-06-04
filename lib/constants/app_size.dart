import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class AppSize {
  static double width(BuildContext context) =>
      MediaQuery.of(context).size.width;
  static double height(BuildContext context) =>
      MediaQuery.of(context).size.height;

  static double pd_container(BuildContext context) => width(context) * .005;

  /*:::::::::::::::::: Custom Fonts Size ::::::::::::::::::*/
  static var eight = 8.sp;
  static var nine = 9.sp;
  static var ten = 10.sp;
  static var eleven = 11.sp;
  static var twelve = 12.sp;
  static var thirteen = 13.sp;
  static var fourteen = 14.sp;
  static var fifteen = 15.sp;
  static var sixteen = 16.sp;
  static var seventeen = 17.sp;
  static var eighteen = 18.sp;
  static var nineteen = 19.sp;
  static var twenty = 20.sp;
  static var twentyOne = 21.sp;
  static var twentyTwo = 22.sp;
  static var twentyThree = 23.sp;
  static var twentyFour = 24.sp;
  static var twentyFive = 25.sp;
  static var twentySix = 26.sp;
  static var twentySeven = 27.sp;
  static var twentyEight = 28.sp;
  static var twentyNine = 29.sp;
  static var thirty = 30.sp;

}