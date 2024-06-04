
import 'package:flutter_assignment_sajib/viewModel/login_view_model.dart';
import 'package:flutter_assignment_sajib/viewModel/profile_view_model.dart';
import 'package:flutter_assignment_sajib/viewModel/signup_view_model.dart';
import 'package:flutter_assignment_sajib/viewModel/splash_view_model.dart';
import 'package:get/get.dart';

import 'home_view_model.dart';



class ViewModelBinding extends Bindings{
  @override
  void dependencies() {
    Get.put<HomeViewModel>(HomeViewModel());
    Get.put<LoginViewModel>(LoginViewModel());
    Get.put<ProfileViewModel>(ProfileViewModel());
    Get.put<SignUpViewModel>(SignUpViewModel());
    Get.put<SplashViewModel>(SplashViewModel());
  }




}