import 'package:ecommerce_shopping/constant.dart';
import 'package:ecommerce_shopping/models/product.dart';
import 'package:ecommerce_shopping/screens/details/compenents/product_images.dart';
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
    return Column(
      children: [
        ProductImages(widget.product),
        RoundedContainer(widget.product),

      ],
    );
  }
}

class RoundedContainer extends StatelessWidget {
  final Product product;

  const RoundedContainer(this.product);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(top: 20),
      width: double.infinity,
      height: 200,
      decoration: BoxDecoration(
          color: kPrimaryLightColor.withOpacity(0.3),
          borderRadius: BorderRadius.only(
              topRight: Radius.circular(30), topLeft: Radius.circular(30))),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
            child: Text(
              product.title,
              style: Theme.of(context).textTheme.headline6,
            ),
          ),
          //SizedBox(height: 5),
          Align(
            alignment: Alignment.centerRight,
            child: Container(
              width: 64,
              padding: EdgeInsets.all(15),
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(20),
                      bottomLeft: Radius.circular(20)),
                  color: Color(0xFFFFE6E6)),
              child: SvgPicture.asset(
                'assets/icons/Heart Icon_2.svg',
                color: product.isFavorite ? Color(0xFFFF4848) : kSecondaryColor,
              ),
            ),
          ),
          Padding(padding: EdgeInsets.only(left: 20,right: 20),
          child: Text(product.description))
        ],
      ),
    );
  }
}
