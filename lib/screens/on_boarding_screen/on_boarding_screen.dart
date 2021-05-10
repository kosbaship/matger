import 'package:flutter/material.dart';
import 'package:matger/shared/app_text_styles.dart';

class OnBoardingScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            'Please Select Your Language',
            style: kBlack18regular(),
          ),
        ],
      ),
    );
  }
}
