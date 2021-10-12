import 'package:flutter/material.dart';

import '../../../constant.dart';
class RoundedIconBtn extends StatelessWidget {

  final Icon icon;
  final Function press;

  const RoundedIconBtn(this.icon,this.press);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap:press(),
      child: Container(
        margin: EdgeInsets.only(right: 5),
        padding: EdgeInsets.all(8),
        height: 40,
        width: 40,
        decoration: BoxDecoration(
          boxShadow: [
            BoxShadow(
              color: Colors.grey.withOpacity(0.5),
              spreadRadius: 5,
              blurRadius: 7,
              offset: Offset(0, 3), // changes position of shadow
            ),
          ],          color: Colors.white,
          shape: BoxShape.circle,
          // border:
          // Border.all(color: kPrimaryColor),
        ),
        child: icon
      ),
    );
  }
}
