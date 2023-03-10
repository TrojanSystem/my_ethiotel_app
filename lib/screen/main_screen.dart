import 'package:flutter/material.dart';
import 'package:my_ethiotel_app/widgets/main_screen_slide.dart';
import 'package:my_ethiotel_app/widgets/right_side_drawer.dart';

import '../widgets/body_sim_data_slide.dart';
import '../widgets/widget_collection.dart';

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
                child: SizedBox(
                //  margin: const EdgeInsets.only(bottom: 10,left: 10,right: 10),
                  width: MediaQuery.of(context).size.width,
                  height: MediaQuery.of(context).size.height * 0.15,
                  child: const MainScreenSlider(),
                ),
              )
            ],
          ),
        ),
        endDrawer: const RightSideDrawer());
  }
}
