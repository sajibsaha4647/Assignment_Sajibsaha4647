import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';
import '../model/request_model/register_request_model.dart';
import '../model/response_model/login_response_model.dart';
import '../model/response_model/register_response_model.dart';
import '../repository/auth_repository.dart';
import '../utils/utils.dart';
import 'package:email_validator/email_validator.dart';

class AuthViewModel extends GetxController {

  final _authrepo = AuthRepository();


  //============================ user login =======================

  final emailEditController = TextEditingController();
  final passwordEditController = TextEditingController();

  bool loginLoading = false ;

  LoginResponse? loginResponse ;

  Future<void> userLogin(context) async {
    // final bool isValid = EmailValidator.validate(emailEditController.text);
    if (emailEditController.text.isEmpty ||passwordEditController.text.isEmpty) {
      Utils.flashbarMethod("All field are required !", context);
    } else {
      loginLoading = true;
      update();
      var response = await _authrepo.userLogin(emailEditController.text,passwordEditController.text);
        if(response != null){
          loginResponse = response ;
          update();
          loginLoading = false;
          update();
        }else{
          loginLoading = false;
          update();
        }
    }
  }


//============================ user register =======================

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
      var response = await _authrepo.userRegister(model);
      if(response != null){
        registerResponse = response ;
        update();
        registerLoading = false;
        update();
      }else{
        registerLoading = false;
        update();
      }
    }
  }

}