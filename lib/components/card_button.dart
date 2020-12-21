import 'package:findridr/constants.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

Widget CardButton(){
  return InkWell(
    onTap: (){},
    child: Container(
      height: 50,
      width: Get.width/1.2,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(15),
        color: primaryColor
      ),
    ),
  );
}