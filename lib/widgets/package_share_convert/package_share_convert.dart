import 'package:flutter/material.dart';

import '../widget_collection.dart';

class PackageShareConvert extends StatelessWidget {
  const PackageShareConvert({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          buildScreensForSubScreenTitle(title:'Packages Share/Convert',context: context),

          const SizedBox(
            height: 50,
          ),
          buildPackageButtons(
              context: context,
              buttonTitle: "Balance Transfer",
              buttonFunction: () {}),
          const SizedBox(
            height: 15,
          ),
          buildPackageButtons(
              context: context,
              buttonTitle: "Transfer Package Resource",
              buttonFunction: () {}),
          const SizedBox(
            height: 15,
          ),
          buildPackageButtons(
              context: context,
              buttonTitle: "Package Resource Conversion",
              buttonFunction: () {}),
        ],
      ),
    );
  }
}
