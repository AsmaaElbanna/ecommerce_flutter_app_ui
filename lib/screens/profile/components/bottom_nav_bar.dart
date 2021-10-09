import 'package:ecommerce_shopping/constant.dart';
import 'package:ecommerce_shopping/enums.dart';
import 'package:ecommerce_shopping/screens/home/home_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../profile_screen.dart';

class BottomNavBar extends StatelessWidget {
  final MenuState selectedMenu;

  const BottomNavBar(this.selectedMenu);
  @override
  Widget build(BuildContext context) {
    final Color inActiveColor = Color(0xFFB6B6B6);
    return Container(
      padding: EdgeInsets.symmetric(vertical: 14),
      decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.only(
              topLeft: Radius.circular(40), topRight: Radius.circular(40)),
          boxShadow: [
            BoxShadow(
              offset: Offset(0, -15),
              blurRadius: 20,
              color: Color(0xFFDADADA).withOpacity(0.7),
            )
          ]),
      child: SafeArea(
          child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          IconButton(
              onPressed: () {
                Navigator.push(context, MaterialPageRoute(builder: (context)=>HomeScreen())
                );
              },
              icon: SvgPicture.asset(
                'assets/icons/Shop Icon.svg',
                color: MenuState.home == selectedMenu
                    ? kPrimaryColor
                    : inActiveColor,
              )),
          IconButton(
              onPressed: () {

              },
              icon: SvgPicture.asset('assets/icons/Heart Icon.svg',color: MenuState.favorite == selectedMenu
                  ? kPrimaryColor
                  : inActiveColor,)),
          IconButton(
              onPressed: () {},
              icon: SvgPicture.asset('assets/icons/Chat bubble Icon.svg',color: MenuState.message == selectedMenu
                  ? kPrimaryColor
                  : inActiveColor,)),
          IconButton(
              onPressed: () {
                Navigator.push(context, MaterialPageRoute(builder: (context)=>ProfileScreen())
                );
              },
              icon: SvgPicture.asset('assets/icons/User Icon.svg',color: MenuState.profile == selectedMenu
                  ? kPrimaryColor
                  : inActiveColor,))
        ],
      )),
    );
  }
}

