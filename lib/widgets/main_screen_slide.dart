import 'package:carousel_slider/carousel_controller.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';

import '../widget_tester.dart';

class MainScreenSlider extends StatefulWidget {
  const MainScreenSlider({super.key});

  @override
  State<StatefulWidget> createState() {
    return _MainScreenSliderState();
  }
}

class _MainScreenSliderState extends State<MainScreenSlider> {
  final CarouselController _controller = CarouselController();
  List<Widget> serviceWidget = [
    Container(child: Text('1'),
      width: 250,margin: const EdgeInsets.only(left: 10,right: 10),
      height: 100,
      color: Colors.yellow,
    ),
    Container(child: Text('10'),
      width: 250,
      height: 100,margin: const EdgeInsets.only(left: 10,right: 10),
      color: Colors.yellow,
    ),

  ];

  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: <Widget>[
        CarouselSlider(
          items: serviceWidget,
          options: CarouselOptions(disableCenter: true,
           viewportFraction: 0.25,
            height: 200,
            reverse:false
          ),
          carouselController: _controller,
        ),
        Positioned(
          left: 0,
          child: ElevatedButton(
            onPressed: () => _controller.previousPage(),
            child: const Text('←'),
          ),
        ),
        Positioned(
          right: 0,
          child: ElevatedButton(
            onPressed: () => _controller.nextPage(),
            child: const Text('→'),
          ),
        ),
      ],
    );
  }
}
