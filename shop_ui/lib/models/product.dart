import 'package:flutter/material.dart';

class Product {
  final int id;
  final String image, title, description;
  final int price;
  final Color bgColor;
  bool favorite;
  Product({
    required this.id,
    required this.image,
    required this.title,
    required this.price,
    this.description = "",
    this.favorite = false,
    this.bgColor = const Color(0xFFEFEFF2),
  });
}

List<Product> products = [
  Product(
      id: 1,
      image: "assets/images/product_0.png",
      title: "Long Sleeve Shirts",
      price: 165,
      bgColor: const Color(0xFFFEFBF9),
      description:
          "A Hanley shirt a collarless puliover shirt. by a round neckline and a placket about 3 to 5 inches (8 to 13 cm) long and usually having 2-5 buttons"),
  Product(
      id: 2,
      image: "assets/images/product_1.png",
      title: "Casual Henley Shirts",
      price: 99,
      description:
          "A Hanley shirt a collarless puliover shirt. by a round neckline and a placket about 3 to 5 inches (8 to 13 cm) long and usually having 2-5 buttons"),
  Product(
      id: 3,
      image: "assets/images/product_2.png",
      title: "Curved Hem Shirts",
      price: 180,
      bgColor: const Color(0xFFF8FEFB),
      description:
          "A Hem shirt a collarless puliover shirt. by a round neckline and a placket about 5 to 5 inches (4 to 18 cm) long and usually having 2-3 buttons"),
  Product(
    id: 4,
    image: "assets/images/product_3.png",
    title: "Casual Nolin",
    price: 149,
    bgColor: const Color(0xFFEEEEED),
    description:
        "A Nolin shirt a collarless puliover shirt. by a round neckline and a placket about 5 to 5 inches (4 to 18 cm) long and usually having 2-3 buttons",
  ),
];
