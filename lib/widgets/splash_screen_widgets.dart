import 'package:flutter/material.dart';
import 'package:my_ethiotel_app/widgets/right_side_drawer.dart';

import 'constants.dart';
List drawerList = [
  {
    'drawerIcon': Icons.family_restroom_rounded,
    'drawerTitle': "Family Group",
    'drawerFunction': () {}
  },
  {
    'drawerIcon': Icons.currency_exchange_rounded,
    'drawerTitle': "Asham tele",
    'drawerFunction': () {}
  },
  {
    'drawerIcon': Icons.wallet,
    'drawerTitle': "Packages",
    'drawerFunction': () {}
  },
  {
    'drawerIcon': Icons.wallet_rounded,
    'drawerTitle': "Balance Details",
    'drawerFunction': () {}
  },
  {
    'drawerIcon': Icons.language,
    'drawerTitle': "IVR/USSD Language",
    'drawerFunction': () {}
  },
  {
    'drawerIcon': Icons.settings,
    'drawerTitle': "Security Questions",
    'drawerFunction': () {}
  },
  {
    'drawerIcon': Icons.print,
    'drawerTitle': "FAQ",
    'drawerFunction': () {},
  },
  {
    'drawerIcon': Icons.message,
    'drawerTitle': "Live Chat",
    'drawerFunction': () {}
  },
  {
    'drawerIcon': Icons.call,
    'drawerTitle': "Contact Us",
    'drawerFunction': () {}
  },
];
SizedBox buildDrawerBody(BuildContext context) {
  return SizedBox(
    height: MediaQuery.of(context).size.height * 0.7,
    child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        // padding: const EdgeInsets.fromLTRB(18, 70, 8, 10),
        children: drawerList
            .map(
              (e) => GestureDetector(
            onTap: e['drawerFunction'],
            child: Container(
              margin:
              const EdgeInsets.only(bottom: 5, right: 5),
              height: 53,
              child: Row(
                children: [
                  Expanded(
                    flex: 1,
                    child: Icon(e['drawerIcon']),
                  ),
                  Expanded(
                    flex: 4,
                    child: Text(
                      e['drawerTitle'],
                      style: const TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 17),
                    ),
                  )
                ],
              ),
            ),
          ),
        )
            .toList()),
  );
}
Row buildDrawerHeader() {
  return Row(
    children: [
      Container(
        width: 80,
        height: 80,
        decoration: BoxDecoration(
          color: Colors.white,
          border: Border.all(color: Colors.blue, width: 2),
          borderRadius: BorderRadius.circular(150),
          image: const DecorationImage(
            image: AssetImage('assets/images/pp.jpg'),
          ),
        ),
      ),
      const   SizedBox(width: 15,),
      Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Text(
            'Surafel Terefe',
            style: TextStyle(
              fontWeight: FontWeight.w900,
              fontSize: 18,
            ),
          ),
          const Text(
            'Balance',
            style: TextStyle(
              color: Colors.greenAccent,
              fontWeight: FontWeight.w900,
              fontSize: 18,
            ),
          ),
          Container(
            width: 120,
            height: 30,
            decoration: BoxDecoration(
                border: Border.all(
                  color: Colors.blue,
                  width: 2,
                ),
                borderRadius: BorderRadius.circular(30)),
            child: const Center(
              child:  Text(
                '22.85 Birr',
                textAlign: TextAlign.center,
                style: TextStyle(
                  color: Colors.blue,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
          ),
        ],
      ),
    ],
  );
}


Column buildScreensTitle({required String title}) {
  return Column(
    mainAxisAlignment: MainAxisAlignment.start,
    crossAxisAlignment: CrossAxisAlignment.start,
    children: [
      ethioTelecom(),
      Container(
        width: double.infinity,
        height: 80,
        color: Colors.grey,
        child: Center(
          child: Text(
            title,
            style: const TextStyle(
              fontWeight: FontWeight.w900,
              fontSize: 23,
            ),
          ),
        ),
      )
    ],
  );
}
Positioned buildHomePageDrawer(context) {
  return Positioned(
    right: 10,
    top: 60,
    child: IconButton(
      onPressed: (){
        Navigator.of(context).push(MaterialPageRoute(builder: (ctx)=>const RightSideDrawer(),),);
      },
      icon: const Icon(
        Icons.menu,
        size: 35,
        color: Colors.black,
      ),
    ),
  );
}
Positioned ethioTelecom() {
  return Positioned(
    left: 10,
    top: 10,
    child: Container(
      width: 220,
      height: 150,
      decoration: const BoxDecoration(
        image: DecorationImage(
          alignment: Alignment.centerLeft,
          fit: BoxFit.cover,
          image: AssetImage('assets/images/images.jpeg'),
        ),
      ),
    ),
  );
}
Positioned buildHomePageProfile(BuildContext context) {
  return Positioned(
    top: 10,
    left: 55,
    child: SizedBox(
      width: MediaQuery.of(context).size.width * 0.7,
      height: MediaQuery.of(context).size.height * 0.25,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Container(
            width: 100,
            height: 100,
            decoration: BoxDecoration(
              color: Colors.white,
              border: Border.all(color: Colors.blue, width: 2),
              borderRadius: BorderRadius.circular(150),
              image: const DecorationImage(
                image: AssetImage('assets/images/pp.jpg'),
              ),
            ),
          ),
          const Text(
            'Surafel Terefe',
            style: TextStyle(
              fontWeight: FontWeight.w900,
              fontSize: 20,
            ),
          ),
          Container(
            width: 110,
            height: 30,
            decoration: BoxDecoration(
                border: Border.all(
                  color: Colors.blue,
                  width: 2,
                ),
                borderRadius: BorderRadius.circular(30)),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,

              children:const [
                Text(
                  '912654975',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    color: Colors.blue,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                Icon(
                  Icons.chevron_right_rounded,
                  color: Colors.blue,

                ),
              ],
            ),
          )
        ],
      ),
    ),
  );
}
Widget buildBanner() {
  return  Container(
      decoration: BoxDecoration(
        border: Border(
          bottom: BorderSide(
            color: Colors.grey.withOpacity(0.5),
            width: 2,
          ),
        ),
        image: const DecorationImage(
          alignment: Alignment.centerLeft,
          fit: BoxFit.contain,
          image: AssetImage('assets/images/images.jpeg'),
        ),
      ),

  );
}
Widget buildExistingAccountChecker(
    {required String label, required String action,required Color color,required VoidCallback textFunction}) {
  return Padding(
    padding: const EdgeInsets.fromLTRB(18, 8, 8, 8),
    child: Row(
      children: [
        Text(label),
        TextButton(
          onPressed:textFunction,
          child: Text(
            action,
            style:  TextStyle(
              color: color,
              fontWeight: FontWeight.bold
            ),
          ),
        )
      ],
    ),
  );
}

Widget splashScreenWidgets(
    double height, double width, String title, Map position) {
  return Positioned(
    right: double.parse((position['right']).toString()),
    top: double.parse((position['top']).toString()),
    child: Container(
      height: height * 0.05,
      width: width * 0.45,
      decoration: BoxDecoration(
        color: Colors.white,
        border: Border.all(
          width: 2,
          color: Colors.green,
        ),
        borderRadius: const BorderRadius.all(
          Radius.circular(20),
        ),
      ),
      child: Center(
        child: Text(
          title,
          style: kSplashWidget,
          textAlign: TextAlign.center,
        ),
      ),
    ),
  );
}

Widget splashScreenWidgetsUnPositioned(
    double height, double width, String title, Map position) {
  return Container(
    margin: EdgeInsets.only(
      right: double.parse((position['right']).toString()),
      top: double.parse((position['top']).toString()),
    ),
    height: height * 0.05,
    width: width * 0.45,
    decoration: BoxDecoration(
      color: Colors.white,
      border: Border.all(
        width: 2,
        color: Colors.green,
      ),
      borderRadius: const BorderRadius.all(
        Radius.circular(20),
      ),
    ),
    child: Center(
      child: Text(
        title,
        style: kSplashWidget,
        textAlign: TextAlign.center,
      ),
    ),
  );
}
