import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class SocialCard extends StatelessWidget {
  final String icon;
  final Function press;
  SocialCard(this.icon, this.press);
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: press(),
      child: Container(
        padding: EdgeInsets.all(12),
        margin: EdgeInsets.all(12),
        height: 40,
        width: 40,
        decoration:
        BoxDecoration(shape: BoxShape.circle, color: Colors.grey.shade300),
        child: SvgPicture.asset(icon),
      ),
    );
  }
}