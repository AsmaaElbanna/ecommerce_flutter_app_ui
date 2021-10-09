import 'package:ecommerce_shopping/constant.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class ProfileAction extends StatelessWidget {

  final String text,icon;
  final VoidCallback press;

  const ProfileAction(this.text, this.icon, this.press);


  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(vertical: 5, horizontal: 20),
      child: Container(
        //margin: EdgeInsets.symmetric(vertical: 20),
        padding: EdgeInsets.symmetric(horizontal: 20, vertical: 5),
        decoration: BoxDecoration(
            color: Color(0XFFF5F6F9),
            borderRadius: BorderRadius.circular(20)),
        child: TextButton(

          style: ButtonStyle(
              backgroundColor: MaterialStateProperty.all(Color(0XFFF5F6F9))),
          onPressed: press,
          child: Row(
            children: [
              SvgPicture.asset(icon,
                  color: kPrimaryColor),
              SizedBox(
                width: 20,
              ),
              Expanded(child: Text(text,style: Theme.of(context).textTheme.bodyText1,)),
              Icon(Icons.arrow_forward_ios,color: Colors.grey,)
            ],
          ),
        ),
      ),
    );
  }
}
