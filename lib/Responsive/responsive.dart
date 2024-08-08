import 'package:flutter/cupertino.dart';

// This class contains static methods to determine the screen size and type (mobile or not).
class Responsive {
  // This method checks if the screen width is less than or equal to 600 pixels.
  // It indicating a mobile device.
  static bool isMobile(BuildContext context) {
    return MediaQuery.of(context).size.width <= 600;
  }

  // Otherwise it indicate a desktop or web and takes th full width of it
  static double widthOfScreen(BuildContext context) {
    return MediaQuery.of(context).size.width;
  }

  // This static method returns the height of the screen.

  static double heightOfScreen(BuildContext context) {
    return MediaQuery.of(context).size.height;
  }

}
