import 'package:flutter/material.dart';
import 'package:study_06_10_22/models/Product.dart';
import 'package:study_06_10_22/screens/details/components/body.dart';

import '../../constants.dart';

class DetailsScreen extends StatelessWidget {
  final Product product;

  const DetailsScreen({super.key, required this.product});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: product.color,
      appBar: buildAppBar(context),
      body: Body(product: product, key: null,),
    );
  }

  AppBar buildAppBar(BuildContext context){
     return AppBar(
        backgroundColor: product.color,
        elevation: 0,
        actions: <Widget> [
          IconButton(
            icon: const Icon(Icons.arrow_back,
              color: Colors.white,
            ),
            onPressed: () => Navigator.pop(context),
          ),
          const Spacer(),
          IconButton(
            icon: const Icon(Icons.search,
              color: kTextColor,
            ),
            onPressed: () {},
          ),
          IconButton(
            icon: const Icon(Icons.shopping_basket,
              color: kTextColor,
            ),
            onPressed: () {},
          ),
          const SizedBox(width: kDefaultPaddin/2,)
        ],
      );
  }
}