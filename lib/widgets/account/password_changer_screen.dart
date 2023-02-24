import 'package:flutter/material.dart';
import 'package:my_ethiotel_app/widgets/button.dart';

import '../widget_collection.dart';

class SetNewPassword extends StatefulWidget {
  const SetNewPassword({Key? key}) : super(key: key);

  @override
  State<SetNewPassword> createState() => _SetNewPasswordState();
}

class _SetNewPasswordState extends State<SetNewPassword> {
  final password = TextEditingController();
  final passwordNode = FocusNode();
  bool showPassword = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          buildScreensTitle(
            title: 'Set a New Password',
          ),
          const SizedBox(
            height: 50,
          ),
          buildPasswordChangerInput(
              title: 'Old Password', hintText: "Write here your old password"),
          buildPasswordChangerInput(
              title: 'Set a New Password',
              hintText: "Write here your new password"),
          buildPasswordChangerInput(
              title: 'Confirm Password', hintText: "Confirm your new password"),
          const SizedBox(
            height: 60,
          ),
          Button(
              buttonColor: Colors.blue,
              buttonLabel: "Change Password",
              buttonFunction: () {})
        ],
      ),
    );
  }

  Widget buildPasswordChangerInput({title, hintText}) {
    return Container(
      height: 100,
      decoration: BoxDecoration(
          border: Border.all(
            color: Colors.blue,
            width: 3,
          ),
          borderRadius: BorderRadius.circular(15)),
      margin: const EdgeInsets.only(left: 15, right: 15, top: 8),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.only(left: 16.0, top: 16),
            child: Text(
              title,
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 16.0),
            child: TextFormField(
              controller: password,
              focusNode: passwordNode,
              textInputAction: TextInputAction.go,
              obscureText: showPassword,
              obscuringCharacter: "*",
              keyboardType: TextInputType.text,
              validator: (value) {
                if (value!.isEmpty || value.length < 7) {
                  return "Please enter a valid password";
                } else {
                  return null;
                }
              },
              decoration: InputDecoration(
                hintText: hintText,
                border: InputBorder.none,
                suffixIcon: IconButton(
                  onPressed: () {
                    setState(() {
                      showPassword = !showPassword;
                    });
                  },
                  icon: Icon(
                    showPassword ? Icons.visibility : Icons.visibility_off,
                  ),
                  color: Colors.black,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
