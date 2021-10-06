import 'package:ecommerce_shopping/screens/login/components/body.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text('Sign In',style: TextStyle(fontSize: 18),),
      ),
      body: Body(),
    );
  }
}
