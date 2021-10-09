import 'package:ecommerce_shopping/enums.dart';
import 'package:ecommerce_shopping/screens/profile/components/body.dart';
import 'package:ecommerce_shopping/screens/profile/components/bottom_nav_bar.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text('Profile',style: TextStyle(fontSize: 18),),
      ),
      body: Body(),
      bottomNavigationBar: BottomNavBar(MenuState.profile),
    );
  }
}
