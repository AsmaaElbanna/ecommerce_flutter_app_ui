import 'package:ecommerce_shopping/screens/sign_up/components/body.dart';
import 'package:flutter/material.dart';

class SignUpScreen extends StatelessWidget {
  const SignUpScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text('Sign Up',style: TextStyle(fontSize: 18),),
      ),
      body: Body(),
    );
  }
}
