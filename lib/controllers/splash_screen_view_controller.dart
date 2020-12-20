import 'dart:async';
import 'package:get/get.dart';

class SplashViewController extends GetxController{

  @override
  onInit(){
    startTimer();
  }

  void startTimer() {
    Future.delayed(const Duration(seconds: 2),()=>Get.offNamed('/signUp'));
  }
}