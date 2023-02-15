import 'package:flutter/material.dart';

import 'LoginFormClassMobile.dart';
import 'LoginFormClassPassword.dart';
class LoginPageFormBody extends StatelessWidget {
  const LoginPageFormBody({
    Key? key,
    required GlobalKey<FormState> loginFormKey,
    required this.phoneNumber,
    required this.phoneNumberNode,
    required this.passwordNode,
    required this.password,
  }) : _loginFormKey = loginFormKey, super(key: key);

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
            const Padding(
              padding: EdgeInsets.fromLTRB(18.0, 18, 8, 8),
              child: Text(
                'I forgot my password',
                style: TextStyle(
                  color: Colors.orange,
                ),
              ),
            ),
            Container(
              margin: const EdgeInsets.only(left: 40, top: 10),
              width: 300,
              height: 50,
              child: ElevatedButton(
                onPressed: () {},
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.green,
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(
                          20.0)), // This is what you need!
                ),
                child: const Text(
                  'Sign In',
                  style: TextStyle(
                    fontSize: 18,
                  ),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.fromLTRB(18, 8, 8, 8),
              child: Row(
                children: [
                  const Text("Don't have account?"),
                  TextButton(
                    onPressed: () {},
                    child: const Text(
                      'Sign Up',
                      style: TextStyle(
                        color: Colors.green,
                      ),
                    ),
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}