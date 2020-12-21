import 'package:findridr/constants.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';

Widget CardButton({String btnText}){
  return InkWell(
    onTap: (){},
    child: Container(
      height: 50,
      width: Get.width/1.2,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(15),
        color: primaryColor
      ),
      child: Center(
        child: Text(btnText,style: GoogleFonts.poppins(fontWeight: FontWeight.bold,fontSize: 20),),
      ),
    ),
  );
}