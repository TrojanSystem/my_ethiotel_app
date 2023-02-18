import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';
class SocialMedialClass extends StatelessWidget {
  const SocialMedialClass({
    Key? key,
    required this.iconImage,
  }) : super(key: key);

  final List iconImage;

  @override
  Widget build(BuildContext context) {
    Future _callContact(BuildContext context,socialMediaUrl) async {
      final url = socialMediaUrl;
      if (await canLaunchUrl(url)) {
        await launchUrl(url);
      } else {
        const snackbar = SnackBar(content: Text('Can\'t open a URL',textAlign: TextAlign.center,),);
        ScaffoldMessenger.of(context).showSnackBar(snackbar);
      }
    }
    return Expanded(
      flex: 1,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Padding(
            padding: EdgeInsets.fromLTRB(18, 8.0, 8, 8),
            child: Text('Follow us on social media'),
          ),
          Container(
            margin: const EdgeInsets.all(8),
            width: MediaQuery.of(context).size.width,
            height: 40,
            child: ListView.builder(
              scrollDirection: Axis.horizontal,
              physics: const NeverScrollableScrollPhysics(),
              itemBuilder: (context, index) => GestureDetector(
                onTap: ()=>_callContact(context,iconImage[index]['url']),
                child: Container(
                  margin: const EdgeInsets.only(left: 8),
                  width: 30,
                  height: 30,
                  decoration: BoxDecoration(
                    image: DecorationImage(
                      image: AssetImage(iconImage[index]['image']),
                    ),
                  ),
                ),
              ),
              itemCount: iconImage.length,
            ),
          )
        ],
      ),
    );
  }
}