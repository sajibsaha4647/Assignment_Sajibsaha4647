import 'dart:async';
import 'package:flutter/material.dart';
import 'package:flutter_assignment_sajib/constants/assets.dart';
import 'package:flutter_assignment_sajib/routs/routes_names.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:get/get_navigation/get_navigation.dart';
class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {


  @override
  void initState() {
   Timer(Duration(seconds: 3), () {
     Get.toNamed(RoutesName.login_screen);
   });
    super.initState();
  }


  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.black,
        body: SizedBox(
          height: MediaQuery.of(context).size.height,
          width: MediaQuery.of(context).size.width-30,
          child: Center(
            child: SizedBox(
              child: Image.asset(
                AppAssets.appLogo,
                fit: BoxFit.fill,
              ),
            ),
          ),
        ),

    );
  }
}
