import 'package:flutter/material.dart';

import '../splash_screen_widgets.dart';
import 'my_service_list.dart';

class MyService extends StatefulWidget {
  const MyService({Key? key}) : super(key: key);

  @override
  State<MyService> createState() => _MyServiceState();
}

class _MyServiceState extends State<MyService> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Column(

        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          buildScreensTitle(title: 'My Services'),
          const  Padding(
            padding: EdgeInsets.fromLTRB(4,8,8,8,),
            child: Text(
              'My Primary Offer',
              style: TextStyle(
                fontWeight: FontWeight.w800,
                fontSize: 22,
              ),
            ),
          ),
          const  Padding(
            padding: EdgeInsets.fromLTRB(16,8,8,8,),
            child: Text(
              '4G LTE Mobile (Prepaid)',
              style: TextStyle(
                fontWeight: FontWeight.w800,color: Colors.green,
                fontSize: 18,
              ),
            ),
          ),
          const Padding(
            padding: EdgeInsets.only(left: 4.0),
            child: Text(
              'My Active Package',
              style: TextStyle(
                fontWeight: FontWeight.w800,
                fontSize: 22,
              ),
            ),
          ),
          MyServiceList(
            listTitle: "General",
          ),
          MyServiceList(
            listTitle: "Voice",
          )
        ],
      ),
    );
  }
}
