abstract class BaseApiServices {
  Future<dynamic> getGetApiResponse(context, String url,token,);
  Future<dynamic> postPostApiResponse(context,String url, dynamic data,token);
}