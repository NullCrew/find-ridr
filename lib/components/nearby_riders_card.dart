import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

Widget NearbyRiderCard(){
  return GestureDetector(
    child: Padding(
      padding: const EdgeInsets.only(right: 10,top: 5,bottom: 5),
      child: Container(
        width: 120,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(15),
          border: Border.all(color: Colors.black,width: 2)
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            CircleAvatar(radius: 35,),
            SizedBox(height: 5,),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 5),
              child: Center(child: Text('Rider Provider',style: GoogleFonts.poppins(fontSize: 16,fontWeight: FontWeight.w600),)),
            )
          ],
        ),
      ),
    ),
  );
}