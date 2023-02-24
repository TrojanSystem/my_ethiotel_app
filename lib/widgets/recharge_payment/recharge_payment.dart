import 'package:flutter/material.dart';

import '../button.dart';
import '../packages/package_type.dart';
import '../widget_collection.dart';
import 'airtime_recharge.dart';

class RechargePayment extends StatefulWidget {
  const RechargePayment({Key? key}) : super(key: key);

  @override
  State<RechargePayment> createState() => _RechargePaymentState();
}

class _RechargePaymentState extends State<RechargePayment> {
  final voucherNumber = TextEditingController();
  final voucherNumberNode = FocusNode();
  final phoneNumber = TextEditingController();
  final phoneNumberNode = FocusNode();

  @override
  void dispose() {
    voucherNumber.dispose();
    voucherNumberNode.dispose();
    phoneNumber.dispose();
    phoneNumberNode.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final hegiht = MediaQuery.of(context).size.height;
    return Scaffold(
      body: Column(
        children: [
          buildScreensTitle(title: 'Recharge/Payment '),
          const SizedBox(
            height: 50,
          ),
          buildPackageButtons(
              context: context,
              buttonTitle: "Airtime Recharge",
              buttonFunction: () {
                showModalBottomSheet(
                    backgroundColor: Colors.white,
                    shape: const OutlineInputBorder(
                      borderSide: BorderSide(color: Colors.white),
                      borderRadius: BorderRadius.only(
                          topRight: Radius.circular(15),
                          topLeft: Radius.circular(15)),
                    ),
                    context: context,
                    builder: (context) {
                      return AirtimeRecharge(   title:'Airtime Recharge',
                          phoneNumber: phoneNumber,
                          phoneNumberNode: phoneNumberNode,
                          height: hegiht * 0.45,
                          isForOther: false,
                          voucherNumber: voucherNumber,
                          voucherNumberNode: voucherNumberNode);
                    });
              }),
          const SizedBox(
            height: 20,
          ),
          buildPackageButtons(
              context: context,
              buttonTitle: "Airtime Recharge For Other",
              buttonFunction: () {
                showModalBottomSheet(
                    backgroundColor: Colors.white,
                    shape: const OutlineInputBorder(
                      borderSide: BorderSide(color: Colors.white),
                      borderRadius: BorderRadius.only(
                          topRight: Radius.circular(15),
                          topLeft: Radius.circular(15)),
                    ),
                    context: context,
                    builder: (context) {
                      return AirtimeRecharge(
                        title:'Airtime Recharge For Other',
                          phoneNumber: phoneNumber,
                          phoneNumberNode: phoneNumberNode,
                          height: hegiht * 0.60,
                          isForOther: true,
                          voucherNumber: voucherNumber,
                          voucherNumberNode: voucherNumberNode);
                    });
              }),
        ],
      ),
    );
  }
}
