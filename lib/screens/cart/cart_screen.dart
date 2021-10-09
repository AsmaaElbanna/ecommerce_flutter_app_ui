import 'package:ecommerce_shopping/screens/cart/components/body.dart';
import 'package:ecommerce_shopping/screens/cart/components/check_out_cart.dart';
import 'package:flutter/material.dart';
import 'package:ecommerce_shopping/models/cart.dart';

class CartScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: buildAppBar(context),
      body: Body(),
      bottomNavigationBar: CheckOut(),
    );
  }
}

AppBar buildAppBar(BuildContext context) {
  return AppBar(
    title: Column(
      children: [
        Text(
          'Your Cart',
          style: TextStyle(fontSize: 18, color: Colors.black),
        ),
        SizedBox(
          height: 5,
        ),
        Text(
          '${demoCarts.length} items',
          style: Theme.of(context).textTheme.caption,
        )
      ],
    ),
    centerTitle: true,
  );
}
