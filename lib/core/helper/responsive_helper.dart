import 'package:flutter/material.dart';

class ResponsiveHelper {
  static bool isMobile(BuildContext context) =>
      MediaQuery.sizeOf(context).width < 768;

  static bool isTablet(BuildContext context) =>
      MediaQuery.of(context).size.width >= 768 &&
          MediaQuery.sizeOf(context).width < 1024;

  static bool isDesktop(BuildContext context) =>
      MediaQuery.sizeOf(context).width >= 1024;

  static double getScreenWidth(BuildContext context) =>
     MediaQuery.sizeOf(context).width;

  static double getScreenHeight(BuildContext context) =>
      MediaQuery.sizeOf(context).height;
}