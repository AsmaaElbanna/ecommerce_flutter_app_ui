import 'package:ecommerce_shopping/constant.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class Rate extends StatelessWidget {
  final double rating;

  const Rate( this.rating);
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Spacer(),
        Container(
          padding: EdgeInsets.symmetric(horizontal: 14,vertical: 5),
          decoration: BoxDecoration(
              color: kPrimaryLightColor,
              borderRadius: BorderRadius.circular(20)

          ),
          child: Row(
            children: [
              Text('${rating.toString()}',style: TextStyle(fontWeight:FontWeight.w600,color: Colors.black ),),
              SizedBox(width: 5,),
              SvgPicture.asset('assets/icons/Star Icon.svg')
            ],
          ),
        )
      ],
    );
  }
}