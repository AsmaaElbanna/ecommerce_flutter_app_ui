import 'package:ecommerce_shopping/screens/forgot_password/forgot_password_screen.dart';
import 'package:ecommerce_shopping/screens/login/components/social_card.dart';
import 'package:ecommerce_shopping/screens/login/login_success_screen.dart';
import 'package:ecommerce_shopping/screens/sign_up/sign_up_screen.dart';
import 'package:flutter/material.dart';
import '../../../constant.dart';
import 'package:flutter_svg/flutter_svg.dart';

class Body extends StatefulWidget {
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
                  'Welcome Back',
                  style: TextStyle(
                      fontSize: 30,
                      fontWeight: FontWeight.bold,
                      color: Colors.black),
                ),
                Text(
                  'Sign in with email and password \nor continue with social media',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                      fontSize: 15,
                      fontWeight: FontWeight.bold,
                      color: kSecondaryColor),
                ),
                SizedBox(
                  height: 20,
                ),
                SignForm(),
                SizedBox(height: 20),
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
                      'Sign In',
                      style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                          color: Colors.white),
                    ),
                  ),
                ),
                SizedBox(height: 20),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    SocialCard('assets/icons/google-icon.svg', () {}),
                    SocialCard('assets/icons/facebook-2.svg', () {}),
                    SocialCard('assets/icons/twitter.svg', () {}),
                  ],
                ),
              //  SizedBox(height: 20),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text('Don\'t have an account'),
                    TextButton(
                        onPressed: () {
                          Navigator.push(context, MaterialPageRoute(builder: (context)=>SignUpScreen())
                          );
                        },
                        child: Text(
                          'Sign Up',
                          style: TextStyle(
                              color: kPrimaryColor, fontWeight: FontWeight.bold),
                        ))
                  ],
                )
              ],
            ),
          ),

      ),
    );
  }
}

class SignForm extends StatefulWidget {
  @override
  _SignFormState createState() => _SignFormState();
}

class _SignFormState extends State<SignForm> {
  bool remember = false;
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
        Row(
          children: [
            Checkbox(
                value: remember,
                activeColor: kPrimaryColor,
                onChanged: (value) {
                  setState(() {
                    remember = value!;
                  });
                }),
            Text('Remember me'),
            Spacer(),
            TextButton(
              onPressed: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => ForgotPassword()));
              },
              child: Text(
                'Forgot password',
                style: TextStyle(decoration: TextDecoration.underline),
              ),
            )
          ],
        ),
      ],
    );
  }
}


