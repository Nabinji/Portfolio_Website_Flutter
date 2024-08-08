import 'package:flutter/material.dart';
import '../../Responsive/responsive.dart';
import '../../Utils/colors.dart';


class TopBar extends StatelessWidget {
  final ScrollController sc;
  const TopBar({super.key, required this.sc});

  @override
  Widget build(BuildContext context) {
    bool isMobile = Responsive.isMobile(context);
    return isMobile
        ? Column(
            children: topBarData(sc, context, isMobile: true),
          )
        : Row(
            children: topBarData(sc, context),
          );
  }

  List<Widget> topBarData(ScrollController sc, BuildContext context,
      {bool isMobile = false}) {
    int scrollDur = isMobile ? 800 : 500;
    return [
      Padding(
        padding:
            EdgeInsets.symmetric(horizontal: 10, vertical: isMobile ? 20 : 0),
        child: TextButton(
          onPressed: () {
            if (isMobile) Navigator.pop(context);
            sc.animateTo(
              200,
              duration: Duration(milliseconds: scrollDur),
              curve: Curves.bounceIn,
            );
          },
          child: const Text(
            'About',
            style: TextStyle(
              fontSize: 20,
              color: textColor,
              fontWeight: FontWeight.w900,
            ),
          ),
        ),
      ),
      Padding(
        padding:
            EdgeInsets.symmetric(horizontal: 10, vertical: isMobile ? 20 : 0),
        child: TextButton(
          onPressed: () {
            if (isMobile) Navigator.pop(context);
            sc.animateTo(
              isMobile ? 1050 : 1100,
              duration: Duration(milliseconds: scrollDur),
              curve: Curves.easeIn,
            );
          },
          child: const Text(
            'Skills',
            style: TextStyle(
              fontSize: 20,
              color: textColor,
              fontWeight: FontWeight.w900,
            ),
          ),
        ),
      ),
      Padding(
        padding:
            EdgeInsets.symmetric(horizontal: 10, vertical: isMobile ? 20 : 0),
        child: TextButton(
          onPressed: () {
            if (isMobile) Navigator.pop(context);
            sc.animateTo(
            isMobile?  1450:1750,
              duration: Duration(milliseconds: scrollDur),
              curve: Curves.easeIn,
            );
          },
          child: const Text(
            'Projects',
            style: TextStyle(
              fontSize: 20,
              color: textColor,
              fontWeight: FontWeight.w900,
            ),
          ),
        ),
      ),
      Padding(
        padding:
            EdgeInsets.symmetric(horizontal: 10, vertical: isMobile ? 20 : 0),
        child: TextButton(
          onPressed: () {
            if (isMobile) Navigator.pop(context);
            sc.animateTo(
              isMobile ? 3950 : 2750,
              duration: Duration(milliseconds: scrollDur),
              curve: Curves.easeIn,
            );
          },
          child: const Text(
            'Contact',
            style: TextStyle(
              fontSize: 20,
            color: textColor,
              fontWeight: FontWeight.w900,
            ),
          ),
        ),
      )
    ];
  }
}
