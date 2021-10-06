import 'package:ecommerce_shopping/constant.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class ProfileAction extends StatelessWidget {
  const ProfileAction({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(vertical: 10, horizontal: 20),
      child: TextButton(
        style: ButtonStyle(
            backgroundColor: MaterialStateProperty.all(Color(0XFFF5F6F9))),
        onPressed: () {},
        child: Row(
          children: [
            SvgPicture.asset('assets/icons/User Icon.svg',
                color: kPrimaryColor),
            SizedBox(
              width: 20,
            ),
            Expanded(child: Text('My Account',style: Theme.of(context).textTheme.bodyText1,)),
            Icon(Icons.arrow_forward_ios,color: Colors.grey,)
          ],
        ),
      ),
    );
  }
}
