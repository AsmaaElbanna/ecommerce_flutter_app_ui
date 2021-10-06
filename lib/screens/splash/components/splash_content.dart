import 'package:flutter/material.dart';

import '../../../constant.dart';

class SplashContent extends StatelessWidget {
  final String text;
  final String image;

  SplashContent(this.text, this.image);
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Spacer(),
        Text(
          'SOUQ',
          style: TextStyle(
              fontSize: 30,
              fontWeight: FontWeight.bold,
              color: kPrimaryColor),
        ),
        Text(
          text,
          textAlign: TextAlign.center,
          style: TextStyle(
              fontSize: 15,
              fontWeight: FontWeight.bold,
              color: kSecondaryColor),
        ),
        Spacer(),
        Image.asset(
          image,
          height: 300,
          width: 260,
        ),
      ],
    );
  }
}