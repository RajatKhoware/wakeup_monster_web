import 'package:flutter/material.dart';

class AppRes {
  late BuildContext context;
  static late double width;
  static late double height;
  static late BuildContext appContext;
  AppRes.init(this.context) {
    width = MediaQuery.sizeOf(context).width;
    height = MediaQuery.sizeOf(context).height;
    appContext = context;
  }
}

class AppSizer {
  static final width = AppRes.width;
  static final height = AppRes.height;
  static final context = AppRes.appContext;

  static bool isSmallScreen = width < 800;
  static bool isMediumScreen = width >= 800 && width <= 1200;
  static bool isLargeScreen = width > 1200;

  // static bool isSmallScreen(BuildContext context) {
  //   return MediaQuery.of(context).size.width < 800;
  // }

  // static bool isLargeScreen(BuildContext context) {
  //   return MediaQuery.of(context).size.width > 1200;
  // }

  // static bool isMediumScreen(BuildContext context) {
  //   return MediaQuery.of(context).size.width >= 800 &&
  //       MediaQuery.of(context).size.width <= 1200;
  // }

  static double horizontal22 = width * 0.06;
  static double horizontal20 = width * 0.05;
  static double horizontal15 = width * 0.04;
  static double horizontal10 = width * 0.025;
  static double horizontal5 = width * 0.0125;
  static double horizontal1 = width * 0.01;

  // Vertical spacing With height
  static double vertical30 = height * 0.075;
  static double vertical25 = height * 0.06;
  static double vertical20 = height * 0.05;
  static double vertical15 = height * 0.0375;
  static double vertical10 = height * 0.025;
  static double vertical8 = height * 0.02;
  static double vertical6 = height * 0.015;
  static double vertical5 = height * 0.0125;
  static double vertical2 = height * 0.01;
  static double vertical1 = height * 0.008;

  // Font sizes
  // Calculate scaled font sizes based on screen width
  static const double font12 = 12.0;
  static const double font13 = 13.0;
  static const double font14 = 14.0;
  static const double font15 = 15.0;
  static const double font16 = 16.0;
  static const double font18 = 18.0;
  static const double font20 = 20.0;

  static const double font21 = 21.0;
  static const double font24 = 24.0;
  static const double font28 = 28.0;
  static const double font32 = 32.0;

  static const double font40 = 40.0;
  static const double font48 = 48.0;
  static const double font58 = 58.0;

  static const double font60 = 60.0;
  static const double70 = 70.0;

  static const double font80 = 80.0;
  static const double font88 = 88.0;
  // static double fontSize40 = width * 0.11;
  // static double fontSize38 = width * 0.095;
  // static double fontSize36 = width * 0.091;
  // static double fontSize34 = width * 0.085;
  // static double fontSize32 = width * 0.081;
  // static double fontSize30 = width * 0.075;

  // static double fontSize28 = width * 0.071;
  // static double fontSize26 = width * 0.065;
  // static double fontSize24 = width * 0.061;
  // static double fontSize22 = width * 0.056;
  // static double fontSize20 = width * 0.051;
  // static double fontSize18 = width * 0.046;
  // static double fontSize17 = width * 0.043;

  // static double fontSize16 = width * 0.041;
  // static double fontSize15 = width * 0.038;
  // static double fontSize14 = width * 0.036;
  // static double fontSize13 = width * 0.033;
  // static double fontSize12 = width * 0.031;
  // static double fontSize11 = width * 0.028;
  // static double fontSize10 = width * 0.025;
  // static double fontSize9 = width * 0.023;
  // static double fontSize8 = width * 0.02;

  // Button sizes
  static const double buttonHeight = 18.0;
  static const double buttonRadius = 12.0;
  static const double buttonWidth = 120.0;
  static const double buttonElevation = 4.0;

  // AppBar height
  static double appBarHeight = height * 0.085;

  // --------------- NOT IN USE ---------------
  // Padding and margin sizes
  static const double xs = 4.0;
  static const double sm = 8.0;
  static const double md = 16.0;
  static const double lg = 24.0;
  static const double xl = 32.0;
  // Icon sizes
  static const double iconXs = 12.0;
  static const double iconSm = 16.0;
  static const double iconMd = 24.0;
  static const double iconLg = 32.0;

  // Image sizes
  static const double imageThumbSize = 80.0;

  // Default spacing between sections
  // static double defaultSpace = height * 0.06;
  // static double spaceBtwItems = height * 0.038;
  // static double spaceBtwSections = height * 0.8;
  static const double defaultSpace = 24.0;
  static const double spaceBtwItems = 16.0;
  static const double spaceBtwSections = 32.0;

  // Border radius
  static const double borderRadiusSm = 4.0;
  static const double borderRadiusMd = 8.0;
  static const double borderRadiusLg = 12.0;

  // Divider height
  static const double dividerHeight = 1.0;

  // Product item dimensions
  static const double productImageSize = 120.0;
  static const double productImageRadius = 16.0;
  static const double productItemHeight = 160.0;

  // Input field
  static const double inputFieldRadius = 12.0;
  static const double spaceBtwInputFields = 16.0;

  // Card sizes
  static const double cardRadiusLg = 16.0;
  static const double cardRadiusMd = 12.0;
  static const double cardRadiusSm = 10.0;
  static const double cardRadiusXs = 6.0;
  static const double cardElevation = 2.0;

  // Image carousel height
  static const double imageCarouselHeight = 200.0;

  // Loading indicator size
  static const double loadingIndicatorSize = 36.0;

  // Grid view spacing
  static const double gridViewSpacing = 16.0;
}
