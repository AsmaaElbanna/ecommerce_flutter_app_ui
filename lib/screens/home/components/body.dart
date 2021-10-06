import 'package:ecommerce_shopping/screens/home/components/categories.dart';
import 'package:ecommerce_shopping/screens/home/components/home_header.dart';
import 'package:ecommerce_shopping/screens/home/components/popular_products.dart';
import 'package:ecommerce_shopping/screens/home/components/section_title.dart';
import 'package:ecommerce_shopping/screens/home/components/special_offers.dart';
import 'package:flutter/material.dart';

import 'discount_banner.dart';

class Body extends StatefulWidget {
  const Body({Key? key}) : super(key: key);

  @override
  _BodyState createState() => _BodyState();
}

class _BodyState extends State<Body> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: SingleChildScrollView(
        child: Column(
            children: [
              SizedBox(height: 10),
              HomeHeader(),
              DiscountBanner(),
              SizedBox(height: 10),
              Categories(),
              SizedBox(height: 10),
              SectionTitle('Special for you', () {}),
              SizedBox(height: 10),
              SpecialOffers(),
              SizedBox(height: 20),
              SectionTitle('Popular products', () {}),
              SizedBox(height: 10),
              PopularProducts(),
              SizedBox(height: 20),
            ],
          ),
      ),
    );
  }
}
