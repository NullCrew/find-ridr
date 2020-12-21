import 'package:flutter/material.dart';
import 'package:get/get.dart';

class CardController extends GetxController{
  var pressedBool = true;
  changeStatus() {
    if(pressedBool){
      pressedBool = false;

    }
    else {
      pressedBool = true;
    }
    update();
  }
}