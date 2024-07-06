import 'package:animated_blur_login/utils/app_colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'view/auth/authentication_screen.dart';


/* 

 *source code : 
 ? https://github.com/omidhaqi
 !instagram :
 ? assert.dev

*/

void main() {
  SystemChrome.setSystemUIOverlayStyle( SystemUiOverlayStyle(
    statusBarColor: AppColors.primaryColor,
    statusBarIconBrightness: Brightness.dark,
    systemNavigationBarColor: AppColors.primaryColor,
    systemNavigationBarIconBrightness: Brightness.dark,
  ));
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Animated blur login',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: AppColors.primaryColor),
        useMaterial3: true,
      ),
      home: const AuthenticationScreen(),
    );
  }
}

