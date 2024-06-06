import 'package:get/get.dart';

class ProfileViewModel extends GetxController{


  String? activeItem;

  void setActiveItem(String? value){
    if(activeItem == value){
      activeItem = null ;
      update();
    }else{
      activeItem = value ;
      update();
    }
    update();
  }


}