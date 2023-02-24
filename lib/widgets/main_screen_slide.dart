import 'package:carousel_slider/carousel_controller.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:my_ethiotel_app/widgets/package_share_convert/package_share_convert.dart';
import 'package:my_ethiotel_app/widgets/packages/create_your_own_package.dart';
import 'package:my_ethiotel_app/widgets/packages/packages.dart';
import 'package:my_ethiotel_app/widgets/recharge_payment/recharge_payment.dart';

import '../widget_tester.dart';
import 'my_services/my_service.dart';

class MainScreenSlider extends StatefulWidget {
  const MainScreenSlider({super.key});

  @override
  State<StatefulWidget> createState() {
    return _MainScreenSliderState();
  }
}

class _MainScreenSliderState extends State<MainScreenSlider> {
  final CarouselController _controller = CarouselController();

  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    List serviceWidget = [
      {
        'icon': "assets/images/support.png",
        "title": 'My Service',
        "onTap": () {
          Navigator.of(context).push(
            MaterialPageRoute(
              builder: (ctx) => const MyService(),
            ),
          );
        }
      },
      {
        'icon': "assets/images/open-box.png",
        "title": 'Package',
        "onTap": () {
          Navigator.of(context).push(
            MaterialPageRoute(
              builder: (ctx) => const Package(),
            ),
          );
        }
      },
      {
        'icon': "assets/images/controls.png",
        "title": 'Create Package',
        "onTap": () {
          Navigator.of(context).push(
            MaterialPageRoute(
              builder: (ctx) => const CreateYourOwnPackage(),
            ),
          );
        }
      },
      {
        'icon': "assets/images/payment.png",
        "title": 'Recharge/\nPayment',
        "onTap": () {
          Navigator.of(context).push(
            MaterialPageRoute(
              builder: (ctx) => const RechargePayment(),
            ),
          );
        }
      },
      {
        'icon': "assets/images/smartphone.png",
        "title": 'Package\nShare/Convert',
        "onTap": () {
          Navigator.of(context).push(
            MaterialPageRoute(
              builder: (ctx) => const PackageShareConvert(),
            ),
          );
        }
      },
      {'icon': "assets/images/family.png", "title": 'Family Group'},
    ];

    return Stack(
      children: <Widget>[
        CarouselSlider(
          items: serviceWidget
              .map(
                (e) => Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    GestureDetector(
                      onTap: e['onTap'],
                      child: Container(
                        margin: const EdgeInsets.only(left: 15, bottom: 5),
                        padding: EdgeInsets.all(8),
                        width: 90,
                        height: 70,
                        decoration: BoxDecoration(
                          image: DecorationImage(
                            fit: BoxFit.contain,
                            image: AssetImage(e['icon']),
                          ),
                          borderRadius: BorderRadius.circular(15),
                          border: Border.all(
                            color: Colors.blue,
                            width: 2,
                          ),
                        ),
                      ),
                    ),
                    Text(
                      e['title'],
                      textAlign: TextAlign.center,
                    ),
                  ],
                ),
              )
              .toList(),
          options: CarouselOptions(
            initialPage: 0,
            disableCenter: true,
            viewportFraction: 0.25,
            height: MediaQuery.of(context).size.height * 0.18,
            reverse: false,
          ),
          carouselController: _controller,
        ),
        // Positioned(
        //   left: 0,
        //   top: 10,
        //   child: ElevatedButton(
        //     style: ButtonStyle(
        //       backgroundColor: MaterialStateProperty.all(Colors.white),
        //     ),
        //     onPressed: () => _controller.previousPage(),
        //     child: const Icon(
        //       Icons.arrow_left,
        //       color: Colors.green,
        //       size: 35,
        //     ),
        //   ),
        // ),
        // Positioned(
        //   right: 0,
        //   top: 10,
        //   child: ElevatedButton(
        //     style: ButtonStyle(
        //       backgroundColor: MaterialStateProperty.all(
        //         Colors.white,
        //       ),
        //     ),
        //     onPressed: () => _controller.nextPage(),
        //     child: const Icon(
        //       Icons.arrow_right,
        //       color: Colors.green,
        //       size: 35,
        //     ),
        //   ),
        // ),
      ],
    );
  }
}
