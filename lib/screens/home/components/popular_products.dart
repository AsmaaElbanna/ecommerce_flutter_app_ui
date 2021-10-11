import 'package:ecommerce_shopping/constant.dart';
import 'package:ecommerce_shopping/models/product.dart';
import 'package:ecommerce_shopping/screens/details/details_screen.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class PopularProducts extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          ...List.generate(demoProducts.length,
              (index) => PopularProductCard(demoProducts[index])),
        ],
      ),
    );
  }
}

class PopularProductCard extends StatelessWidget {
  final Product product;

  const PopularProductCard(this.product);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(left: 20),
      child: SizedBox(
        width: 140,
        child: Column(
          children: [
            InkWell(
              onTap: (){
                Navigator.push(context, MaterialPageRoute(builder: (context)=>DetailsScreen(product))
                );
              },
              child: AspectRatio(
                aspectRatio: 1.02,
                child: Container(
                  padding: EdgeInsets.all(10),
                  decoration: BoxDecoration(
                      color: kSecondaryColor.withOpacity(0.2),
                      borderRadius: BorderRadius.circular(15)),
                  child: Image.asset(product.images[0]),
                ),
              ),
            ),
            SizedBox(height: 5),
            Text(
              product.title,
              style: TextStyle(),
              maxLines: 2,
            ),
            Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
              Text(
                '\$${product.price.toString()}',
                style: TextStyle(
                    color: kPrimaryColor,
                    fontWeight: FontWeight.bold,
                    fontSize: 18),
              ),
              InkWell(
                borderRadius: BorderRadius.circular(15),
                onTap: (){
                  // Navigator.push(context, MaterialPageRoute(builder: (context)=>DetailsScreen())
                  // );
                },
                child: Container(
                  padding: EdgeInsets.all(8),
                  width: 30,
                  height: 30,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(15),
                      color: product.isFavorite ? kPrimaryColor.withOpacity(0.15) : kSecondaryColor.withOpacity(0.2)),
                  child:product.isFavorite ? SvgPicture.asset('assets/icons/Heart Icon_2.svg',color: kPrimaryColor,) : SvgPicture.asset('assets/icons/Heart Icon.svg') ,
                ),
              )
            ])
          ],
        ),
      ),
    );
  }
}

//SvgPicture.asset('assets/icons/Heart Icon_2.svg')
