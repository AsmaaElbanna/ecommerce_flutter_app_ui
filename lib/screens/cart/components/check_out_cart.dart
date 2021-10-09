import 'package:ecommerce_shopping/constant.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class CheckOut extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 170,
      padding: EdgeInsets.symmetric(vertical: 10, horizontal: 20),
      decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.only(
              topLeft: Radius.circular(20), topRight: Radius.circular(20)),
          boxShadow: [
            BoxShadow(
              offset: Offset(0, -15),
              blurRadius: 20,
              color: Color(0xFFDADADA).withOpacity(0.7),
            )
          ]),
      child: Column(
        children: [
          Row(
            children: [
              Container(
                padding: EdgeInsets.all(10),
                height: 40,
                width: 40,
                decoration: BoxDecoration(
                    color: Color(0xFFF5F6F9),
                    borderRadius: BorderRadius.circular(10)),
                child: SvgPicture.asset('assets/icons/receipt.svg'),
              ),
              Spacer(),
              Text('Add voucher code'),
              SizedBox(
                width: 20,
              ),
              Icon(
                Icons.arrow_forward_ios,
                size: 12,
                color: kTextColor,
              )
            ],
          ),
          Spacer(),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text.rich(TextSpan(text: 'Total: \n', children: [
                TextSpan(
                  text: '\$400.56',
                  style: TextStyle(
                    color: Colors.black,
                    fontWeight: FontWeight.bold,
                    fontSize: 16,
                  ),
                )
              ])),
              Container(
                padding: EdgeInsets.only(left: 20,right: 20,bottom: 10),
                //padding: EdgeInsets.symmetric(horizontal: 20,vertical: 5),
                // width: double.infinity,
                decoration: BoxDecoration(
                    color: kPrimaryColor, borderRadius: BorderRadius.circular(30)),

                child: TextButton(
                  onPressed: () {
                    // Navigator.push(context, MaterialPageRoute(builder: (context)=>HomeScreen())
                    // );
                  },
                  child: Text(
                    'Check Out',
                    style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                        color: Colors.white),
                  ),
                ),
              )
            ],
          ),
          Spacer()
        ],
      ),
    );
  }
}
