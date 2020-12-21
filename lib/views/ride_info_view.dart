import 'package:findridr/components/UI_BackButton.dart';
import 'package:flutter/material.dart';

class RideInfoView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Column(
            children: [
              UIBackButton(),


            ],
          ),
        ),
      ),
    );
  }
}
