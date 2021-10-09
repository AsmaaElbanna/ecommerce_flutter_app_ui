import 'package:ecommerce_shopping/models/product.dart';

class Cart{
  final Product product;
  final int numOfItems;

  Cart(this.product, this.numOfItems);


}

List<Cart> demoCarts=[
  Cart(demoProducts[0], 3),
  Cart(demoProducts[1], 2),
  Cart(demoProducts[3], 1),
];