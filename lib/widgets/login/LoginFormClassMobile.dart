import 'package:flutter/material.dart';

class LoginFormClass extends StatelessWidget {
  const LoginFormClass({
    Key? key,
    required this.phoneNumber,
    required this.phoneNumberNode,
    required this.passwordNode,
  }) : super(key: key);

  final TextEditingController phoneNumber;
  final FocusNode phoneNumberNode;
  final FocusNode passwordNode;

  @override
  Widget build(BuildContext context) {
    return buildMobileInputForLogin(context);
  }

  Container buildMobileInputForLogin(BuildContext context) {
    return Container(
    decoration: BoxDecoration(
        border: Border.all(
          color: Colors.black.withOpacity(0.5),
        ),
        borderRadius: BorderRadius.circular(5)),
    margin: const EdgeInsets.only(
      left: 15,
      right: 15,
    ),
    child: Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const Padding(
          padding: EdgeInsets.only(left: 16.0, top: 8),
          child: Text(
            'Mobile Number',
            style: TextStyle(
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(left: 8.0),
          child: Row(
            children: [
              const Padding(
                padding: EdgeInsets.all(8.0),
                child: Text("+251"),
              ),
              Expanded(
                child: TextFormField(
                  controller: phoneNumber,
                  focusNode: phoneNumberNode,
                  textInputAction: TextInputAction.next,
                  onEditingComplete: () =>
                      FocusScope.of(context).requestFocus(passwordNode),
                  keyboardType: TextInputType.number,
                  decoration: const InputDecoration(
                    hintText: "Mobile Number",
                    border: InputBorder.none,
                  ),
                ),
              ),
            ],
          ),
        ),
      ],
    ),
  );
  }
}
