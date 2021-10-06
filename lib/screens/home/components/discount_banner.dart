import 'package:flutter/material.dart';

class DiscountBanner extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return  Padding(
      padding: EdgeInsets.symmetric( horizontal: 20),
      child: Container(
        width: double.infinity,
        margin: EdgeInsets.symmetric(vertical: 20),
        padding: EdgeInsets.symmetric(horizontal: 20, vertical: 15),
        decoration: BoxDecoration(
            color: Color(0xFF4A3298),
            borderRadius: BorderRadius.circular(20)),
        child: Text.rich(
          TextSpan(
              text: 'A summer surprise\n',
              style: TextStyle(color: Colors.white),
              children: [
                TextSpan(
                  text: 'Cashback 20%',
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: 24,
                      fontWeight: FontWeight.bold),
                ),
              ]),
        ),
      ),
    );
  }
}
