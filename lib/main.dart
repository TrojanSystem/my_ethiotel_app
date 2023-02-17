import 'package:flutter/material.dart';
import 'package:my_ethiotel_app/screen/home_page_screen.dart';


void main() {
  runApp(const MyEthiotelApp());
}

class MyEthiotelApp extends StatelessWidget {
  const MyEthiotelApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'My Ethiotel',
      theme: ThemeData(

        primarySwatch: Colors.blue,
      ),
      home:HomePageScreen(),
      debugShowCheckedModeBanner: false,
    );
  }
}
