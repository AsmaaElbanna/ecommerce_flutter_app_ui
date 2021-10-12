import 'package:ecommerce_shopping/screens/login/components/body.dart';
import 'package:ecommerce_shopping/screens/login/components/social_card.dart';
import 'package:ecommerce_shopping/screens/login/login_screen.dart';
import 'package:ecommerce_shopping/screens/login/login_success_screen.dart';
import 'package:flutter/material.dart';

import '../../../constant.dart';

class Body extends StatefulWidget {
  const Body({Key? key}) : super(key: key);

  @override
  _BodyState createState() => _BodyState();
}

class _BodyState extends State<Body> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Padding(
        padding: EdgeInsets.only(right: 20, left: 20),
        child: SingleChildScrollView(
          child: Column(
            children: [
              Text(
                'Register Account',
                style: TextStyle(
                    fontSize: 30,
                    fontWeight: FontWeight.bold,
                    color: Colors.black),
              ),
              Text(
                'Complete your details or continue \nwith social media',
                textAlign: TextAlign.center,
                style: TextStyle(
                    fontSize: 15,
                    fontWeight: FontWeight.bold,
                    color: kSecondaryColor),
              ),
              SizedBox(
                height: 20,
              ),
              SignUpForm(),
              Container(
                padding: EdgeInsets.only(bottom: 10),
                width: double.infinity,
                decoration: BoxDecoration(
                    color: kPrimaryColor,
                    borderRadius: BorderRadius.circular(30)),
                // padding: EdgeInsets.symmetric(horizontal: 80,vertical: 5),

                child: TextButton(
                  onPressed: () {
                    Navigator.push(context, MaterialPageRoute(builder: (context)=>LoginSuccessScreen())
                    );
                  },
                  child: Text(
                    'Register',
                    style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                        color: Colors.white),
                  ),
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  SocialCard('assets/icons/google-icon.svg', () {}),
                  SocialCard('assets/icons/facebook-2.svg', () {}),
                  SocialCard('assets/icons/twitter.svg', () {}),
                ],
              ),
              Text(
                'By continuing your confirm that you agree \nwith our term and condition',
                textAlign: TextAlign.center,
                style: TextStyle(
                    // fontSize: 15,
                    fontWeight: FontWeight.bold,
                    color: kSecondaryColor),
              ),
            ],
          ),
        ),

      ),
    );
  }
}

class SignUpForm extends StatefulWidget {
  const SignUpForm({Key? key}) : super(key: key);

  @override
  _SignUpFormState createState() => _SignUpFormState();
}

class _SignUpFormState extends State<SignUpForm> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        TextFormField(
          decoration: InputDecoration(
            suffixIcon: Icon(Icons.email_outlined),
            labelText: 'Email',
            hintText: 'Enter your email',
            floatingLabelBehavior: FloatingLabelBehavior.always,
            contentPadding: EdgeInsets.symmetric(horizontal: 42, vertical: 20),
            enabledBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(28),
              borderSide: BorderSide(color: kTextColor),
              gapPadding: 10,
            ),
            focusedBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(28),
              borderSide: BorderSide(color: kTextColor),
              gapPadding: 10,
            ),
          ),
        ),
        SizedBox(height: 20),
        TextFormField(
          obscureText: true,
          decoration: InputDecoration(
            suffixIcon: Icon(Icons.lock_outline),
            labelText: 'Password',
            hintText: 'Enter your password',
            floatingLabelBehavior: FloatingLabelBehavior.always,
            contentPadding: EdgeInsets.symmetric(horizontal: 42, vertical: 20),
            enabledBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(28),
              borderSide: BorderSide(color: kTextColor),
              gapPadding: 10,
            ),
            focusedBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(28),
              borderSide: BorderSide(color: kTextColor),
              gapPadding: 10,
            ),
          ),
        ),
        SizedBox(height: 20),
        TextFormField(
          obscureText: true,
          decoration: InputDecoration(
            suffixIcon: Icon(Icons.lock_outline),
            labelText: 'Confirm password',
            hintText: 'Enter your password',
            floatingLabelBehavior: FloatingLabelBehavior.always,
            contentPadding: EdgeInsets.symmetric(horizontal: 42, vertical: 20),
            enabledBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(28),
              borderSide: BorderSide(color: kTextColor),
              gapPadding: 10,
            ),
            focusedBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(28),
              borderSide: BorderSide(color: kTextColor),
              gapPadding: 10,
            ),
          ),
        ),
        SizedBox(height: 20),
      ],
    );
  }
}

