import 'package:flutter/material.dart';
import 'package:get/get.dart';

Widget UIBackButton(){
  return GestureDetector(
    onTap: (){
      Get.back();
    },
    child: Icon(Icons.arrow_back_ios,size: 32,),
  );
}