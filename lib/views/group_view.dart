import 'package:findridr/components/group_card.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';

import '../constants.dart';

class GroupView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 20),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    GestureDetector(
                      child: Row(
                        children: [
                          Icon(
                            FontAwesomeIcons.locationArrow, color: primaryColor,
                            size: 32,),
                          SizedBox(width: 10,),
                          Text('Hebbal', style: GoogleFonts.poppins(
                              fontSize: 20, fontWeight: FontWeight.w700),)
                        ],
                      ),
                    ),
                    Row(
                      children: [
                        GestureDetector(
                            child: Icon(CupertinoIcons.search, size: 32,
                              color: Colors.black,)
                        ),
                        SizedBox(width: 20,),
                        GestureDetector(
                            child: Icon(CupertinoIcons.plus_app_fill, size: 32,
                              color: primaryColor,)),
                      ],
                    )
                  ],
                ),
                SizedBox(height: 30,),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text('Your groups', style: headingStyle,),
                    InkWell(
                        child: Text('(View All)',style: headingStyle.copyWith(fontSize: 16,decoration: TextDecoration.underline),))
                  ],
                ),
                SizedBox(height: 10,),
                Container(
                  height: Get.height/4,
                  width: Get.width,
                  child: GridView.count(
                    mainAxisSpacing: 15,
                    crossAxisSpacing: 15,
                    crossAxisCount: 4,
                    children: [
                      CircleAvatar(),
                      CircleAvatar(),
                      CircleAvatar(),
                      CircleAvatar(),
                      CircleAvatar(),
                      CircleAvatar(),
                      CircleAvatar(),
                      CircleAvatar(),
                    ],
                  ),
                ),
                Text('Some groups around you!', style: headingStyle,),
                Container(
                    child: ListView(
                      scrollDirection: Axis.vertical,
                      shrinkWrap: true,
                      physics: ScrollPhysics(),
                      children: [
                        GroupCard(),
                        GroupCard(),
                        GroupCard(),
                        GroupCard(),
                        GroupCard(),
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
