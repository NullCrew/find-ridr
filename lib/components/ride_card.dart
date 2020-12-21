import 'package:findridr/components/card_button.dart';
import 'package:findridr/constants.dart';
import 'package:findridr/controllers/ride_card_controller.dart';
import 'package:findridr/views/ride_info_view.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';


Widget RideCard({int reviewStar}){
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
                      init: RideCardController(),
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
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
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
                        )
                      ],
                    ),
                    // SizedBox(width: 40,),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Row(
                          children: [
                            Icon(FontAwesomeIcons.clock),
                            SizedBox(width: 5,),
                            Text('18 Jan, 5:30 AM',style: GoogleFonts.poppins(fontSize: 16,fontWeight: FontWeight.w500),)
                          ],
                        ),
                        SizedBox(height: 5,),
                        Row(
                          children: [
                            Icon(FontAwesomeIcons.mapPin),
                            SizedBox(width: 5,),
                            Text('D.D Hills',style: GoogleFonts.poppins(fontSize: 16,fontWeight: FontWeight.w500),)
                          ],
                        ),
                      ],
                    ),
                    Column(
                      children: [
                        Row(
                          children: [
                            Text('67',style: GoogleFonts.poppins(fontSize: 18,fontWeight: FontWeight.bold)),
                            Icon(FontAwesomeIcons.solidCircle,color: Colors.green,),
                          ],
                        ),
                        Text('Going',style: GoogleFonts.poppins(fontSize: 18,fontWeight: FontWeight.bold)),
                      ],
                    )
                  ],
                ),
                SizedBox(height: 10,),
                CardButton(btnText: "Let'\s Go",onTap: (){
                  Get.to(RideInfoView());
                })
              ],
            ),
          ),
        ),
      )
  );
}