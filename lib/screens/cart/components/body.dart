import 'package:ecommerce_shopping/constant.dart';
import 'package:ecommerce_shopping/models/cart.dart';
import 'package:ecommerce_shopping/screens/cart/components/cart_item.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class Body extends StatefulWidget {
  @override
  _BodyState createState() => _BodyState();
}

class _BodyState extends State<Body> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 20),
      child: ListView.builder(itemCount: demoCarts.length,itemBuilder: (BuildContext context, int index) {
        return Dismissible(
          key: Key(demoCarts[index].product.id.toString()),
          direction: DismissDirection.endToStart,
          onDismissed: (direction){
            setState(() {
              demoCarts.removeAt(index);
            });
          },
          background: Container(
            padding: EdgeInsets.symmetric(horizontal: 20),
            decoration: BoxDecoration(color: kPrimaryColor.withOpacity(0.3),
                borderRadius: BorderRadius.circular(15)),
            child: Row(
              children: [
                Spacer(),
                SvgPicture.asset('assets/icons/Trash.svg'),
              ],
            ),
          ),
          child: CartItemCard(demoCarts[index]),
        );
      },
      ),
    );
  }
}
