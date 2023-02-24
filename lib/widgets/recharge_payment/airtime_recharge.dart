import 'package:flutter/material.dart';

import '../button.dart';

class AirtimeRecharge extends StatelessWidget {
  AirtimeRecharge({
    super.key,
    required this.height,
    required this.isForOther,
    required this.title,
    required this.phoneNumber,
    required this.phoneNumberNode,
    required this.voucherNumber,
    required this.voucherNumberNode,
  });

  final TextEditingController voucherNumber;
  final FocusNode voucherNumberNode;
  final String title;
  final TextEditingController phoneNumber;
  final FocusNode phoneNumberNode;
  double height;
  bool isForOther = false;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: height,
      padding: const EdgeInsets.fromLTRB(8, 25, 8, 18),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.only(bottom: 25.0, left: 16),
            child: Text(
              title,
              style: const TextStyle(
                fontWeight: FontWeight.w900,
                fontSize: 22,
              ),
            ),
          ),
          Row(
            children: [
              Container(
                margin: const EdgeInsets.only(left: 15, right: 15, bottom: 30),
                width: 50,
                height: 50,
                decoration: const BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage('assets/images/incoming-call.png'),
                  ),
                ),
              ),
              const Text(
                '22.80 Birr',
                style: TextStyle(
                  fontWeight: FontWeight.w900,
                  fontSize: 20,
                ),
              )
            ],
          ),
          airtimeVoucherNumberInput(),
          const SizedBox(height: 12),
          isForOther ? airtimeMobileNumberInput() : Container(),
          const SizedBox(
            height: 20,
          ),
          Button(
              buttonColor: const Color.fromRGBO(3, 11, 165, 1),
              buttonLabel: "Recharge",
              buttonFunction: () {}),
        ],
      ),
    );
  }

  Widget airtimeVoucherNumberInput() {
    return Container(
      decoration: BoxDecoration(
        border: Border.all(color: Colors.blue, width: 2),
        borderRadius: BorderRadius.circular(15),
      ),
      margin: const EdgeInsets.only(
        left: 8,
        right: 8,
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Padding(
            padding: EdgeInsets.only(left: 16.0, top: 8),
            child: Text(
              'Voucher Number',
              style: TextStyle(
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 16.0),
            child: Expanded(
              child: TextFormField(
                controller: voucherNumber,
                focusNode: voucherNumberNode,
                textInputAction: TextInputAction.go,
                keyboardType: TextInputType.number,
                decoration: const InputDecoration(
                  hintText: "Please enter the voucher number",
                  border: InputBorder.none,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }

  Widget airtimeMobileNumberInput() {
    return Container(
      decoration: BoxDecoration(
        border: Border.all(color: Colors.blue, width: 2),
        borderRadius: BorderRadius.circular(15),
      ),
      margin: const EdgeInsets.only(
        left: 8,
        right: 8,
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
                    textInputAction: TextInputAction.go,
                    // onEditingComplete: () =>
                    //     FocusScope.of(context)
                    //         .requestFocus(passwordNode),
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
