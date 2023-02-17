import 'package:flutter/material.dart';

import '../widgets/body_sim_data_slide.dart';
import '../widgets/splash_screen_widgets.dart';
class MainScreen extends StatelessWidget {
  const MainScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Stack(
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
    );
  }
}
