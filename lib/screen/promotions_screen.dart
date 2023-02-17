import 'package:flutter/material.dart';

import '../widgets/splash_screen_widgets.dart';

class PromotionsScreen extends StatelessWidget {
  const PromotionsScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Column(
        children: [
          buildScreensTitle(title: 'Promotions'),
        ],
      ),
    );
  }



}
