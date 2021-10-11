import 'package:ecommerce_shopping/models/product.dart';
import 'package:ecommerce_shopping/screens/details/compenents/body.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import 'compenents/custom_app_bar.dart';

class DetailsScreen extends StatelessWidget {
 final Product argument;

 const DetailsScreen( this.argument);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Rate(argument.rating),
      ),
      body: Body(argument),
    );
  }
}

class ProductDetailsArguments{
  final Product product;

  ProductDetailsArguments(this.product);
}



