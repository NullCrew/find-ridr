import 'package:findridr/components/UI_BackButton.dart';
import 'package:findridr/components/small_action_button.dart';
import 'package:findridr/components/vertical_card.dart';
import 'package:findridr/constants.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';

class GroupInfoView extends StatelessWidget {
  SmallActionButton _saveButton = SmallActionButton();
  SmallActionButton _messageButton = SmallActionButton();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(20.0),
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                UIBackButton(),
                SizedBox(height: 10,),
                Row(
                  children: [
                    CircleAvatar(radius: 50,),
                    SizedBox(width: 10,),
                    Flexible(child: Text('Indian Riding Group',style: headingStyle,softWrap: true,))
                  ],
                ),
                SizedBox(height: 20,),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    _saveButton.SaveButton(),
                    SizedBox(width: 40,),
                    _messageButton.ChatButton()
                  ],
                ),
                SizedBox(height: 20,),
                Container(
                  height: Get.height/4.4,
                  width: Get.width,
                  decoration: BoxDecoration(
                    color: Colors.grey.shade100,
                    borderRadius: BorderRadius.circular(15),
                    boxShadow: [
                      BoxShadow(
                        color: Colors.grey,
                        offset: Offset(0,2),
                        blurRadius: 4
                      )
                    ]
                  ),
                  child: Padding(
                    padding: const EdgeInsets.all(20.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text('Some Stats',style: GoogleFonts.sacramento(fontSize: 26,fontWeight: FontWeight.w600),),
                        Text('Est. on 23rd November 1901',softWrap: true,style: GoogleFonts.ptSerif(fontSize: 16,fontWeight: FontWeight.w600,color: Colors.black),),
                        Text('192 Active Members',style: GoogleFonts.ptSerif(fontSize: 16,fontWeight: FontWeight.w600,color: Colors.black),softWrap: true),
                        Text('Completed 32 Rides',style: GoogleFonts.ptSerif(fontWeight: FontWeight.w600,fontSize: 16),),
                        SizedBox(height: 10,),
                        Center(child: Text('Admins: Provider,Rider',style: GoogleFonts.poppins(fontSize: 18,fontWeight: FontWeight.w500),)),
                      ],
                    ),
                  ),
                ),
                SizedBox(height: 10,),
                Text('Upcoming Rides',style: headingStyle,),
                SizedBox(height: 10,),
                Container(
                  width: Get.width,
                  height: Get.height/3.4,
                  child: ListView(
                    scrollDirection: Axis.horizontal,
                    children: [
                      VerticalCard(),
                      VerticalCard(),
                      VerticalCard(),
                      VerticalCard(),
                      VerticalCard(),
                    ],
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
