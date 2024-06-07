import 'package:flutter/material.dart';
import 'package:flutter_assignment_sajib/constants/app_colors.dart';
import 'package:flutter_assignment_sajib/constants/assets.dart';
import 'package:flutter_assignment_sajib/routs/routes_names.dart';
import 'package:flutter_assignment_sajib/viewModel/auth_view_model.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:get/get_utils/get_utils.dart';

import '../global_widgets/custom_button.dart';
import '../global_widgets/custom_textinput.dart';

class SignInScreen extends StatefulWidget {
  const SignInScreen({super.key});

  @override
  State<SignInScreen> createState() => _SignInScreenState();
}

class _SignInScreenState extends State<SignInScreen> {
  @override
  Widget build(BuildContext context) {
    return GetBuilder<AuthViewModel>(
      builder: (authCon) {
        return Scaffold(
          backgroundColor: AppColors.pageBackground,
          body: SafeArea(
            child: SingleChildScrollView(
              child: Padding(
                padding: EdgeInsets.symmetric(horizontal: 33.w),
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
                    SizedBox(
                      height: 40.h,
                    ),
                    InputFormWidget(
                      prefixImage: AppAssets.user,
                      keyboardType: TextInputType.text,
                      editController: authCon.userNameEditController,
                      hintText: "User Name",
                        obscureText:false
                    ),
                    SizedBox(
                      height: 19.h,
                    ),
                    InputFormWidget(
                      suffixPress:(){
                        authCon.setObsecure();
                      },
                      prefixImage: AppAssets.lock,
                      suffixImage: AppAssets.eyeslash,
                      keyboardType: TextInputType.text,
                      editController: authCon.passwordEditController,
                      hintText: "Password",
                        obscureText:authCon.obsecure
                    ),
                    SizedBox(
                      height: 19.h,
                    ),
                    Align(
                      alignment: Alignment.topRight,
                      child: Text("Forgot Password?",
                        textAlign: TextAlign.end,
                        style: context.textTheme.titleMedium?.copyWith(
                        fontWeight: FontWeight.normal,
                        color: AppColors.placeholderColor
                      ),),
                    ),
                    SizedBox(
                      height: 60.h,
                    ),
                    CustomButton(
                      radius:10.r,
                      width: Get.width - 40,
                      btnFontColor: AppColors.white,
                      color: AppColors.primaryColor,
                      name: "Login",
                      height: 60.h,
                      loading: authCon.loginLoading,
                      onPressed: () {
                          authCon.userLogin(context);
                      },
                    ),
                    SizedBox(
                      height: 40.h,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Image.asset(AppAssets.facebook,height: 62.h,width: 56.w,),
                        SizedBox(
                          width: 14.h,
                        ),
                        Image.asset(AppAssets.google,height: 62.h,width: 56.w,),
                      ],
                    ),
                    SizedBox(
                      height: 52.h,
                    ),
                    InkWell(
                      onTap: (){
                        Get.toNamed(RoutesName.signup_screen);
                      },
                      child: Align(
                        child: Text("Create New Account",
                          textAlign: TextAlign.end,
                          style: context.textTheme.titleMedium?.copyWith(
                              fontWeight: FontWeight.normal,
                              color: AppColors.blackish,
                            fontSize: 17.sp
                          ),),
                      ),
                    ),
                    SizedBox(
                      height: 19.h,
                    ),
                  ],
                ),
              ),
            ),
          ),
        );
      }
    );
  }
}
