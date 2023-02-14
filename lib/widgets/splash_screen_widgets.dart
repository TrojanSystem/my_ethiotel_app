import 'package:flutter/material.dart';
Widget splashScreenWidgets(double _height, double _width, String title,Map position) {
  return Positioned(
    right: double.parse((position['right']).toString()),
    top: double.parse((position['top']).toString()),
    child: Container(
      height: _height * 0.05,
      width: _width * 0.45,
      decoration: BoxDecoration(
        color: Colors.grey.shade300,
        border: Border.all(
          width: 2,
          color: Colors.green,
        ),
        borderRadius: const BorderRadius.all(
          Radius.circular(20),
        ),
      ),
      child: Center(
        child: Text(
          title,
          style: const TextStyle(
            color: Colors.blue,
            fontWeight: FontWeight.bold,
          ),
          textAlign: TextAlign.center,
        ),
      ),
    ),
  );
}

