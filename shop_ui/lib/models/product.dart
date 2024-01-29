import 'package:flutter/material.dart';

class Product {
  final int id;
  final String image, title, description;
  final int price;
  final Color bgColor;
  int selectedColorIndex;
  List<Color> colors;
  bool favorite;
  Product({
    required this.id,
    required this.image,
    required this.title,
    required this.price,
    this.selectedColorIndex = 0,
    this.colors = const [Colors.black],
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
        "A Hanley shirt a collarless puliover shirt. by a round neckline and a placket about 3 to 5 inches (8 to 13 cm) long and usually having 2-5 buttons",
    colors: [
      Colors.black,
      Color.fromARGB(255, 255, 254, 218),
      Color.fromARGB(255, 124, 190, 48).withOpacity(.8),
      Colors.blue.withOpacity(.8)
    ],
    selectedColorIndex: 1
  ),
  Product(
    id: 2,
    image: "assets/images/product_1.png",
    title: "Casual Henley Shirts",
    price: 99,
    description:
        "A Hanley shirt a collarless puliover shirt. by a round neckline and a placket about 3 to 5 inches (8 to 13 cm) long and usually having 2-5 buttons",
    colors: [
      Color.fromARGB(234, 0, 0, 61),
      Colors.amber.withOpacity(.3),
      Colors.teal.withOpacity(.2),
      Color.fromARGB(255, 233, 9, 58).withOpacity(.6)
    ],
    selectedColorIndex: 0
  ),
  Product(
    id: 3,
    image: "assets/images/product_2.png",
    title: "Curved Hem Shirts",
    price: 180,
    bgColor: const Color(0xFFF8FEFB),
    description:
        "A Hem shirt a collarless puliover shirt. by a round neckline and a placket about 5 to 5 inches (4 to 18 cm) long and usually having 2-3 buttons",
    colors: [
      const Color.fromARGB(137, 255, 7, 7),
      Colors.deepOrangeAccent.withOpacity(.3),
      Color.fromARGB(255, 10, 73, 1).withOpacity(.9),
      const Color.fromARGB(255, 26, 28, 29).withOpacity(.8)
    ],
    selectedColorIndex: 2
  ),
  Product(
    id: 4,
    image: "assets/images/product_3.png",
    title: "Casual Nolin",
    price: 149,
    bgColor: const Color(0xFFEEEEED),
    description:
        "A Nolin shirt a collarless puliover shirt. by a round neckline and a placket about 5 to 5 inches (4 to 18 cm) long and usually having 2-3 buttons",
    colors: [
      Colors.black54,
      Colors.deepOrangeAccent.withOpacity(.9),
      Color.fromARGB(255, 48, 82, 9).withOpacity(.9),
      Colors.blue.withOpacity(.9)
    ],
    selectedColorIndex: 2
  ),
];
