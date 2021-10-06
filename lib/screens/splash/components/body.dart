import 'package:ecommerce_shopping/constant.dart';
import 'package:ecommerce_shopping/screens/login/login_screen.dart';
import 'package:ecommerce_shopping/screens/splash/components/splash_content.dart';
import 'package:ecommerce_shopping/size_config.dart';
import 'package:flutter/material.dart';

int currentPage = 0;

class Body extends StatefulWidget {
  @override
  _BodyState createState() => _BodyState();
}

class _BodyState extends State<Body> {
  List<Map<String, String>> splashData = [
    {
      'text': 'Welcome to SOUQ, Let\'s shop!',
      'image': 'assets/images/splash_1.png'
    },
    {
      'text': 'We help people connect with store \naround middle east',
      'image': 'assets/images/splash_2.png'
    },
    {
      'text': 'We show easy way to shop \nhust stay at home with us',
      'image': 'assets/images/splash_3.png'
    }
  ];

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: SizedBox(
      width: double.infinity,
      child: Column(
        children: [
          Expanded(
            flex: 2,
            child: PageView.builder(
              onPageChanged: (value) {
                setState(() {
                  currentPage = value;
                });
              },
              itemCount: splashData.length,
              itemBuilder: (context, index) => SplashContent(
                  splashData[index]['text']!, splashData[index]['image']!),
            ),
          ),
          Expanded(
            flex: 1,
            child: Padding(
              padding: EdgeInsets.all(20),
              child: Column(
                children: [
                  SizedBox(height: 10),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: List.generate(
                        splashData.length, (index) => buildDot(index)),
                  ),
                 Spacer(),
                  Container(
                    padding: EdgeInsets.only(bottom: 10),
                    width: double.infinity,
                    decoration: BoxDecoration(
                        color: kPrimaryColor,
                        borderRadius: BorderRadius.circular(30)
                    ),
                   // padding: EdgeInsets.symmetric(horizontal: 80,vertical: 5),

                    child: TextButton(
                      onPressed: () {
                        Navigator.push(context, MaterialPageRoute(builder: (context)=>LoginScreen())
                        );

                      },
                      child: Text(
                        'Continue',
                        style: TextStyle(
                            fontSize: 20,
                            fontWeight: FontWeight.bold,
                            color: Colors.white),
                      ),
                    ),
                  ),
                 SizedBox(height: 10,)
                ],
              ),
            ),
          )
        ],
      ),
    ));
  }
}

AnimatedContainer buildDot(int index) {
  return AnimatedContainer(
    margin: EdgeInsets.only(right: 5),
    width: currentPage == index ? 20 : 6,
    height: 6,
    decoration: BoxDecoration(
        color: currentPage == index ? kPrimaryColor : kPrimaryLightColor,
        borderRadius: BorderRadius.circular(3)),
    duration: kAnimationDuration,
  );
}

