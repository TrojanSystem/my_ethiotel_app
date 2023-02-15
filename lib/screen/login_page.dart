import 'package:flutter/material.dart';
import 'package:my_ethiotel_app/screen/splash_screen.dart';

import '../widgets/LoginFormClassMobile.dart';
import '../widgets/LoginFormClassPassword.dart';
import '../widgets/LoginPageFormBody.dart';
import '../widgets/constants.dart';
import '../widgets/splash_screen_widgets.dart';

class LoginPage extends StatefulWidget {
  LoginPage({Key? key}) : super(key: key);

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  bool isVisible = false;
  String dropdownvalue = ' ';

  // List of items in our dropdown menu
  var items = [
    'Amharic',
    'English',
    'Afaan Oromoo',
    'ትግርኛ',
    'Af Somali',
  ];

  Widget dropdownList() {
    return Container(
      width: 115,
      decoration: BoxDecoration(
        color: Colors.white,
        border: Border.all(
          color: Colors.black.withOpacity(0.4),
        ),
        boxShadow: [
          BoxShadow(
            color: Colors.black.withOpacity(0.1),
            blurRadius: 40,
            spreadRadius: 10,
          ),
        ],
      ),
      height: 210,
      child: ListView.separated(
          physics: const NeverScrollableScrollPhysics(),
          itemBuilder: (context, index) {
            return Padding(
              padding: const EdgeInsets.fromLTRB(18.0, 12, 8, 12),
              child: Text(
                items[index],
                textAlign: TextAlign.center,
                style: TextStyle(fontSize: 13),
              ),
            );
          },
          separatorBuilder: (context, index) => Container(
                margin: const EdgeInsets.only(left: 5, right: 5),
                height: 1,
                color: Colors.black.withOpacity(0.2),
              ),
          itemCount: 5),
    );
  }

  final _loginFormKey = GlobalKey<FormState>();
  final phoneNumber = TextEditingController();
  final phoneNumberNode = FocusNode();
  final passwordNode = FocusNode();
  final password = TextEditingController();

  @override
  void dispose() {
    phoneNumber.dispose();
    password.dispose();
    phoneNumberNode.dispose();
    passwordNode.dispose();
    super.dispose();
  }

  bool showPassword = false;

  @override
  Widget build(BuildContext context) {
    final _width = MediaQuery.of(context).size.width;
    final _height = MediaQuery.of(context).size.height;
    List iconImage = [
      'assets/images/facebook.png',
      'assets/images/youtube.png',
      'assets/images/linkedin.png',
      'assets/images/instagram.png',
      'assets/images/twitter.png',
      'assets/images/telegram.png',
    ];
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: SingleChildScrollView(
          child: Container(
            height: _height * 0.968,
            child: Stack(
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    buildLoginPageHeaderSection(context, _height, _width),
                    LoginPageFormBody(
                        loginFormKey: _loginFormKey,
                        phoneNumber: phoneNumber,
                        phoneNumberNode: phoneNumberNode,
                        passwordNode: passwordNode,
                        password: password),
                    Expanded(
                      flex: 1,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          const Padding(
                            padding: EdgeInsets.fromLTRB(18, 8.0, 8, 8),
                            child: Text('Follow us on social media'),
                          ),
                          Container(
                            margin: const EdgeInsets.all(8),
                            width: MediaQuery.of(context).size.width,
                            height: 40,
                            child: ListView.builder(
                              scrollDirection: Axis.horizontal,
                              physics: const NeverScrollableScrollPhysics(),
                              itemBuilder: (context, index) => Container(
                                margin: const EdgeInsets.only(left: 8),
                                width: 30,
                                height: 30,
                                decoration: BoxDecoration(
                                  image: DecorationImage(
                                    image: AssetImage(iconImage[index]),
                                  ),
                                ),
                              ),
                              itemCount: iconImage.length,
                            ),
                          )
                        ],
                      ),
                    ),
                  ],
                ),
                isVisible
                    ? Positioned(
                        top: 120,
                        right: 10,
                        child: dropdownList(),
                      )
                    : Container()
              ],
            ),
          ),
        ),
      ),
    );
  }

  Expanded buildLoginPageHeaderSection(
      BuildContext context, double _height, double _width) {
    return Expanded(
      flex: 2,
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Padding(
                padding: const EdgeInsets.only(left: 8.0),
                child: Container(
                  width: MediaQuery.of(context).size.width * 0.4,
                  height: 100,
                  decoration: const BoxDecoration(
                    image: DecorationImage(
                      fit: BoxFit.contain,
                      image: AssetImage(
                        'assets/images/download.jpeg',
                      ),
                    ),
                  ),
                ),
              ),
              Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(right: 8.0),
                    child: splashScreenWidgetsUnPositioned(_height, _width,
                        "Discover Our Services", {"right": 5, "top": 40}),
                  ),
                  GestureDetector(
                    onTap: () {
                      setState(() {
                        isVisible = !isVisible;
                      });
                    },
                    child: Padding(
                      padding: const EdgeInsets.only(top: 10),
                      child: Row(
                        children: const [
                          Text(
                            'Language',
                            style: kSplashWidget,
                          ),
                          Icon(Icons.arrow_drop_down),
                        ],
                      ),
                    ),
                  )
                ],
              ),
            ],
          ),
          Padding(
            padding: const EdgeInsets.fromLTRB(8.0, 20, 8, 8),
            child: Text(
              'Welcome to My Ethiotel',
              style: TextStyle(
                color: Colors.blue[700],
                fontWeight: FontWeight.w700,
                fontSize: 28,
              ),
            ),
          )
        ],
      ),
    );
  }
}
