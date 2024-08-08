import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

import '../../Responsive/responsive.dart';

class SocialIcons extends StatelessWidget {
  const SocialIcons({super.key});

  @override
  Widget build(BuildContext context) {
    return Positioned(
      right: 5,
      top: Responsive.isMobile(context)
          ? Responsive.heightOfScreen(context) * 0.1
          : Responsive.heightOfScreen(context) * 0.2,
      child: const SizedBox(
        height: 200,
        width: 45,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            SocialIconDesign(
                socialLink: "https://www.youtube.com/@wtf-code",
                iconURL:
                    'https://cdn-icons-png.flaticon.com/512/4096/4096116.png'),
            SocialIconDesign(
                socialLink: "https://github.com/Nabinji",
                iconURL:
                    'https://cdn-icons-png.freepik.com/256/11023/11023876.png'),
            SocialIconDesign(
                socialLink:
                    "https://www.linkedin.com/in/nabin-paudyal-7a3110216/",
                iconURL:
                    'https://static.vecteezy.com/system/resources/previews/016/716/470/non_2x/linkedin-icon-free-png.png'),
            SocialIconDesign(
                socialLink: "https://www.instagram.com/wtfcode01/",
                iconURL:
                    'https://upload.wikimedia.org/wikipedia/commons/thumb/a/a5/Instagram_icon.png/768px-Instagram_icon.png'),
          ],
        ),
      ),
    );
  }
}

class SocialIconDesign extends StatelessWidget {
  final String iconURL;
  final String socialLink;
  const SocialIconDesign({
    super.key,
    required this.iconURL,
    required this.socialLink,
  });

  @override
  Widget build(BuildContext context) {
    return FloatingActionButton.small(
      backgroundColor: Colors.transparent,
      onPressed: () {
        launchUrl(Uri.parse(socialLink));
      },
      child: Image.network(
        iconURL,
        fit: BoxFit.cover,
      ),
    );
  }
}
