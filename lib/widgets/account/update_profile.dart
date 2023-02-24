import 'package:flutter/material.dart';

import '../widget_collection.dart';

class UpdateProfile extends StatelessWidget {
  const UpdateProfile({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          buildScreensTitle(
            title: 'Update Profile',
          ),
          const SizedBox(
            height: 50,
          ),
        ],
      ),
    );
  }
}
