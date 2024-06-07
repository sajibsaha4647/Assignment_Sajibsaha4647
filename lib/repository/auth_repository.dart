import 'dart:async';
import 'dart:convert';
import 'dart:io';

import 'package:flutter_assignment_sajib/model/response_model/login_response_model.dart';
import 'package:flutter_assignment_sajib/model/response_model/register_response_model.dart';

import '../api_service/api_services.dart';
import '../data/network/base_api_service.dart';
import '../data/network/network_api_service.dart';
import '../model/request_model/register_request_model.dart';

class AuthRepository {

  BaseApiServices baseApiService = NetworkService();

  Future<dynamic>userLogin(String? username,String? password)async{
    print(username);
    print(password);
    print("password here");
    try{
      dynamic response = await baseApiService.postPostApiResponse("${AppUrl.endpointLogin}token?username=${username}&password=${password}","","");
      return LoginResponse.fromMap(response);
    }catch(e){
      throw e ;
    }
  }


  Future<RegisterResponse?>userRegister(RegisterRequest registerRequest)async{
    try{
      dynamic response = await baseApiService.postPostApiResponseRaw(AppUrl.endpointRegister,registerRequest.toMap(),"");
      return registerResponseFromMap(response);
    }catch(e){
      throw e ;
    }
  }

}