import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_assignment_sajib/view/splash_screen.dart';
import '../view/cart_screen.dart';
import '../view/category_screen.dart';
import '../view/home_screen.dart';
import '../view/my_account_screen.dart';
import '../view/profile_screen.dart';
import '../view/search_screen.dart';
import '../view/signin_screen.dart';
import '../view/signup_screen.dart';
import 'routes_names.dart';


class Routes{
  static Route<dynamic>generateRoute(RouteSettings settings){

    switch (settings.name) {
      case RoutesName.splash_screen:
        return MaterialPageRoute(
            builder: (BuildContext context) => const SplashScreen());
      case RoutesName.login_screen:
        return MaterialPageRoute(
            builder: (BuildContext context) => const SignInScreen());
      case RoutesName.signup_screen :
        return MaterialPageRoute(
            builder: (BuildContext context) => const SignUpScreen());
      case RoutesName.home_screen :
        return MaterialPageRoute(
            builder: (BuildContext context) => const HomeScreen());
      case RoutesName.category_screen :
        return MaterialPageRoute(
            builder: (BuildContext context) => const CategoryScreen());
      case RoutesName.search_screen :
        return MaterialPageRoute(
            builder: (BuildContext context) => const SearchScreen());
      case RoutesName.cart_screen :
        return MaterialPageRoute(
            builder: (BuildContext context) => const CartScreen());
      case RoutesName.profile_screen :
        return MaterialPageRoute(
            builder: (BuildContext context) => const ProfileScreen());
      case RoutesName.my_account_screen :
        return MaterialPageRoute(
            builder: (BuildContext context) => const MyAccountScreen());
      default:
        return CupertinoPageRoute(
            builder: (BuildContext context) => SignInScreen());
    }
  }
}