import 'package:flutter/material.dart';
import 'package:my_ethiotel_app/screen/splash_screen.dart';

import '../widgets/constants.dart';
import '../widgets/splash_screen_widgets.dart';

class LoginPage extends StatefulWidget {
   LoginPage({Key? key}) : super(key: key);

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
bool isVisible =false;
  String dropdownvalue = ' ';

  // List of items in our dropdown menu
  var items = [
    'Amharic',
    'English',
    'Oromiffa',
    'Tgrigna',
    'Somali',
  ];

  Widget dropdownList(){
 return   DropdownButton(
   dropdownColor: Colors.grey[850],
   iconEnabledColor: Colors.white,
   menuMaxHeight: 300,
      // Initial Value

      // Down Arrow Icon
      icon: const Icon(Icons.keyboard_arrow_down),

      // Array list of items
      items: items.map((String items) {
        return DropdownMenuItem(
          value: items,
          child: Text(items),
        );
      }).toList(),
      // After selecting the desired option,it will
      // change button value to selected value
      onChanged: (String? newValue) {
        setState(() {
          dropdownvalue = newValue!;

        });
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    final _width = MediaQuery.of(context).size.width;
    final _height = MediaQuery.of(context).size.height;
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            Expanded(
              flex: 2,
              child: Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(left: 8.0),
                        child: Container(
                          width: MediaQuery.of(context).size.width * 0.4,
                          height: 100,
                          decoration: const BoxDecoration(
                            image: DecorationImage(
                              fit: BoxFit.contain,
                              image: AssetImage(
                                'assets/images/download.jpeg',
                              ),
                            ),
                          ),
                        ),
                      ),
                      Column(
                        children: [
                          Padding(
                            padding: const EdgeInsets.only(right: 8.0),
                            child: splashScreenWidgetsUnPositioned(
                                _height,
                                _width,
                                "Discover Our Services",
                                {"right": 5, "top": 40}),
                          ),
                          Row(
                            children: [
                              const Text('Language',style: kSplashWidget,),

                              Stack(
                                children: [
                                  IconButton(
                                    onPressed:(){
                                      setState(() {
                                        isVisible = !isVisible;
                                      });
                                    } ,
                                    icon: const Icon(Icons.arrow_drop_down),
                                  ),
                                  isVisible ?  Container(
                                  margin:EdgeInsets.only(top: 10),
                                      child: dropdownList()): Text(''),
                                ],
                              ),
                            ],
                          )
                        ],
                      ),
                    ],
                  ),
                ],
              ),
            ),
            Expanded(
              child: Container(
                color: Colors.green,
              ),
              flex: 3,
            ),
            Expanded(
              child: Container(
                color: Colors.red,
              ),
              flex: 1,
            )
          ],
        ),
      ),
    );
  }
}
