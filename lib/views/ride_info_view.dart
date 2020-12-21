import 'package:findridr/components/UI_BackButton.dart';
import 'package:findridr/components/action_button.dart';
import 'package:findridr/components/card_button.dart';
import 'package:findridr/components/small_action_button.dart';
import 'package:findridr/constants.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';

List<String> neededItems=['Riding Gear','Helmet','Bungee Chords','Tank Bag','Sleeping Bag'];

class RideInfoView extends StatelessWidget {

  SmallActionButton saveButton = SmallActionButton();
  SmallActionButton chatButton = SmallActionButton();

  Widget getTextWidgets(List<String> items)
  {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
        children: items.map((item) => Text(item,
          style: cardDetailsStyle,)
        ).toList());
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              UIBackButton(),
              SizedBox(height: 10,),
              Row(
                children: [
                  CircleAvatar(radius: 35,),
                  SizedBox(width: 10,),
                  Text('Indian Riding Group',style: GoogleFonts.poppins(fontSize: 24,fontWeight: FontWeight.w600),)
                ],
              ),
              SizedBox(height: 10,),
              Center(
                child: Container(
                  height: Get.height/1.8,
                  width: Get.width/1,
                  decoration: BoxDecoration(
                    border: Border.all(color: Colors.black, width: 2),
                    borderRadius: BorderRadius.circular(15),
                  ),
                  child: Padding(
                    padding: const EdgeInsets.all(15.0),
                    child: SingleChildScrollView(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text('Details',style: headingStyle.copyWith(decoration: TextDecoration.underline),),
                          Text('Destination : D.D Hills',style: cardDetailsStyle),
                          Text('Distance : 90 KM',style: cardDetailsStyle),
                          Text('Time Taken : 4 Hours',style: cardDetailsStyle),
                          SizedBox(height: 10,),
                          Text('Pre Requisites',style: headingStyle.copyWith(decoration: TextDecoration.underline),),
                          getTextWidgets(neededItems),
                          SizedBox(height: 10,),
                          Center(child: Text('Riding Style : Mixed',style: headingStyle.copyWith(fontSize:20,decoration: TextDecoration.underline),)),
                          SizedBox(height: 10,),
                          CardButton(btnText: 'View Itinerary'),
                        ],
                      ),
                    ),
                  ),
                ),
              ),
            SizedBox(height: 10,),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                saveButton.SaveButton(),
                chatButton.ChatButton(),
              ],
            ),
              SizedBox(height: 10,),
              Center(child: ActionButton().buildButton(btnText: 'Let\'s Ride! ')),
            ],
          ),
        ),
      ),
    );
  }
}
