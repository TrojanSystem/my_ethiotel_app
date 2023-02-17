import 'package:flutter/material.dart';
import 'package:my_ethiotel_app/screen/account_profile.dart';
import 'package:my_ethiotel_app/screen/main_screen.dart';
import 'package:my_ethiotel_app/screen/promotions_screen.dart';
import 'package:my_ethiotel_app/screen/shop_location_screen.dart';


class HomePageScreen extends StatefulWidget {
  HomePageScreen({Key? key}) : super(key: key);

  @override
  State<HomePageScreen> createState() => _HomePageScreenState();
}

class _HomePageScreenState extends State<HomePageScreen> {
  int screenIndex = 0;

  List screenPage = const [
    MainScreen(),
    PromotionsScreen(),
    ShopLocationScreen(),
    AccountProfile(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: screenPage[screenIndex],
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        currentIndex: screenIndex,
        onTap: (currentIndex) {
          setState(() {
            screenIndex = currentIndex;
          });
        },
        // Fixed
        backgroundColor: Colors.green[800],
        // <-- This works for fixed
        selectedItemColor: Colors.white,
        unselectedItemColor: Colors.grey,
        items: const [
          BottomNavigationBarItem(
              icon: Icon(Icons.home_outlined,size: 35,), label: 'Home'),
          BottomNavigationBarItem(
              icon: Icon(Icons.card_giftcard_outlined,size: 35,), label: 'Promotions'),
          BottomNavigationBarItem(
              icon: Icon(Icons.location_on_outlined,size: 35,), label: 'Shop Location'),
          BottomNavigationBarItem(icon: Icon(Icons.person_outline_outlined,size: 35,), label: 'Account'),
        ],
      ),
    );
  }
}
