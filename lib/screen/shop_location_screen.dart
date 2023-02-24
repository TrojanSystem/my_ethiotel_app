import 'package:flutter/material.dart';

import '../widgets/widget_collection.dart';
class ShopLocationScreen extends StatelessWidget {
  const ShopLocationScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Column(
        children: [
          buildScreensTitle(title: 'Shop Location'),
        ],
      ),
    );
  }
}
