import 'package:animated_bottom_navigation_bar/animated_bottom_navigation_bar.dart';
import 'package:flutter/material.dart';
import 'package:flutter_assignment_sajib/constants/app_colors.dart';
import 'package:flutter_assignment_sajib/view/product_list_screen.dart';
import 'package:flutter_assignment_sajib/viewModel/home_view_model.dart';
import 'package:get/get.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  final homeViewModel = Get.find<HomeViewModel>();
  @override
  Widget build(BuildContext context) {
    return GetBuilder<HomeViewModel>(
      builder: (homeCon) {
        return Scaffold(
          body:SafeArea(child: homeViewModel.bodyList.elementAt(homeViewModel.bottomNavIndex)),
          floatingActionButton: FloatingActionButton(
            onPressed: () {},
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(45),
            ),
            child: Container(
              width: 100,
              height: 100,
              child: Icon(
                Icons.search,
                color: AppColors.white,
              ),
              decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  gradient: LinearGradient(colors: [
                    AppColors.primaryColor,
                    AppColors.primaryColor,
                    AppColors.secondaryColor
                  ])),
            ),
          ),
          floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
          bottomNavigationBar: AnimatedBottomNavigationBar.builder(
            itemCount: homeViewModel.iconList.length,
            tabBuilder: (int index, bool isActive) {
              print(isActive);
              print("isActive");
              final color = isActive ? AppColors.primaryColor : AppColors.placeholderColor;
              return Column(
                mainAxisSize: MainAxisSize.min,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Image.asset(
                      homeViewModel.iconList[index],
                      width: 24,
                    color:color,
                    colorBlendMode: BlendMode.modulate,
                    ),
                  const SizedBox(height: 4),
                ],
              );
            },
            backgroundColor: Colors.white,
            activeIndex: homeViewModel.bottomNavIndex,
            splashSpeedInMilliseconds: 200,
            notchSmoothness: NotchSmoothness.defaultEdge,
            gapLocation: GapLocation.center,
            leftCornerRadius: 10,
            rightCornerRadius: 10,
            onTap: (index) => homeViewModel.changBottomNavBar(index),
            shadow: BoxShadow(
              offset: const Offset(0, 1),
              blurRadius: 12,
              spreadRadius: 0.5,
              color: Colors.grey.withOpacity(0.20),
            ),
          ),
          //other params
        );
      }
    );
  }
}
