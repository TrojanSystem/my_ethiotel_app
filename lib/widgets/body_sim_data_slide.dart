import 'package:flutter/material.dart';
import 'package:flutter_image_slideshow/flutter_image_slideshow.dart';
import 'dart:math' as math;

class BodySimDataSlide extends StatelessWidget {
  List<Map> imgList = [
    {"image": "22.80 Birr", "Text": "MainAccount"},
    {"image": "0Seconds", "Text": "Weekly Voice"},
    {"image": "23SMS", "Text": "Weekly SMS"},
  ];

  BodySimDataSlide({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(top: 135),
      alignment: Alignment.center,
      child: Transform.rotate(
        angle: -math.pi / 15,
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: FittedBox(
            clipBehavior: Clip.antiAlias,
            child: ImageSlideshow(
              /// Width of the [ImageSlideshow].
              width: 200,

              /// Height of the [ImageSlideshow].
              height: 120,

              /// The page to show when first creating the [ImageSlideshow].
              initialPage: 0,

              /// The color to paint the indicator.
              indicatorColor: Colors.green[800],

              /// The color to paint behind th indicator.
              indicatorBackgroundColor: Colors.green,

              /// Called whenever the page in the center of the viewport changes.
              onPageChanged: (value) {
                // print('Page changed: $value');
              },

              /// Auto scroll interval.
              /// Do not auto scroll with null or 0.
              autoPlayInterval: 3000,

              /// Loops back to first slide.
              isLoop: true,indicatorRadius: 5.0,

              /// The widgets to display in the [ImageSlideshow].
              /// Add the sample image file into the images folder
              children: imgList
                  .map(
                    (e) => Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        Container(
                          decoration: BoxDecoration(
                            border: Border.all(color: Colors.green, width: 2),
                            borderRadius: BorderRadius.circular(50),
                            color: Colors.white,
                          ),
                          width: 200,
                          height: 120,
                          child: Column(
                            mainAxisSize: MainAxisSize.min,
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Text(
                                e['image'],
                                style: const TextStyle(
                                  fontSize: 30,
                                  fontWeight: FontWeight.w800,
                                  color: Colors.green,
                                ),
                                textAlign: TextAlign.center,
                              ),
                              Text(
                                e['Text'],
                                style: const TextStyle(
                                  fontSize: 20,
                                  fontWeight: FontWeight.bold,
                                ),
                                textAlign: TextAlign.center,
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  )
                  .toList(),
            ),
          ),
        ),
      ),
    );
  }
}
