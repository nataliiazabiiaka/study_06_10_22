import 'package:flutter/material.dart';

class Product {
  final String image, title, description;
  final int price, size, id;
  final Color color;

  Product(
    this.id,
    this.image,
    this.title,
    this.price,
    this.description,
    this.size,
    this.color,
  );
}

const dummyText =
    "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since. When an unknown printer took a galley.";

List<Product> products = [
  Product(1, 'assets/images/bag_1.png', 'Office Code', 234, dummyText, 12,
      Color(0xFF3D82AE)),
  Product(2, 'assets/images/2.jpeg', 'Belt Bag', 234, dummyText, 8,
      Color(0xFFD3A984)),
  Product(3, 'assets/images/3.jpeg', 'Hang Top', 234, dummyText, 10,
      Color(0xFF989493)),
  Product(4, 'assets/images/4.jpeg', 'Old Fashion', 234, dummyText, 11,
      Color(0xFFE6B398)),
  Product(5, 'assets/images/5.webp', 'Office Code', 234, dummyText, 12,
      Color(0xFFFB7883)),
  Product(6, 'assets/images/6.jpeg', 'Office Code', 234, dummyText, 12,
      Color(0xFFAEEAE)),
];
