import 'package:flutter/material.dart';

import '../widgets/widget_collection.dart';

class AccountProfile extends StatelessWidget {
 const AccountProfile({Key? key}) : super(key: key);
  final bool isChange = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Column(
        children: [
          buildScreensTitle(title: 'Account'),
          buildHeaderSurafel(),
          buildPasswordReset(
            isChange: true,
            image: 'assets/images/reset-password.png',
            title: 'Change Password',
            subtitle: 'Change your password',
          ),
          buildPasswordReset(
            isChange: false,
            image: 'assets/images/up-arrow.png',
            title: 'Update',
            subtitle: 'Check new version for update',
          ),
          buildPasswordReset(
            isChange: false,
            image: 'assets/images/setting.png',
            title: 'App Version',
            subtitle: '1.1.47',
          ),
          Container(
            margin: const EdgeInsets.only(bottom: 10),
            padding: const EdgeInsets.only(bottom: 15),
            height: 80,
            child: ListTile(
              leading: Container(
                width: 55,
                height: 55,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(25),
                  color: const Color.fromRGBO(241, 220, 167, 1),
                ),
                padding: const EdgeInsets.all(10),
                child: Container(
                  width: 55,
                  height: 55,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(25),
                    color: const Color.fromRGBO(241, 220, 167, 1),
                    image: const DecorationImage(
                      fit: BoxFit.contain,
                      image: AssetImage('assets/images/logout.png'),
                    ),
                  ),
                ),
              ),
              title: const Text(
                'Log out',
                style: TextStyle(
                  fontWeight: FontWeight.w800,
                  fontSize: 20,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }

  Container buildPasswordReset({image, title, subtitle, isChange}) {
    return Container(
      margin: const EdgeInsets.only(bottom: 10),
      padding: const EdgeInsets.only(bottom: 15),
      decoration: const BoxDecoration(
        border: Border(
          bottom: BorderSide(
            color: Colors.grey,
            width: 2,
          ),
        ),
      ),
      height: 80,
      child: ListTile(
        leading: Container(
          width: 55,
          height: 55,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(25),
            color: const Color.fromRGBO(241, 220, 167, 1),
          ),
          padding: const EdgeInsets.all(8),
          child: Container(
            width: 55,
            height: 55,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(25),
              color: const Color.fromRGBO(241, 220, 167, 1),
              image: DecorationImage(
                image: AssetImage(image),
              ),
            ),
          ),
        ),
        title: const Text(
          'Change Password',
          style: TextStyle(
            fontWeight: FontWeight.w800,
            fontSize: 20,
          ),
        ),
        subtitle: const Text('Change your password'),
        trailing: isChange
            ? buildAccountPageNextButton(bgColor: Colors.transparent)
            : const Text(''),
      ),
    );
  }

  Container buildHeaderSurafel() {
    return Container(
      padding: const EdgeInsets.only(left: 16),
      height: 100,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Expanded(
            flex: 3,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: const [
                Text(
                  'Surafel Terefe',
                  style: TextStyle(
                    fontWeight: FontWeight.w800,
                    fontSize: 25,
                  ),
                ),
                SizedBox(
                  height: 5,
                ),
                Text(
                  '0912654975',
                  style: TextStyle(
                    fontSize: 17,
                  ),
                ),
              ],
            ),
          ),
          Expanded(
            flex: 1,
            child: buildAccountPageNextButton(
              bgColor: const Color.fromRGBO(241, 220, 167, 1),
            ),
          ),
        ],
      ),
    );
  }

  Container buildAccountPageNextButton({bgColor}) {
    return Container(
      width: 60,
      height: 60,
      decoration: BoxDecoration(color: bgColor, shape: BoxShape.circle),
      child: IconButton(
        onPressed: () {},
        icon: const Icon(
          Icons.arrow_right_alt_rounded,
          size: 35,
        ),
      ),
    );
  }
}
