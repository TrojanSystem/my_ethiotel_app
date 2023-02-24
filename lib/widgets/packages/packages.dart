import 'package:flutter/material.dart';
import 'package:my_ethiotel_app/widgets/packages/package_type.dart';

import '../constants.dart';
import '../widget_collection.dart';

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


}
