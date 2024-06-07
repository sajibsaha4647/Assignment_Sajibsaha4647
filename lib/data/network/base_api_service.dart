abstract class BaseApiServices {
  Future<dynamic> getGetApiResponse( String url);
  Future<dynamic> postPostApiResponse(String url, dynamic data,token);
  Future<dynamic> postPostApiResponseRaw(String url, dynamic data,token);
}