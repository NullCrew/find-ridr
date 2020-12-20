import 'package:findridr/controllers/splash_screen_view_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

var asset = 'assets/logo.png';

class SplashScreenView extends StatelessWidget {
  final SplashViewController splashViewController = Get.put(SplashViewController());
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: GetBuilder<SplashViewController>(
          builder: ((_){
            return Center(
              child: Image.asset(asset),
            );
          }),
        ),
      ),
    );
  }
}