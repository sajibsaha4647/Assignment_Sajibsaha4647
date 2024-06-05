import 'package:flutter/material.dart';
import 'package:flutter_assignment_sajib/constants/app_colors.dart';
import 'package:flutter_assignment_sajib/constants/assets.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get_utils/get_utils.dart';
import 'package:google_fonts/google_fonts.dart';

import '../global_widgets/custom_textinput.dart';

class SignInScreen extends StatefulWidget {
  const SignInScreen({super.key});

  @override
  State<SignInScreen> createState() => _SignInScreenState();
}

class _SignInScreenState extends State<SignInScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.white,
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              SizedBox(
                height: 80.h,
              ),
              Container(
                  alignment: Alignment.center,
                  child: Image.asset(AppAssets.appLogo,width: 165.w,height: 50.h,)),
              SizedBox(
                height: 80.h,
              ),
              Text("Sign In",style: context.textTheme.titleLarge?.copyWith(
                color: AppColors.black,
                fontWeight: FontWeight.bold,
                fontSize: 25.sp
              ),),
              InputFormWidget(
                prefixImage: AppAssets.messagebox,
                keyboardType: TextInputType.number,
                // editController: appController.ageEditController,
                hintText: "Email",
              ),
            ],
          ),
        ),
      ),
    );
  }
}
