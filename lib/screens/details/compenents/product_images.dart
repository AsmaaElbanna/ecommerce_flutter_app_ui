import 'package:ecommerce_shopping/models/product.dart';
import 'package:flutter/material.dart';

import '../../../constant.dart';

class ProductImages extends StatefulWidget {
final Product product;

  const ProductImages(this.product);

  @override
  _ProductImagesState createState() => _ProductImagesState();
}

class _ProductImagesState extends State<ProductImages> {
  int selectedImage = 0;
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(
          height: 240,
          child: AspectRatio(
            aspectRatio: 1,
            child: Image.asset(widget.product.images[selectedImage],),
          ),
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ...List.generate(widget.product.images.length, (index) => buildSmallPreview(index))
          ],
        )
      ],
    );
  }

  GestureDetector buildSmallPreview(int index){
    return  GestureDetector(
      onTap: (){
        setState(() {
          selectedImage= index;
        });
      },

      child: Container(
        padding: EdgeInsets.all(3),
        margin: EdgeInsets.only(right: 15),
        height: 45,
        width: 45,
        decoration: BoxDecoration(
            color: kPrimaryLightColor,
            borderRadius: BorderRadius.circular(10),
            border: Border.all(color: selectedImage == index ? kPrimaryColor : Colors.transparent )
        ),
        child: Image.asset(widget.product.images[index]),
      ),
    );
  }
}
