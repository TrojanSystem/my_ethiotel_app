import 'package:flutter/material.dart';
import 'package:my_ethiotel_app/screen/login_page.dart';
import 'package:my_ethiotel_app/widgets/LoginFormClassMobile.dart';
import 'package:my_ethiotel_app/widgets/splash_screen_widgets.dart';

import '../widgets/button.dart';
import '../widgets/constants.dart';
import 'home_page_screen.dart';

class RegistrationPage extends StatefulWidget {
  RegistrationPage({Key? key}) : super(key: key);

  @override
  State<RegistrationPage> createState() => _RegistrationPageState();
}

class _RegistrationPageState extends State<RegistrationPage> {
  final _loginFormKey = GlobalKey<FormState>();
  bool isChecked = false;
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

  @override
  Widget build(BuildContext context) {
    final _width = MediaQuery.of(context).size.width;
    final _height = MediaQuery.of(context).size.height;
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: SingleChildScrollView(
          child: SizedBox(
            height: _height,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
              Expanded(
              flex: 1,
              child: buildBanner(),),
                Expanded(
                  flex: 5,
                  child: Container(
                    padding: const EdgeInsets.only(top: 30),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const Padding(
                          padding: EdgeInsets.only(left: 16.0),
                          child: Text(
                            'Sign Up',
                            style: kSignUp,
                          ),
                        ),
                        const SizedBox(
                          height: 10,
                        ),
                        const Padding(
                          padding: EdgeInsets.only(left: 16.0),
                          child: Text(
                            'Please Use Mobile Number',
                            style: kUseMobile,
                          ),
                        ),
                        const SizedBox(
                          height: 100,
                        ),
                        Form(
                          key: _loginFormKey,
                          child: LoginFormClass(
                              phoneNumber: phoneNumber,
                              phoneNumberNode: phoneNumberNode,
                              passwordNode: passwordNode),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Row(
                            children: [
                              Checkbox(
                                value: isChecked,
                                onChanged: (value) {
                                  setState(() {
                                    isChecked = value!;
                                  });
                                },
                              ),
                              const Text(
                                'Accept the terms & conditions',
                                style: TextStyle(
                                  decoration: TextDecoration.underline,
                                ),
                              ),
                            ],
                          ),
                        ),
                        const SizedBox(
                          height: 150,
                        ),
                        Button(
                            buttonColor: Colors.blue,
                            buttonLabel: "Sign Up",
                            buttonFunction: () {Navigator.of(context).pushReplacement(
                              MaterialPageRoute(
                                builder: (ctx) =>  HomePageScreen(),
                              ),
                            );}),
                        buildExistingAccountChecker(
                            action: 'Login',
                            label: "Already have an account?",
                            color: Colors.blue,
                            textFuction: () {
                              Navigator.of(context).push(
                                MaterialPageRoute(
                                  builder: (context) => LoginPage(),
                                ),
                              );
                            }),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }


}
