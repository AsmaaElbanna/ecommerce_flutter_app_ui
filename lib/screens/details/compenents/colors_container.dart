import 'package:ecommerce_shopping/models/product.dart';
import 'package:ecommerce_shopping/screens/details/compenents/roundedIcon.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../../../constant.dart';

class ColorsContainer extends StatelessWidget {
  final Product product;
  const ColorsContainer(this.product);

  @override
  Widget build(BuildContext context) {
    int selectedColor = 3;
    return Container(
      margin: EdgeInsets.only(top: 20),
      width: double.infinity,
      height: 100,
      decoration: BoxDecoration(
          color: kPrimaryLightColor.withOpacity(0.3),
          borderRadius: BorderRadius.only(
              topRight: Radius.circular(30), topLeft: Radius.circular(30))),
      child: Padding(
        padding: EdgeInsets.symmetric(horizontal: 20),
        child: Row(
          children: [
            ...List.generate(
                product.colors.length,
                (index) =>
                    ColorBox(product.colors[index], selectedColor == index)),
            Spacer(),
            RoundedIconBtn(Icon(Icons.add),(){}),
            Spacer(),
            RoundedIconBtn(Icon(Icons.remove),(){})

          ],
        ),
      ),
    );
  }
}

class ColorBox extends StatelessWidget {
  final Color color;
  final bool isSelected;

  const ColorBox(this.color, this.isSelected);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(right: 3),
      padding: EdgeInsets.all(3),
      height: 40,
      width: 40,
      decoration: BoxDecoration(
        shape: BoxShape.circle,
        border:
            Border.all(color: isSelected ? kPrimaryColor : Colors.transparent),
      ),
      child: DecoratedBox(
        decoration: BoxDecoration(shape: BoxShape.circle, color: color),
      ),
    );
  }
}
