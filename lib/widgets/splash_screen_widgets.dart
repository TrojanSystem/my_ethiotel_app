import 'package:flutter/material.dart';

import 'constants.dart';
Positioned buildHomePageDrawer() {
  return Positioned(
    right: 10,
    top: 60,
    child: IconButton(
      onPressed: () {},
      icon: const Icon(
        Icons.menu,
        size: 35,
        color: Colors.black,
      ),
    ),
  );
}
Positioned ethioTelecom() {
  return Positioned(
    left: 10,
    top: 10,
    child: Container(
      width: 220,
      height: 150,
      decoration: const BoxDecoration(
        image: DecorationImage(
          alignment: Alignment.centerLeft,
          fit: BoxFit.cover,
          image: AssetImage('assets/images/images.jpeg'),
        ),
      ),
    ),
  );
}
Positioned buildHomePageProfile(BuildContext context) {
  return Positioned(
    top: 150,
    left: 55,
    child: SizedBox(
      width: MediaQuery.of(context).size.width * 0.7,
      height: MediaQuery.of(context).size.height * 0.25,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Container(
            width: 100,
            height: 100,
            decoration: BoxDecoration(
              color: Colors.white,
              border: Border.all(color: Colors.blue, width: 2),
              borderRadius: BorderRadius.circular(150),
              image: const DecorationImage(
                image: AssetImage('assets/images/pp.jpg'),
              ),
            ),
          ),
          const Text(
            'Surafel Terefe',
            style: TextStyle(
              fontWeight: FontWeight.w900,
              fontSize: 20,
            ),
          ),
          Container(
            width: 110,
            height: 30,
            decoration: BoxDecoration(
                border: Border.all(
                  color: Colors.blue,
                  width: 2,
                ),
                borderRadius: BorderRadius.circular(30)),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,

              children:const [
                Text(
                  '912654975',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    color: Colors.blue,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                Icon(
                  Icons.chevron_right_rounded,
                  color: Colors.blue,

                ),
              ],
            ),
          )
        ],
      ),
    ),
  );
}
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
