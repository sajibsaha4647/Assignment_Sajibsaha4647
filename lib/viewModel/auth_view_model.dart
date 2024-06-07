import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';
import '../model/request_model/register_request_model.dart';
import '../model/response_model/login_response_model.dart';
import '../model/response_model/register_response_model.dart';
import '../repository/auth_repository.dart';
import '../routs/routes_names.dart';
import '../utils/utils.dart';
import 'package:email_validator/email_validator.dart';

class AuthViewModel extends GetxController {

  final _authrepo = AuthRepository();




  //============================ user login =======================
  var obsecure = true ;

  void setObsecure(){
    obsecure = !obsecure ;
    update();
  }

  final userNameEditController = TextEditingController();
  final passwordEditController = TextEditingController();

  bool loginLoading = false ;

  LoginResponse? loginResponse ;

  Future<void> userLogin(context) async {
    // final bool isValid = EmailValidator.validate(emailEditController.text);
    if (userNameEditController.text.isEmpty ||passwordEditController.text.isEmpty) {
      Utils.flashbarMethod("All field are required !", context);
    } else {
      loginLoading = true;
      update();
       _authrepo.userLogin(userNameEditController.text,passwordEditController.text).then((value){
        if(value != null){
          loginResponse = value ;
          update();
          loginLoading = false;
          update();
          Get.offAllNamed(RoutesName.home_screen);
          Utils.Toasts("You have successfully login !");
        }else{
          loginLoading = false;
          update();
          Utils.Toasts("Login failed !");
        }

      }).onError((error, stackTrace){
        loginLoading = false;
        update();
        print(error);
      });

    }
  }


//============================ user register =======================

  var obsecurePass = true ;

  void setObsecurePass(){
    obsecurePass = !obsecurePass ;
    update();
  }

  var obsecureConPass = true ;

  void setObsecureConPass(){
    obsecureConPass = !obsecureConPass ;
    update();
  }

  final nameEditController = TextEditingController();
  final rEmailEditController = TextEditingController();
  final rPasswordEditController = TextEditingController();
  final rConfirmPasswordPasswordEditController = TextEditingController();

  bool registerLoading = false ;

  RegisterResponse? registerResponse ;

  Future<void> userRegister(context) async {
    final bool isValid = EmailValidator.validate(rEmailEditController.text);
    if (nameEditController.text.isEmpty ||rEmailEditController.text.isEmpty || rPasswordEditController.text.isEmpty || rConfirmPasswordPasswordEditController.text.isEmpty ) {
      Utils.flashbarMethod("All field are required !", context);
    }else if(!isValid){
      Utils.flashbarMethod("Invalid email address !", context);
    }
    else if (rPasswordEditController.text  != rConfirmPasswordPasswordEditController.text) {
      Utils.flashbarMethod("Password did not match ! ", context);
    } else {
      registerLoading = true;
      update();
      RegisterRequest model = RegisterRequest(
        username: nameEditController.text.toString(),
        email: rEmailEditController.text.toString(),
        password: rPasswordEditController.text.toString()
      );
      _authrepo.userRegister(model).then((value){
        if(value != null){
          registerResponse = value ;
          update();
          registerLoading = false;
          update();
          Get.toNamed(RoutesName.login_screen);
          Utils.Toasts("Registration sucessfully completed !");
        }else{
          registerLoading = false;
          update();
        }
      }).onError((error, stackTrace){
        registerLoading = false;
        update();
        print(error);
      });



    }
  }

}