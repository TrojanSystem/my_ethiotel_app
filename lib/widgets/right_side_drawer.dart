import 'package:flutter/material.dart';
import 'package:my_ethiotel_app/widgets/splash_screen_widgets.dart';

class RightSideDrawer extends StatelessWidget {
  const RightSideDrawer({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 250,
      child: Drawer(
        child: Container(
          margin: const EdgeInsets.only(top: 50, left: 16),
          child: Column(
            children: [
              buildDrawerHeader(),
              const SizedBox(
                height: 32,
              ),
              buildDrawerBody(context),
            ],
          ),
        ),
      ),
    );
  }
}
