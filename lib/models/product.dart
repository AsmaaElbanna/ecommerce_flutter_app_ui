import 'package:flutter/material.dart';

class Product {
  final int? id;
  final String title, description;
  final List<String> images;
  final List<Color> colors;
  final double price, rating;
  final isFavorite, isPopular;

  Product(this.id,this.title, this.description, this.images, this.colors, this.price,
      this.rating, this.isFavorite, this.isPopular);
}

// Our demo Products

List<Product> demoProducts = [
  Product(0,
      'Wireless Controller for PS4™',
      description,
      [
        "assets/images/ps4_console_white_1.png",
        "assets/images/ps4_console_white_2.png",
        "assets/images/ps4_console_white_3.png",
        "assets/images/ps4_console_white_4.png",
      ],
      [
        Color(0xFFF6625E),
        Color(0xFF836DB8),
        Color(0xFFDECB9C),
        Colors.white,
      ],
      64.99,
      4.8,
      true,
      true),
  Product(1,
      'Nike Sport White - Man Pant',
      description,
      ["assets/images/Image Popular Product 2.png"],
      [
        Color(0xFFF6625E),
        Color(0xFF836DB8),
        Color(0xFFDECB9C),
        Colors.white,
      ],
      64.99,
      4.8,
      false,
      true),
  Product(2,
      'Gloves XC Omega - Polygon',
      description,
      ["assets/images/glap.png"],
      [
        Color(0xFFF6625E),
        Color(0xFF836DB8),
        Color(0xFFDECB9C),
        Colors.white,
      ],
      64.99,
      4.8,
      true,
      true),
  Product(3,
      'Logitech Head phone',
      description,
      ["assets/images/wireless headset.png"],
      [
        Color(0xFFF6625E),
        Color(0xFF836DB8),
        Color(0xFFDECB9C),
        Colors.white,
      ],
      20.20,
      4.8,
      false,
      true),
];

const String description =
    "Wireless Controller for PS4™ gives you what you want in your gaming from over precision control your games to sharing …";
