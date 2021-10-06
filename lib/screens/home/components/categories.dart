import 'package:ecommerce_shopping/constant.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class Categories extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    List<Map<String, dynamic>> categories = [
      {'icon': 'assets/icons/Flash Icon.svg', 'text': 'Flash deal'},
      {'icon': 'assets/icons/Bill Icon.svg', 'text': 'Bill'},
      {'icon': 'assets/icons/Game Icon.svg', 'text': 'Game'},
      {'icon': 'assets/icons/Gift Icon.svg', 'text': 'Gift'},
      {'icon': 'assets/icons/Discover.svg', 'text': 'More'},
    ];
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 20),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          ...List.generate(
              categories.length,
              (index) => CategoryCard(
                  categories[index]['icon'], categories[index]['text'], () {}))
        ],
      ),
    );
  }
}

class CategoryCard extends StatelessWidget {
  final String icon, text;
  final Function press;

  CategoryCard(this.icon, this.text, this.press);
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: press(),
      child: SizedBox(
        width: 55,
        child: Column(
          children: [
            AspectRatio(
              aspectRatio: 1,
              child: Container(
                padding: EdgeInsets.all(15),
                decoration: BoxDecoration(
                  color: kPrimaryColor.withOpacity(0.2),
                  borderRadius: BorderRadius.circular(10),
                ),
                child: SvgPicture.asset(icon),
              ),
            ),
            SizedBox(height: 10),
            Text(text, textAlign: TextAlign.center)
          ],
        ),
      ),
    );
  }
}

/*
GestureDetector(
                    onTap: () {
                      setState(() {
                        updateColor(Gender.female);
                      });
                    },
                    child: ReusableCard(
                      femaleColor,
                      ContentCard(iconFemale, 'FEMALE'),
                    ),
                  )
 */
