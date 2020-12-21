import 'package:findridr/components/card_button.dart';
import 'package:findridr/constants.dart';
import 'package:findridr/controllers/ride_card_controller.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';


Widget GroupCard({int reviewStar}){
  return GestureDetector(
      child: Padding(
        padding: const EdgeInsets.symmetric(vertical: 10),
        child: Container(
          height: Get.height/3.6,
          width: Get.width/1.2,
          decoration: BoxDecoration(
              border: Border.all(color: Colors.black,width: 2),
              borderRadius: BorderRadius.circular(15)
          ),
          child: Padding(
            padding: const EdgeInsets.all(10.0),
            child: Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      children: [
                        CircleAvatar(radius: 40),
                        SizedBox(width: 10,),
                        Text('Indian Riding Group',style: GoogleFonts.poppins(fontSize: 20,fontWeight: FontWeight.w600),)
                      ],
                    ),
                    GetBuilder(
                      init: CardController(),
                      builder: (controller){
                        return InkWell(
                            onTap: (){
                              controller.changeStatus();
                              print(controller.pressedBool);
                            },
                            child: controller.pressedBool == true?
                            Icon(FontAwesomeIcons.bookmark):
                            Icon(FontAwesomeIcons.solidBookmark,color: primaryColor,)
                        );
                      },
                    )
                  ],
                ),
                Row(
                  children: [
                    Column(
                      children: [
                        Text('Rating',style: GoogleFonts.poppins(fontWeight: FontWeight.w600,fontSize: 16),),
                        Row(
                            children: [
                              Icon(FontAwesomeIcons.solidStar,size: 18,color: primaryColor,),
                              Icon(FontAwesomeIcons.solidStar,size: 18,color: primaryColor,),
                              Icon(FontAwesomeIcons.solidStar,size: 18,color: primaryColor,),
                              Icon(FontAwesomeIcons.solidStar,size: 18,color: primaryColor,),
                            ]
                        ),
                      ],
                    ),
                    SizedBox(width: 20,),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text('Active Members : 162',style: GoogleFonts.poppins(fontSize: 14,fontWeight: FontWeight.w500),),
                        Text('Trips Done : 25',style: GoogleFonts.poppins(fontSize: 14,fontWeight: FontWeight.w500),),
                        Text('Kilometers Covered : 9600 KMs',style: GoogleFonts.poppins(fontSize: 14,fontWeight: FontWeight.w500),),
                      ],
                    )
                  ],
                ),
                SizedBox(height: 10,),
                CardButton(btnText: "Explore")
              ],
            ),
          ),
        ),
      )
  );
}