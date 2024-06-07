import 'package:flutter/material.dart';
import 'package:flutter_assignment_sajib/viewModel/auth_view_model.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

import '../constants/app_colors.dart';
import '../constants/assets.dart';
import '../global_widgets/custom_button.dart';
import '../global_widgets/custom_textinput.dart';
import '../routs/routes_names.dart';

class SignUpScreen extends StatefulWidget {
  const SignUpScreen({super.key});

  @override
  State<SignUpScreen> createState() => _SignUpScreenState();
}

class _SignUpScreenState extends State<SignUpScreen> {
  @override
  Widget build(BuildContext context) {
    return GetBuilder<AuthViewModel>(
      builder: (authCon) {
        return SafeArea(
          child: Scaffold(
            backgroundColor: AppColors.pageBackground,
            body: SingleChildScrollView(
              child: Padding(
                padding: EdgeInsets.symmetric(horizontal: 33.w),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    SizedBox(
                      height: 50.h,
                    ),
                    SizedBox(
                      width: 141.h,height: 121.h,
                      child: Stack(
                        children: [
                          Image.asset(AppAssets.user_avater,width: 121.h,height: 121.h,),
                          Positioned(
                            right: -30.w,
                            top: 50.h,
                            child: Image.asset(AppAssets.camera,width: 121.h,height: 121.h,),)
                        ],
                      ),
                    ),

                    SizedBox(
                      height: 40.h,
                    ),
                    InputFormWidget(
                        prefixImage: AppAssets.user,
                        keyboardType: TextInputType.text,
                        editController: authCon.nameEditController,
                        hintText: "Name",
                        obscureText:false
                    ),
                    SizedBox(
                      height: 19.h,
                    ),
                    InputFormWidget(
                        prefixImage: AppAssets.messagebox,
                        keyboardType: TextInputType.text,
                        editController: authCon.rEmailEditController,
                        hintText: "Email",
                        obscureText:false
                    ),
                    SizedBox(
                      height: 19.h,
                    ),
                    InputFormWidget(
                        suffixPress: (){
                          authCon.setObsecurePass();
                        },
                        prefixImage: AppAssets.lock,
                        suffixImage: AppAssets.eyeslash,
                        keyboardType: TextInputType.number,
                        editController: authCon.rPasswordEditController,
                        hintText: "Password",
                        obscureText:authCon.obsecurePass
                    ),
                    SizedBox(
                      height: 19.h,
                    ),
                    InputFormWidget(
                      suffixPress: (){
                        authCon.setObsecureConPass();
                      },
                        prefixImage: AppAssets.lock,
                        suffixImage: AppAssets.eyeslash,
                        keyboardType: TextInputType.number,
                        editController: authCon.rConfirmPasswordPasswordEditController,
                        hintText: "Confirm Password",
                        obscureText:authCon.obsecureConPass
                    ),
                    SizedBox(
                      height: 60.h,
                    ),
                    CustomButton(
                      radius:10.r,
                      width: Get.width - 40,
                      btnFontColor: AppColors.white,
                      color: AppColors.primaryColor,
                      name: "Sign Up",
                      height: 60.h,
                      loading: authCon.registerLoading,
                      onPressed: () {
                        authCon.userRegister(context);
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
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Align(
                          child: Text("Already have an account? ",
                            textAlign: TextAlign.end,
                            style: context.textTheme.titleMedium?.copyWith(
                                fontWeight: FontWeight.w400,
                                color: AppColors.blackish,
                                fontSize: 17.sp
                            ),),
                        ),
                        InkWell(
                          onTap: (){
                            Get.back();
                          },
                          child: Align(
                            child: Text(" Login",
                              textAlign: TextAlign.end,
                              style: context.textTheme.titleMedium?.copyWith(
                                  fontWeight: FontWeight.normal,
                                  color: AppColors.textButtonColor,
                                  fontSize: 17.sp
                              ),),
                          ),
                        ),
                      ],
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
