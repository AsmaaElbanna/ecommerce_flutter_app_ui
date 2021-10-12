import 'package:ecommerce_shopping/constant.dart';
import 'package:ecommerce_shopping/models/product.dart';
import 'package:ecommerce_shopping/screens/details/compenents/colors_container.dart';
import 'package:ecommerce_shopping/screens/details/compenents/product_images.dart';
import 'package:ecommerce_shopping/screens/details/compenents/rounded_container.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class Body extends StatefulWidget {
  final Product product;

  const Body(this.product);

  @override
  _BodyState createState() => _BodyState();
}

class _BodyState extends State<Body> {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [
          ProductImages(widget.product),
          RoundedContainer(widget.product),
          ColorsContainer(widget.product),
          SizedBox(height: 10),
          Container(
            padding: EdgeInsets.only(left: 40,right: 40,bottom: 10),
            //padding: EdgeInsets.symmetric(horizontal: 20,vertical: 5),
            // width: double.infinity,
            decoration: BoxDecoration(
                color: kPrimaryColor, borderRadius: BorderRadius.circular(15)),

            child: TextButton(
              onPressed: () {
                // Navigator.push(context, MaterialPageRoute(builder: (context)=>HomeScreen())
                // );
              },
              child: Text(
                'Add to cart',
                style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                    color: Colors.white),
              ),
            ),
          ),
          SizedBox(height: 20),
        ],
      ),
    );
  }
}



