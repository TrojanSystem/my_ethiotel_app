import 'package:flutter/material.dart';
import 'package:my_ethiotel_app/widgets/right_side_drawer.dart';

import '../widgets/body_sim_data_slide.dart';
import '../widgets/splash_screen_widgets.dart';

class MainScreen extends StatelessWidget {
  const MainScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          automaticallyImplyLeading: false,
          iconTheme: const IconThemeData(color: Colors.black, size: 35),
          backgroundColor: Colors.white,
          elevation: 0,
          toolbarHeight: 110,
          flexibleSpace: Container(
            margin: const EdgeInsets.only(right: 110, left: 20, top: 20),
            decoration: const BoxDecoration(
              image: DecorationImage(
                alignment: Alignment.centerLeft,
                fit: BoxFit.contain,
                image: AssetImage('assets/images/ethiotelecom.png'),
              ),
            ),
          ),
        ),
        body: SafeArea(
          child: Stack(
            children: [
              Container(
                decoration: const BoxDecoration(
                  image: DecorationImage(
                    fit: BoxFit.cover,
                    image: AssetImage('assets/images/background.jpg'),
                  ),
                ),
              ),
              BodySimDataSlide(),
              buildHomePageProfile(context),
              Positioned(
                  bottom: 0,
                  child: Container(
                    color: Colors.blue,
                    width: MediaQuery.of(context).size.width,
                    height: MediaQuery.of(context).size.height * 0.15,
                  ),)
            ],
          ),
        ),
        endDrawer: const RightSideDrawer());
  }
}
