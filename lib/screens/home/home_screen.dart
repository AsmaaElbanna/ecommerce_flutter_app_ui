import 'package:ecommerce_shopping/screens/home/components/body.dart';
import 'package:ecommerce_shopping/screens/profile/components/bottom_nav_bar.dart';
import 'package:flutter/material.dart';

import '../../enums.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Body(),
      bottomNavigationBar: BottomNavBar(MenuState.home),
    );
  }
}
