import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:my_ethiotel_app/widgets/service_slide.dart';

import '../widgets/splash_screen_widgets.dart';

class SplashScreen extends StatelessWidget {
  SplashScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final _width = MediaQuery.of(context).size.width;
    final _height = MediaQuery.of(context).size.height;
    return Scaffold(
      body: SafeArea(
        child: SizedBox(
          height: _height,
          child: Column(
            children: [
              Expanded(
                flex: 2,
                child: Stack(
                  children: [
                    Container(
                      decoration: const BoxDecoration(
                        image: DecorationImage(
                          fit: BoxFit.fitHeight,
                          image: AssetImage("assets/images/Man.jpeg"),
                        ),
                      ),
                    ),
                    splashScreenWidgets(_height, _width,
                        "Discover Our Services", {"right": 20, "top": 20}),
                    splashScreenWidgets(
                        _height, _width, "Language", {"right": 20, "top": 70}),
                  ],
                ),
              ),
              Expanded(
                flex: 3,
                child: Column(
                  mainAxisSize: MainAxisSize.max,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Expanded(
                        flex: 1,
                        child: Container(
                          height: 60,
                          width: MediaQuery.of(context).size.width * 0.5,
                          decoration: const BoxDecoration(
                            image: DecorationImage(
                              fit: BoxFit.contain,
                              image: AssetImage(
                                'assets/images/download.jpeg',
                              ),
                            ),
                          ),
                        )),
                    Expanded(
                      flex: 3,
                      child: Slide(),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(bottom: 28.0),
                      child: SizedBox(
                        width: 250,
                        child: ElevatedButton(
                          onPressed: () {},
                          style: ElevatedButton.styleFrom(
                            backgroundColor: Colors.green, shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(20.0)
                          ), // This is what you need!
                          ),
                          child: const Text('Get started'),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
