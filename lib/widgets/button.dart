import 'package:flutter/material.dart';

class Button extends StatelessWidget {
  const Button(
      {super.key,
      required this.buttonColor,
      required this.buttonLabel,
      required this.buttonFunction});

  final String buttonLabel;
  final Color buttonColor;
  final VoidCallback buttonFunction;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(left: 20, top: 10),
      width: MediaQuery.of(context).size.width * 0.9,
      height: 50,
      child: ElevatedButton(
        onPressed: buttonFunction,
        style: ElevatedButton.styleFrom(
          backgroundColor: buttonColor,
          shape: RoundedRectangleBorder(
              borderRadius:
                  BorderRadius.circular(20.0)), // This is what you need!
        ),
        child: Text(
          buttonLabel,
          style: const TextStyle(
            fontSize: 18,
          ),
        ),
      ),
    );
  }
}
