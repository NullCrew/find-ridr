import 'package:findridr/components/action_button.dart';
import 'package:findridr/components/text_input_field.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';

import '../constants.dart';

class otpVerificationView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    TextInputField otpVerificationField = TextInputField();
    ActionButton loginButton = ActionButton();
    return Scaffold(
      resizeToAvoidBottomPadding: true,
      backgroundColor: primaryColor,
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 30.0,vertical: 60),
                child: Text('Hey RidR!\n'
                    'Welcome back!',style: GoogleFonts.raleway(fontSize: 30,fontWeight: FontWeight.w700),),
              ),
              SizedBox(height: 20,),
              Center(
                  child: Container(
                    height: Get.height/2.2,
                    width: Get.width/1.2,
                    decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(15)
                    ),
                    child: Padding(
                      padding: const EdgeInsets.all(20),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text('Kindly enter the OTP\n'
                              'you received login',style: GoogleFonts.raleway(fontSize: 18,fontWeight: FontWeight.w600),),
                          otpVerificationField.buildInputField(hintText: "Enter the OTP"),
                          loginButton.buildButton(btnText: 'Login',onTap: (){
                            // Get.to();
                          })
                        ],
                      ),
                    ),
                  )
              )
            ],
          ),
        ),
      ),
    );
  }
}
