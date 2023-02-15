import 'package:flutter/material.dart';
import 'package:my_ethiotel_app/screen/forgot_password_screen.dart';
import 'package:my_ethiotel_app/screen/registration_page.dart';
import 'package:my_ethiotel_app/widgets/splash_screen_widgets.dart';

import 'LoginFormClassMobile.dart';
import 'LoginFormClassPassword.dart';
import 'button.dart';

class LoginPageFormBody extends StatelessWidget {
  const LoginPageFormBody({
    Key? key,
    required GlobalKey<FormState> loginFormKey,
    required this.phoneNumber,
    required this.phoneNumberNode,
    required this.passwordNode,
    required this.password,
  })  : _loginFormKey = loginFormKey,
        super(key: key);

  final GlobalKey<FormState> _loginFormKey;
  final TextEditingController phoneNumber;
  final FocusNode phoneNumberNode;
  final FocusNode passwordNode;
  final TextEditingController password;

  @override
  Widget build(BuildContext context) {
    return Expanded(
      flex: 3,
      child: Form(
        key: _loginFormKey,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            LoginFormClass(
              phoneNumber: phoneNumber,
              phoneNumberNode: phoneNumberNode,
              passwordNode: passwordNode,
            ),
            LoginFormClassPassword(
              password: password,
              passwordNode: passwordNode,
            ),
            Padding(
              padding: const EdgeInsets.fromLTRB(18.0, 18, 8, 8),
              child: TextButton(
                onPressed: () {
                  Navigator.of(context).push(
                    MaterialPageRoute(
                      builder: (ctx) => const ForgotPasswordScreen(),
                    ),
                  );
                },
                child: const Text(
                  'I forgot my password',
                  style: TextStyle(
                    color: Colors.orange,
                  ),
                ),
              ),
            ),
            Button(
                buttonColor: Colors.green,
                buttonLabel: "Sign In",
                buttonFunction: () {}),
            buildExistingAccountChecker(
                action: 'Sign Up',
                label: "Don't have account?",
                color: Colors.green,
                textFuction: () {
                  Navigator.of(context).push(
                    MaterialPageRoute(
                      builder: (context) => RegistrationPage(),
                    ),
                  );
                }),
          ],
        ),
      ),
    );
  }
}
