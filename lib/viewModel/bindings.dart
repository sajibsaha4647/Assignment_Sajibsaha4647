
import 'package:flutter_assignment_sajib/repository/auth_repository.dart';
import 'package:flutter_assignment_sajib/repository/home_repository.dart';
import 'package:get/get.dart';

import 'auth_view_model.dart';
import 'home_view_model.dart';
import 'profile_view_model.dart';
import 'splash_view_model.dart';

class ViewModelBinding extends Bindings{
  @override
  void dependencies() {
    Get.put<HomeViewModel>(HomeViewModel());
    Get.put<AuthViewModel>(AuthViewModel());
    Get.put<ProfileViewModel>(ProfileViewModel());
    Get.put<SplashViewModel>(SplashViewModel());
    Get.put<AuthRepository>(AuthRepository());
    Get.put<HomeRepository>(HomeRepository());
  }




}