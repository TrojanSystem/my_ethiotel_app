import 'package:flutter/material.dart';

class LoginFormClassPassword extends StatefulWidget {
  LoginFormClassPassword({
    Key? key,
    required this.password,
    required this.passwordNode,

  }) : super(key: key);

  final TextEditingController password;

  final FocusNode passwordNode;

  @override
  State<LoginFormClassPassword> createState() => _LoginFormClassPasswordState();
}

class _LoginFormClassPasswordState extends State<LoginFormClassPassword> {
  bool showPassword = false;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          border: Border.all(
            color: Colors.black.withOpacity(0.5),
          ),
          borderRadius: BorderRadius.circular(5)),
      margin: const EdgeInsets.only(
          left: 15, right: 15, top: 20),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Padding(
            padding: EdgeInsets.only(left: 16.0, top: 8),
            child: Text(
              'Password',
              style: TextStyle(
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 16.0),
            child: TextFormField(
              controller: widget.password,
              focusNode: widget.passwordNode,
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
                hintText: "Password",
                border: InputBorder.none,
                suffixIcon: IconButton(
                  onPressed: () {
                    setState(() {
                      showPassword = !showPassword;
                    });
                  },
                  icon: Icon(
                    showPassword
                        ? Icons.visibility
                        :Icons.visibility_off ,
                  ),
                  color: Colors.green,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
