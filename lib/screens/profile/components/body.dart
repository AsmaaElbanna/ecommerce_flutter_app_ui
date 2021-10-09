import 'package:ecommerce_shopping/constant.dart';
import 'package:ecommerce_shopping/screens/profile/components/profile_action.dart';
import 'package:ecommerce_shopping/screens/profile/components/profile_picture.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class Body extends StatelessWidget {
  const Body({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(crossAxisAlignment: CrossAxisAlignment.center, children: [
      ProfilePicture(),
      SizedBox(height: 10, width: double.infinity),
      ProfileAction('My Account','assets/icons/User Icon.svg',(){}),
      ProfileAction('Notifications','assets/icons/Bell.svg',(){}),
      ProfileAction('Settings','assets/icons/Settings.svg',(){}),
      ProfileAction('Help Center','assets/icons/Question mark.svg',(){}),
      ProfileAction('Log Out','assets/icons/Log out.svg',(){}),
    ]);
  }
}
