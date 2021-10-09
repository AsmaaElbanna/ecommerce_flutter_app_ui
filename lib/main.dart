import 'package:ecommerce_shopping/constant.dart';
import 'package:ecommerce_shopping/screens/profile/profile_screen.dart';
import 'package:ecommerce_shopping/screens/splash/splash_screen.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        scaffoldBackgroundColor: Colors.white,
        fontFamily: 'Muli',
        textTheme:TextTheme(
          bodyText1: TextStyle(color: kTextColor),
          bodyText2: TextStyle(color: kTextColor),
        ),
        visualDensity: VisualDensity.adaptivePlatformDensity,
        appBarTheme: AppBarTheme(
          textTheme: TextTheme(headline6: TextStyle(color: Color(0XFF8B8B8B))),
          color: Colors.white,
          elevation: 0,
          brightness: Brightness.light,
          iconTheme: IconThemeData(color: Colors.black)
        )
      ),
      home: SplashScreen(),
      // initialRoute: SplashScreen.routeId,
    );
  }
}

