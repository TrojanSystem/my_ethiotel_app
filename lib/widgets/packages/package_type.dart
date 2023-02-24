import 'package:flutter/material.dart';

import '../my_services/my_service_list.dart';
import '../widget_collection.dart';

class PackageType extends StatelessWidget {
  PackageType({required this.packageTitle});

  String packageTitle;
  List<String> title = [
    "Birthday Package",
    "No expiry date package",
    "One-Birr Package",
    "Good Morning",
    "Hourly and Daily Unlimited Package",
    "Fixed Package",
    "Voice"
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          buildScreensTitle(title: packageTitle),
          SizedBox(
            width: MediaQuery.of(context).size.width,
            height: MediaQuery.of(context).size.height * 0.697,
            child: Stack(
              children: [
                ListView.builder(
                  itemBuilder: (context, index) => MyServiceList(
                    listTitle: title[index],
                  ),
                  itemCount: 7,
                ),
                buildPackageCreatorButton(context)
              ],
            ),
          ),
        ],
      ),
    );
  }

  Positioned buildPackageCreatorButton(BuildContext context) {
    return Positioned(
                bottom: 0,
                child: SizedBox(
                  width: MediaQuery.of(context).size.width,
                  height: MediaQuery.of(context).size.height * 0.11,
                  child: Center(
                    child: GestureDetector(
                      onTap: () {},
                      child: Container(
                        width: MediaQuery.of(context).size.width * 0.8,
                        height: 60,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          color: Colors.blue,
                        ),
                        child: const Center(
                          child: Text(
                            'Create Your Own Package',
                            textAlign: TextAlign.center,
                            style: TextStyle(
                                fontSize: 20,
                                color: Colors.white,
                                fontWeight: FontWeight.bold),
                          ),
                        ),
                      ),
                    ),
                  ),
                ),
              );
  }
}
