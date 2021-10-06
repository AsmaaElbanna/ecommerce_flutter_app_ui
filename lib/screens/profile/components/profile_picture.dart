import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../../../constant.dart';

class ProfilePicture extends StatelessWidget {
  const ProfilePicture({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
        width: 115,
        height: 115,
        child: Stack(
          fit: StackFit.expand,
          clipBehavior: Clip.none,
          children: [
            CircleAvatar(
              backgroundColor: kPrimaryColor,
              backgroundImage: AssetImage('assets/images/Profile Image.png'),
            ),
            Positioned(
              bottom: 0,
              right: -10,
              child: SizedBox(
                height: 45,
                width: 45,
                child: Container(
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    boxShadow: [
                      BoxShadow(color: Colors.white, spreadRadius: 3)
                    ],
                    color: Color(0XFFF5F6F9),
                  ),
                  child: TextButton(
                    // color: Color(0XFFF5F6F9),
                      onPressed: () {},
                      child:
                      SvgPicture.asset('assets/icons/Camera Icon.svg')),
                ),
              ),
            )
          ],
        ));
  }
}
