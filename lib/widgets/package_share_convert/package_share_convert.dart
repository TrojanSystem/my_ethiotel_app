import 'package:flutter/material.dart';

import '../widget_collection.dart';

class PackageShareConvert extends StatelessWidget {
  const PackageShareConvert({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          buildScreensTitle(title: 'Packages Share/Convert'),
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
