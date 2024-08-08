import 'package:flutter/material.dart';
import 'package:portfolio_website/Responsive/responsive.dart';

class ProfileAndIntro extends StatelessWidget {
  const ProfileAndIntro({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Wrap(
          children: [
            SizedBox(
              width: Responsive.isMobile(context)
                  // it take full widt in mobile screen but only tkes half width in web and desktop
                  ? Responsive.widthOfScreen(context)
                  : Responsive.widthOfScreen(context) / 2,
              height: Responsive.isMobile(context)
                  ? Responsive.heightOfScreen(context) / 3
                  : Responsive.heightOfScreen(context) - 70,
              child: Image.asset("asset/images/profile-image.png"),
            ),
            SizedBox(
              width: Responsive.isMobile(context)
                  // it take full widt in mobile screen but only tkes half width in web and desktop
                  ? Responsive.widthOfScreen(context)
                  : Responsive.widthOfScreen(context) / 2,
              height: Responsive.isMobile(context)
                  ? Responsive.heightOfScreen(context) / 3
                  : Responsive.heightOfScreen(context) - 70,
              child: Center(
                child: SizedBox(
                  height: 250,
                  width: Responsive.isMobile(context)
                      ? Responsive.widthOfScreen(context) * 0.85
                      : 450,
                  child: DecoratedBox(
                    decoration: BoxDecoration(
                      boxShadow: const[
                         BoxShadow(
                          color: Colors.grey,
                          blurRadius: 8,
                          spreadRadius: 5,
                        ),
                      ],
                      borderRadius: BorderRadius.circular(10),
                      color: Colors.white,
                    ),
                    child:  Padding(
                      padding: const EdgeInsets.all(20),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            "Hello!",
                            style: TextStyle(
                              fontSize: Responsive.isMobile(context)?36:40,
                              color: Colors.red,
                              fontWeight: FontWeight.w800,
                            ),
                          ),
                          const Text(
                            "I'm Nabin Paudyal,\na Developer & Content Creator\nSpecializing in Flutter App Decelopemnt and UI Design.",
                            style: TextStyle(
                              fontSize: 20,
                              fontWeight: FontWeight.w500,
                            ),
                          )
                        ],
                      ),
                    ),
                  ),
                ),
              ),
            ),
          ],
        )
      ],
    );
  }
}
