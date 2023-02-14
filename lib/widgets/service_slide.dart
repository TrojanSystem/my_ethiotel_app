import 'package:flutter/material.dart';
import 'package:flutter_image_slideshow/flutter_image_slideshow.dart';

class Slide extends StatelessWidget {
  List<Map> imgList = [
    {
      "image": "assets/images/notification-bell.png",
      "Text": "Subscribe to your new services \n recharge your account"
    },
    {
      "image": "assets/images/notification-bell.png",
      "Text": "Subscribe to your new services \n recharge your account"
    },
    {
      "image": "assets/images/notification-bell.png",
      "Text": "Subscribe to your new services \n recharge your account"
    },
  ];

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: FittedBox(
        alignment: Alignment.center,
        clipBehavior: Clip.antiAlias,
        child: ImageSlideshow(
          /// Width of the [ImageSlideshow].
          width: 200,

          /// Height of the [ImageSlideshow].
          height: 150,

          /// The page to show when first creating the [ImageSlideshow].
          initialPage: 0,

          /// The color to paint the indicator.
          indicatorColor: Colors.blue,

          /// The color to paint behind th indicator.
          indicatorBackgroundColor: Colors.grey,

          /// Called whenever the page in the center of the viewport changes.
          onPageChanged: (value) {
            // print('Page changed: $value');
          },

          /// Auto scroll interval.
          /// Do not auto scroll with null or 0.
          autoPlayInterval: 3000,

          /// Loops back to first slide.
          isLoop: true,

          /// The widgets to display in the [ImageSlideshow].
          /// Add the sample image file into the images folder
          children: imgList
              .map(
                (e) => Column(
                  children: [
                    Container(
                      width: 100,
                      height: 100,
                      decoration: BoxDecoration(
                        image: DecorationImage(
                          fit: BoxFit.cover,
                          image: AssetImage(
                            e['image'],
                          ),
                        ),
                      ),
                    ),
                    Text(
                      e['Text'],
                      style: TextStyle(fontSize: 10),
                      textAlign: TextAlign.center,
                    )
                  ],
                ),
              )
              .toList(),
        ),
      ),
    );
  }
}
