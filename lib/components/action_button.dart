import 'package:findridr/constants.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';

class ActionButton{

  Widget buildButton({String btnText,Function onTap}){
    return GestureDetector(
      onTap: onTap,
      child: Container(
        height: 80,
        width: Get.width/1.2,
        decoration: BoxDecoration(
          color: primaryColor,
          borderRadius: BorderRadius.circular(15)
        ),
        child: Center(
          child: Text('$btnText',style: GoogleFonts.raleway(fontSize: 22,fontWeight: FontWeight.bold,color: Colors.black),),
        ),
      ),
    );
  }
}