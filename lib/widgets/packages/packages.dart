import 'package:flutter/material.dart';
import 'package:my_ethiotel_app/widgets/packages/package_type.dart';

import '../constants.dart';
import '../splash_screen_widgets.dart';

class Package extends StatelessWidget {
const  Package({Key? key}) : super(key: key);


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Column(
        children: [
          buildScreensTitle(title: 'Packages'),
          const SizedBox(
            height: 50,
          ),
          buildPackageButtons(
              context: context,
              buttonTitle: "Buy Package",
              buttonFunction: () {
                Navigator.of(context).push(MaterialPageRoute(builder: (ctx)=>PackageType(
                    packageTitle:"Buy Package"),),);
              }),
          const SizedBox(
            height: 15,
          ),
          buildPackageButtons(
              context: context,
              buttonTitle: "Send a Gift",
              buttonFunction: () {
                Navigator.of(context).push(MaterialPageRoute(builder: (ctx)=>PackageType(packageTitle:"Gift Packages"),),);
              }),
        ],
      ),
    );
  }

  GestureDetector buildPackageButtons({context, buttonTitle, buttonFunction}) {
    return GestureDetector(
      onTap: buttonFunction,
      child: Container(
        width: MediaQuery.of(context).size.width * 0.90,
        height: 70,
        decoration: BoxDecoration(
          color: Colors.blue[800],
          borderRadius: BorderRadius.circular(40),
        ),
        child: Center(
          child: Text(
            buttonTitle,
            style: kPackageButtons,
          ),
        ),
      ),
    );
  }
}
