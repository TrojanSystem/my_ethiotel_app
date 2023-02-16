import 'package:flutter/material.dart';
import 'package:my_ethiotel_app/widgets/body_sim_data_slide.dart';

import '../widgets/splash_screen_widgets.dart';

class HomePageScreen extends StatelessWidget {
  const HomePageScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Container(
            decoration: const BoxDecoration(
              image: DecorationImage(
                fit: BoxFit.fitHeight,
                image: AssetImage('assets/images/background.jpg'),
              ),
            ),
          ),
          BodySimDataSlide(),
          ethioTelecom(),
          buildHomePageDrawer(),
          buildHomePageProfile(context),

        ],
      ),
    );
  }






}
