import 'package:flutter/material.dart';
import 'package:portfolio_website/Responsive/responsive.dart';

class AboutMe extends StatelessWidget {
  const AboutMe({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(
        horizontal: Responsive.isMobile(context) ? 40 : 80,
      ),
      child: Column(
        children: [
          const Center(
            child: Text(
              "About Me",
              style: TextStyle(
                fontSize: 25,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
          Text(
            "Hello! I'm Nabin Paudayl,a passionate Flutter developer specializing in Flutter, Firebase, API integration, and UI design. With a keen eye for detail and a drive for excellence, I strive to create seamless and engaging mobile applications.\n\nIn addition to my development work, I share my knowledge and expertise through educational videos on YouTube, helping others to learn and grow in the field of Flutter development.\n\nThank you for visiting my portfolio. Feel free to explore my projects and reach out if you'd like to connect!",
            style: TextStyle(
              fontSize: Responsive.isMobile(context) ? 18 : 20,
            ),
            textAlign: TextAlign.justify,
          )
        ],
      ),
    );
  }
}
