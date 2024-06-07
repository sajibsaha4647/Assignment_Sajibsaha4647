import 'dart:convert';
import 'dart:io';
import 'package:http/http.dart' as http;
import 'package:http/http.dart';
import '../../utils/utils.dart';
import '../exception_handle.dart';
import 'base_api_service.dart';

class NetworkService extends BaseApiServices {
  //here get response
  @override
  Future getGetApiResponse(String url) async {
    dynamic responseJson;
    try {
      final response = await http.get(
        Uri.parse(url),
        headers: {
          'Accept': 'application/json',
          // "Authorization": "Bearer $token",
        },
      ).timeout(const Duration(seconds: 60));

      responseJson = returnResponse( response);

    } on SocketException {
      Utils.Toasts("No internet connection");
      throw FetchDataException("No internet connection");
    }
    // print("responseJson");
    // print(responseJson);
    return responseJson;
  }

  //here post response
  @override
  Future postPostApiResponse(String url, data, token) async {
    dynamic responseJson;
    try {
      Response response = await http.post(Uri.parse(url),
          headers: {
            // 'Content-type': 'application/json',
            'Accept': 'application/json',
            "Authorization": "Bearer $token",
          },
          body: data)
          .timeout(const Duration(seconds: 60));

      responseJson = returnResponse(response);
    } on SocketException {
     
      Utils.Toasts("No internet connection");
      throw FetchDataException("No internet connection");
    }

    return responseJson;
  }

  //here post response Raw
  @override
  Future postPostApiResponseRaw(String url, data, token) async {
    dynamic responseJson;
    try {
      Response response = await http.post(Uri.parse(url),
          headers: {
            'Content-type': 'application/json',
            'Accept': 'application/json',
            "Authorization": "Bearer $token",
          },
          body: data)
          .timeout(const Duration(seconds: 60));

      responseJson = returnResponse(response);
    } on SocketException {

      Utils.Toasts("No internet connection");
      throw FetchDataException("No internet connection");
    }

    return responseJson;
  }

  //here return response
  dynamic returnResponse( http.Response response) {
    print("${response.statusCode}"+"called");


    switch (response.statusCode) {

      case 200:
        dynamic responseJson = jsonDecode(response.body);
        print("responseJson in network file");
        print(responseJson);
        return responseJson;
      case 400:
        throw BadRequestExceptoin("${response.body}");
      case 401:
        dynamic responseJson = jsonDecode(response.body);
        print(responseJson);

        throw BadRequestExceptoin("${response.body}");
      case 415:
        throw BadRequestExceptoin("${response.body}");
      case 500:
        throw UnauthorisedExceptoin("${response.body}");
      case 404:
        throw UnauthorisedExceptoin("${response.body}");
      default:
        throw FetchDataException(
            "Communication problem with server ${response.statusCode}");
    }
  }
}
