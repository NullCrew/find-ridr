import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';

Widget NearbyRiderCard(){
  return GestureDetector(
    child: Padding(
      padding: const EdgeInsets.only(right: 25),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          CircleAvatar(radius: 35,),
          SizedBox(height: 5,),
          Center(child: Text('Rider',style: GoogleFonts.poppins(fontSize: 16,fontWeight: FontWeight.w600),))
        ],
      ),
    ),
  );
}