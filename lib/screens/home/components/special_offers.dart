import 'package:flutter/material.dart';


class SpecialOffers extends StatelessWidget {
  const SpecialOffers({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Row(
       children: [
         SpecialOfferCard('SmartPhone','assets/images/Image Banner 2.png',18, (){}),
         SpecialOfferCard('Fashion','assets/images/Image Banner 3.png',24, (){}),
       ],
      ),
    );
  }
}


class SpecialOfferCard extends StatelessWidget {
final String category,image;
final int numberOfBrand;
final Function press;

  const SpecialOfferCard(this.category, this.image, this.numberOfBrand, this.press);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(left: 20),
      child: SizedBox(
        width: 230,
        child: ClipRRect(

          borderRadius: BorderRadius.all(Radius.circular(20)),
          child: Stack(
            children: [
              Image.asset(
                image,
                fit: BoxFit.cover,
              ),
              Container(
                decoration: BoxDecoration(
                  gradient: LinearGradient(
                      begin: Alignment.topCenter,
                      end: Alignment.bottomCenter,
                      colors: [
                        Color(0xFF343434).withOpacity(0.4),
                        Color(0xFF343434).withOpacity(0.15)
                      ]),
                ),
              ),
              Padding(
                padding: EdgeInsets.only(left: 15),
                child: Text.rich(
                  TextSpan(
                      style: TextStyle(color: Colors.black),
                      children: [
                        TextSpan(text: '$category\n',style: TextStyle(fontSize: 15,fontWeight: FontWeight.bold)),
                        TextSpan(text: '$numberOfBrand Brands'),
                      ]),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
