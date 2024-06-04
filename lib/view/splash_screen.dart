import 'package:flutter/material.dart';
import 'package:flutter_assignment_sajib/constants/assets.dart';
class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body:Scaffold(
        backgroundColor: Colors.black,
        body: SizedBox(
          height: MediaQuery.of(context).size.height,
          width: MediaQuery.of(context).size.width-30,
          child: Center(
            child: SizedBox(
              //color: Colors.red,
              // height: MediaQuery.of(context).size.height,
              // width: MediaQuery.of(context).size.width,
              child: Image.asset(
                AppAssets.appLogo,
                fit: BoxFit.fill,
              ),
            ),
          ),
        ),
      )
    );
  }
}
