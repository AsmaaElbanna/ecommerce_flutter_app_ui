import 'package:ecommerce_shopping/constant.dart';
import 'package:ecommerce_shopping/models/cart.dart';
import 'package:flutter/material.dart';

class CartItemCard extends StatelessWidget {
  final Cart cartItem;

  const CartItemCard( this.cartItem);
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Container(
          padding: EdgeInsets.symmetric(vertical: 10),
          child: SizedBox(
            width: 88,
            child: AspectRatio(
              aspectRatio: 0.88,
              child: Container(
                decoration: BoxDecoration(
                    color: Color(0xFFF5F6F9),
                    borderRadius: BorderRadius.circular(15)),
                child: Image.asset(cartItem.product.images[0]),
              ),
            ),
          ),
        ),
        SizedBox(width: 20),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              cartItem.product.title,
              maxLines: 2,
              style: TextStyle( color: Colors.black),

            ),
            Text.rich(
              TextSpan(
                  text: '\$${cartItem.product.price}',
                  style: TextStyle(
                      fontWeight: FontWeight.w800, color: kPrimaryColor),
                  children: [
                    TextSpan(
                        text: '  x${cartItem.numOfItems}',
                        style: TextStyle(color: kTextColor))
                  ]),
            )
          ],
        )
      ],
    );
  }
}
