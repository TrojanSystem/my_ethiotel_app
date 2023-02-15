import 'package:flutter/material.dart';

import 'constants.dart';
Widget buildBanner() {
  return  Container(
      decoration: BoxDecoration(
        border: Border(
          bottom: BorderSide(
            color: Colors.grey.withOpacity(0.5),
            width: 2,
          ),
        ),
        image: const DecorationImage(
          alignment: Alignment.centerLeft,
          fit: BoxFit.contain,
          image: AssetImage('assets/images/images.jpeg'),
        ),
      ),

  );
}
Widget buildExistingAccountChecker(
    {required String label, required String action,required Color color,required VoidCallback textFuction}) {
  return Padding(
    padding: const EdgeInsets.fromLTRB(18, 8, 8, 8),
    child: Row(
      children: [
        Text(label),
        TextButton(
          onPressed:textFuction,
          child: Text(
            action,
            style:  TextStyle(
              color: color,
              fontWeight: FontWeight.bold
            ),
          ),
        )
      ],
    ),
  );
}

Widget splashScreenWidgets(
    double _height, double _width, String title, Map position) {
  return Positioned(
    right: double.parse((position['right']).toString()),
    top: double.parse((position['top']).toString()),
    child: Container(
      height: _height * 0.05,
      width: _width * 0.45,
      decoration: BoxDecoration(
        color: Colors.white,
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
          style: kSplashWidget,
          textAlign: TextAlign.center,
        ),
      ),
    ),
  );
}

Widget splashScreenWidgetsUnPositioned(
    double _height, double _width, String title, Map position) {
  return Container(
    margin: EdgeInsets.only(
      right: double.parse((position['right']).toString()),
      top: double.parse((position['top']).toString()),
    ),
    height: _height * 0.05,
    width: _width * 0.45,
    decoration: BoxDecoration(
      color: Colors.white,
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
        style: kSplashWidget,
        textAlign: TextAlign.center,
      ),
    ),
  );
}
