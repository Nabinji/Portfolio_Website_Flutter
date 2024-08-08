// This class contains static methods to determine the screen size and type (mobile or not)
import 'package:flutter/material.dart';

class Responsive {
  // this method cheks if the screen width is less than or equal to 600 pixels.
  // it it's true then it indicates a mobile device.
  static bool isMobile(BuildContext context) {
    return MediaQuery.of(context).size.width <= 600;
  }
  // otherwise it indicates a desktop or web and takes the full width of screen
  static double widthOfScreen(BuildContext context) {
    return MediaQuery.of(context).size.width;
  }
  // this static method returns the height of the screen.
  static double heightOfScreen(BuildContext context) {
    return MediaQuery.of(context).size.height;
  }
}
