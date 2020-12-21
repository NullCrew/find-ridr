import 'package:findridr/controllers/ride_card_controller.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:get/get.dart';

import '../constants.dart';

class SmallActionButton {
  Widget SaveButton() {
    return InkWell(
      child: Container(
        height: 50,
        width: 120,
        decoration: BoxDecoration(
            color: primaryColor, borderRadius: BorderRadius.circular(10)),
        child: GetBuilder(
            init: CardController(),
            builder: (controller) {
          return InkWell(
            onTap: () {
              controller.changeStatus();
              print(controller.pressedBool);
            },
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                controller.pressedBool == true
                    ? Icon(FontAwesomeIcons.bookmark)
                    : Icon(
                        FontAwesomeIcons.solidBookmark,
                      ),
                SizedBox(
                  width: 5,
                ),
                Text(
                  'Save',
                  style: cardDetailsStyle.copyWith(
                      fontSize: 20, fontWeight: FontWeight.bold),
                )
              ],
            ),
          );
        }),
      ),
    );
  }

  Widget ChatButton() {
    return InkWell(
      child: Container(
        height: 50,
        width: 120,
        decoration: BoxDecoration(
            color: primaryColor, borderRadius: BorderRadius.circular(10)),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(CupertinoIcons.chat_bubble),
            SizedBox(
              width: 5,
            ),
            Text(
              'Chat',
              style: cardDetailsStyle.copyWith(
                  fontSize: 20, fontWeight: FontWeight.bold),
            )
          ],
        ),
      ),
    );
  }
}
