import 'package:flutter/material.dart';

class MyServiceList extends StatefulWidget {
   MyServiceList({required this.listTitle});
String listTitle;
  @override
  State<MyServiceList> createState() => _MyServiceListState();
}

class _MyServiceListState extends State<MyServiceList> {
  bool isTapped = true;

  bool isNegative = false;

  bool isExpanded = false;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      highlightColor: Colors.transparent,
      splashColor: Colors.transparent,
      onTap: () {
        setState(() {
          isTapped = !isTapped;
        });
      },
      onHighlightChanged: (value) {
        setState(() {
          isExpanded = value;
        });
      },
      child: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(0.0),
            child: AnimatedContainer(

              decoration: const BoxDecoration(
                border: Border(
                  bottom: BorderSide(color: Colors.grey, width: 2),
                ),
                // gradient: LinearGradient(
                //   colors: [
                //     const Color.fromRGBO(40, 53, 147, 1),
                //     const Color.fromRGBO(40, 53, 147, 1).withOpacity(0.9)
                //   ],
                // ),
                // boxShadow: [
                //   BoxShadow(
                //     color: Colors.black.withOpacity(0.5),
                //     blurRadius: 4,
                //     offset:
                //         const Offset(4, 8), // changes position of shadow
                //   ),
                // ],
              ),
              duration: const Duration(seconds: 1),
              curve: Curves.fastLinearToSlowEaseIn,
              height: isTapped
                  ? isExpanded
                      ? 60
                      : 60
                  : isExpanded
                      ? 250
                      : 255,
              width: isExpanded ? 345 : 350,
              child: isTapped
                  ? Row(
                      children: [
                        Expanded(
                          flex: 4,
                          child: Container(
                            padding: const EdgeInsets.only(top: 10, left: 5),
                            // decoration: BoxDecoration(
                            //   border: Border.all(
                            //     color: Colors.blue,
                            //     width: 2,
                            //   ),
                            // ),
                            child:  Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Text(
                               widget.listTitle,
                                style:const TextStyle(
                                  color: Colors.black,
                                  fontWeight: FontWeight.bold,
                                  fontSize: 15,
                                ),
                              ),
                            ),
                          ),
                        ),
                        Icon(
                          isTapped
                              ? Icons.keyboard_arrow_down
                              : Icons.keyboard_arrow_up,
                          color: Colors.green[800],
                          size: 27,
                        ),
                      ],
                    )
                  : Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Row(
                          children: [
                            Expanded(
                              flex: 4,
                              child: Container(
                                padding:
                                    const EdgeInsets.only(top: 10, left: 5),
                                // decoration: BoxDecoration(
                                //   border: Border.all(
                                //     color: Colors.blue,
                                //     width: 2,
                                //   ),
                                // ),
                                child:  Padding(
                                  padding:const EdgeInsets.all(8.0),
                                  child: Text(
                                    widget.listTitle,
                                    style: const TextStyle(
                                      color: Colors.black,
                                      fontWeight: FontWeight.bold,
                                      fontSize: 15,
                                    ),
                                  ),
                                ),
                              ),
                            ),
                            Icon(
                              isTapped
                                  ? Icons.keyboard_arrow_down
                                  : Icons.keyboard_arrow_up,
                              color: Colors.green[800],
                              size: 27,
                            ),
                          ],
                        ),
                        Expanded(
                          child: ListView.builder(
                            itemBuilder: (context, index) =>
                                buildMyServiceListBody(context),
                            itemCount: 2,
                          ),
                        ),
                      ],
                    ),
            ),
          ),
        ],
      ),
    );
  }

  Expanded buildMyServiceListBody(BuildContext context) {
    return Expanded(
                            child: Padding(
                              padding: const EdgeInsets.only(left: 10.0),
                              child: Container(
                                margin: const EdgeInsets.only(bottom: 5),
                                width:
                                    MediaQuery.of(context).size.width * 0.95,
                                height: 80,
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(25),
                                    border: Border.all(color: Colors.blue)),
                                child: Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    Padding(
                                      padding: const EdgeInsets.fromLTRB(
                                          18.0, 15, 8, 8),
                                      child: Column(
                                        mainAxisAlignment:
                                            MainAxisAlignment.start,
                                        children: [
                                          const Text(
                                            overflow: TextOverflow.fade,
                                            'Weekly Voice package 130 minute \n plus 25 Sms to expired after 7 days',
                                            style: TextStyle(
                                              fontSize: 15,
                                            ),
                                          ),
                                          Row(
                                            mainAxisAlignment:
                                                MainAxisAlignment.spaceEvenly,
                                            children: const [
                                              Text(
                                                '25 Birr',
                                                style: TextStyle(
                                                  fontSize: 15,
                                                  color: Colors.green,
                                                ),
                                              ),
                                              SizedBox(
                                                width: 50,
                                              ),
                                              Text(
                                                'February 24,2023',
                                                style: TextStyle(
                                                  color: Colors.green,
                                                  fontSize: 15,
                                                ),
                                              ),
                                            ],
                                          ),
                                        ],
                                      ),
                                    ),
                                    IconButton(
                                      onPressed: () {},
                                      icon: const Icon(Icons.navigate_next),

                                    )
                                  ],
                                ),
                              ),
                            ),
                          );
  }
}
