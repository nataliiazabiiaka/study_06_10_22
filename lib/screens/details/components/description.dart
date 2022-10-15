import 'package:flutter/material.dart';
import 'package:study_06_10_22/models/Product.dart';
import '../../../constants.dart';

class Description extends StatelessWidget{

  final Product product;
  const Description({super.key, required this.product});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(
          vertical: kDefaultPaddin),
      child: Text(product.description,
        style: TextStyle(height: 1.5),
      ),
    );
  }
}