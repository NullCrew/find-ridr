import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';

class VerticalCard extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(right: 10),
      child: Container(
        width: 180,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(15),
          border: Border.all(color: Colors.black,width: 2)
        ),
        child: Padding(
          padding: const EdgeInsets.all(10.0),
          child: Column(
            children: [
              CircleAvatar(radius: 40,),
              SizedBox(height: 5,),
              Text('K2K Ride',style: GoogleFonts.poppins(fontSize: 20,fontWeight: FontWeight.w600),),
              Text('FSRMC',style: GoogleFonts.poppins(fontSize: 14,fontWeight: FontWeight.w600),),
              Text('16-31 Jan 2021',style: GoogleFonts.poppins(fontSize: 14,fontWeight: FontWeight.w600),),
              Row(
                children: [
                  Icon(FontAwesomeIcons.personBooth,)
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
