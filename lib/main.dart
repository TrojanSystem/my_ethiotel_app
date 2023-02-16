import 'package:flutter/material.dart';

import 'package:my_ethiotel_app/screen/splash_screen.dart';
import 'package:my_ethiotel_app/widget_tester.dart';


void main() {
  runApp(const MyEthiotelApp());
}

class MyEthiotelApp extends StatelessWidget {
  const MyEthiotelApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(

        primarySwatch: Colors.blue,
      ),
      home:SplashScreen(),
      debugShowCheckedModeBanner: false,
    );
  }
}
