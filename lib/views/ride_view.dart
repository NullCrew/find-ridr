import 'package:findridr/components/ride_card.dart';
import 'package:findridr/constants.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';

class RideView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20,vertical: 20),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    GestureDetector(
                      child: Row(
                        children: [
                          Icon(FontAwesomeIcons.locationArrow,color: primaryColor,size: 32,),
                          SizedBox(width: 10,),
                          Text('Hebbal',style: GoogleFonts.poppins(fontSize: 20,fontWeight: FontWeight.w700),)
                        ],
                      ),
                    ),
                    GestureDetector(
                        child: Icon(CupertinoIcons.search,size: 32,color: Colors.black,))
                  ],
                ),
                SizedBox(height: 30,),
                Text('Some amazing rides happening around you!',style: headingStyle,),
                Container(
                    child: ListView(
                      scrollDirection: Axis.vertical,
                      shrinkWrap: true,
                      physics: ScrollPhysics(),
                      children: [
                        RideCard(),
                        RideCard(),
                        RideCard(),
                        RideCard(),
                        RideCard(),
                        RideCard(),
                      ],
                    )
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
