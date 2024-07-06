import 'package:animated_blur_login/view/auth/screens/login_screen.dart';
import 'package:animated_blur_login/view/auth/screens/register_screen.dart';
import 'package:animated_blur_login/view/auth/screens/verify_screen.dart';
import 'package:animated_blur_login/utils/app_colors.dart';
import 'package:animated_blur_login/utils/custom_bg.dart';
import 'package:flutter/material.dart';

class AuthenticationScreen extends StatefulWidget {
  const AuthenticationScreen({super.key});

  @override
  State<AuthenticationScreen> createState() => _AuthenticationScreenState();
}

class _AuthenticationScreenState extends State<AuthenticationScreen> {
  late PageController controller;
  late int selectedIndex;
  late double pageValue;

  @override
  void initState() {
    selectedIndex = 0;
    pageValue = 0.0;
    controller =
        PageController(initialPage: selectedIndex, viewportFraction: 1.0)
          ..addListener(() {
            setState(() {
              pageValue = controller.page!;
            });
          });

    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    double h = MediaQuery.sizeOf(context).height;
    double w = MediaQuery.sizeOf(context).width;

    return Scaffold(
      backgroundColor: AppColors.bgColor,
      body: Stack(
        children: [
          AnimatedPositioned(
            duration: const Duration(milliseconds: 1000),
            curve: Curves.ease,
            left: pageValue * -w,
            top: 0,
            child: Container(
              height: h,
              width: w * 3,
              decoration: const BoxDecoration(),
              child: CustomPaint(
                painter: CustomBackground(
                  firstColor: AppColors.primaryColor,
                  secondColor: AppColors.textColor,
                ),
              ),
            ),
          ),
          PageView.builder(
            physics: const NeverScrollableScrollPhysics(
              parent: ClampingScrollPhysics(),
            ),
            itemCount: 3,
            controller: controller,
            itemBuilder: (context, index) {
              if (index == 0) {
                return LoginScreen(controller: controller);
              } else if (index == 1) {
                return SingUpScreen(controller: controller);
              } else {
                return VerifyScreen(controller: controller);
              }
            },
          ),
         
        ],
      ),
    );
  }
}
