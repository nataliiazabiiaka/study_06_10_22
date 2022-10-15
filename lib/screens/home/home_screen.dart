import 'package:flutter/material.dart';
import 'package:study_06_10_22/constants.dart';
import 'package:study_06_10_22/screens/components/body.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: buildAppBar(),
      body: Body(),
    );
  }
      AppBar buildAppBar () {
      return AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        actions: <Widget> [
          IconButton(
            icon: const Icon(Icons.arrow_back,
            color: kTextColor,
            ),
            onPressed: () {},
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