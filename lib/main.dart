import 'package:findridr/views/login_view.dart';
import 'package:findridr/views/otp_verfication_screen.dart';
import 'package:findridr/views/splash_screen_view.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

void main() {
  runApp(FindRidr());
}

class FindRidr extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      home: SplashScreenView(),
      getPages: [
        GetPage(name: '/', page: () => SplashScreenView()),
        GetPage(name: '/login', page: () => LoginView()),
        GetPage(name: '/otpVerification', page: () => otpVerificationView()),
        // GetPage(name: "/home", page: () => HomeView()),
      ],
    );
  }
}

