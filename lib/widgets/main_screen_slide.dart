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
  final ScrollController _controller = ScrollController();
  List<Widget> serviceWidget = [
    Container(
      child: Text('1'),
      width: 100,
      margin: EdgeInsets.only(left: 10, right: 10),
      height: 100,
      color: Colors.yellow,
    ),
    Container(
      child: Text('10'),
      width: 100,
      height: 100,
      margin: EdgeInsets.only(left: 10, right: 10),
      color: Colors.yellow,
    ),
    Container(
      child: Text('3'),
      width: 100,
      height: 100,
      margin: EdgeInsets.only(left: 10, right: 10),
      color: Colors.yellow,
    ),
    Container(
      child: Text('4'),
      width: 100,
      height: 100,
      margin: EdgeInsets.only(left: 10, right: 10),
      color: Colors.yellow,
    ),
    Container(
      child: Text('10'),
      width: 100,
      height: 100,
      color: Colors.yellow,
      margin: EdgeInsets.only(left: 10, right: 10),
    ),
    Container(
      child: Text('6'),
      width: 100,
      height: 100,
      margin: EdgeInsets.only(left: 10, right: 10),
      color: Colors.yellow,
    ),
    Container(
      child: Text('7'),
      width: 100,
      height: 100,
      margin: EdgeInsets.only(left: 10, right: 10),
      color: Colors.yellow,
    ),
    Container(
      child: Text('8'),
      width: 100,
      height: 100,
      margin: EdgeInsets.only(left: 10, right: 10),
      color: Colors.yellow,
    ),
    Container(
      child: Text('9'),
      width: 100,
      height: 100,
      margin: EdgeInsets.only(left: 10, right: 10),
      color: Colors.yellow,
    )
  ];

  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: <Widget>[
        ListView.builder(controller:_controller,
          scrollDirection: Axis.horizontal,
          itemCount: 9,
          itemBuilder: (context, index) => Container(
            child: Text('9'),
            width: 100,
            height: 100,
            margin: EdgeInsets.only(left: 10, right: 10),
            color: Colors.yellow,
          ),
        ),
        Positioned(
          left: 0,
          child: ElevatedButton(
            onPressed: () { _controller.jumpTo(120} ,
            child: const Text('←'),
          ),
        ),
        Positioned(
          right: 0,
          child: ElevatedButton(
            onPressed: () {_controller.animateTo(1
 ,
              duration: Duration(seconds: 2),
              curve: Curves.fastOutSlowIn,
            );} ,
            child: const Text('→'),
          ),
        ),
      ],
    );
  }
}
