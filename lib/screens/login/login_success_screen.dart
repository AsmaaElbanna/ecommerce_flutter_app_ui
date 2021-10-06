import 'package:ecommerce_shopping/screens/home/home_screen.dart';
import 'package:ecommerce_shopping/screens/login/login_screen.dart';
import 'package:flutter/material.dart';

import '../../constant.dart';

class LoginSuccessScreen extends StatelessWidget {
  const LoginSuccessScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text('Login Success',style: TextStyle(fontSize: 18)),
      ),
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.only(right: 20, left: 20),
          child: Column(
            children: [
              Spacer(),
              Image.asset('assets/images/success.png'),
              Spacer(),
              Text(
                'Login Success',
                style: TextStyle(
                    fontSize: 30,
                    fontWeight: FontWeight.bold,
                    color: Colors.black),
              ),
              Spacer(),
              Container(
                padding: EdgeInsets.only(bottom: 10),
                width: double.infinity,
                decoration: BoxDecoration(
                    color: kPrimaryColor, borderRadius: BorderRadius.circular(30)),
                // padding: EdgeInsets.symmetric(horizontal: 80,vertical: 5),
                child: TextButton(
                  onPressed: () {
                    Navigator.push(context, MaterialPageRoute(builder: (context)=>HomeScreen())
                     );
                  },
                  child: Text(
                    'Back to home',
                    style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                        color: Colors.white),
                  ),
                ),
              ),
              Spacer(),
            //  DefaultButton()
            ],
          ),
        ),
      ),
    );
  }
}
