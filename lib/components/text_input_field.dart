import 'package:findridr/constants.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';

class TextInputField extends GetxController {
  final TextEditingController textEditingController = TextEditingController();

  Widget buildInputField({String hintText}){
    return Container(
      width: Get.width/1.4,
      child: TextField(
        controller: textEditingController,
        style: GoogleFonts.raleway(fontSize: 20,fontWeight: FontWeight.w600,color: Colors.grey),
        decoration: InputDecoration(
          isDense: true,
          contentPadding: EdgeInsets.all(25),
          hintText: hintText,
          hintStyle: GoogleFonts.raleway(fontSize: 20,fontWeight: FontWeight.w600,color: Colors.grey),
          enabledBorder: OutlineInputBorder(borderSide: BorderSide(color: Colors.grey,width: 3),borderRadius: BorderRadius.circular(15)),
          focusedBorder: OutlineInputBorder(borderSide: BorderSide(color: primaryColor,width: 5),borderRadius: BorderRadius.circular(15),)
        ),
      ),
    );
  }

}
