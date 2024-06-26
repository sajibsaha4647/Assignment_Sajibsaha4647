
class AppException implements Exception {

  final _message ;
  final _prefix ;


  AppException([ this._message, this._prefix ]);

  String toString(){
    return '$_prefix$_message';
  }

}

//handle exception here all function

class FetchDataException extends AppException{
  FetchDataException([String?_message]) : super(_message,"api communication failed") ;
}

class BadRequestExceptoin extends AppException{
  BadRequestExceptoin([String? _message]) : super(_message, "Error on bad request") ;
}

class UnauthorisedExceptoin extends AppException{
  UnauthorisedExceptoin([ String? _message ]) : super(_message, "Error on unauthorised");
}

class InvalidException extends AppException{
  InvalidException([String? _message]) : super(_message,"Invalid exception") ;
}