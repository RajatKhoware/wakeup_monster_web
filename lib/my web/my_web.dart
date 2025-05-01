import 'dart:typed_data';
import 'dart:ui';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:get/get.dart';
import 'package:go_router/go_router.dart';
import 'package:wakeup_web/features/about%20us/screen/about_us.dart';
import 'package:wakeup_web/features/client%20review/screen/client_review_section.dart';
import 'package:wakeup_web/features/contactus%20form/screen/contact_us_setion.dart';
import 'package:wakeup_web/features/home/screens/home_screen.dart';
import 'package:wakeup_web/features/home/screens/what_makes_us_section.dart';
import 'package:wakeup_web/features/our%20services/widget/build_services_colunm.dart';
import 'package:wakeup_web/features/why%20choose%20us/screen/why_choose_us_section.dart';
import 'package:wakeup_web/my%20web/controller/my_web_controller.dart';
import 'package:wakeup_web/utils/res/comman/app_images.dart';
import 'package:wakeup_web/utils/res/comman/app_text.dart';
import 'package:wakeup_web/utils/res/my_text.dart';
import 'package:wakeup_web/utils/res/routing/app_pages.dart';

import '../features/we help/screen/we_help_section.dart';

import '../utils/res/comman/app_colors.dart';
import '../features/home/widgets/home_appbar.dart';
import '../features/our services/screens/our_services_screen.dart';
import '../features/we help/screen/we_help_section.dart';
import 'dart:html' as html;

// Create a GlobalKey to access the RepaintBoundary's state.
final GlobalKey<ScaffoldState> scaffoldKey = GlobalKey<ScaffoldState>();

class MyWeb extends StatefulWidget {
  MyWeb({super.key});

  @override
  State<MyWeb> createState() => _MyWebState();
}

class _MyWebState extends State<MyWeb> {
  final MyWebController controller = Get.put(MyWebController());
  final GlobalKey _globalKey = GlobalKey();

  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.sizeOf(context).height;
    final width = MediaQuery.sizeOf(context).width;

    bool isMobile = width < 600;
    bool isTab = width >= 600 && width < 1271;
    bool isWeb = width >= 1270;

    return Scaffold(
      backgroundColor: AppColors.blackBg,
      key: scaffoldKey,
      drawer: isMobile || isTab ? buildDrawer(context) : null,
      appBar: PreferredSize(
        preferredSize: Size(width, 80),
        child: const HomeAppBar(),
      ),
      body: RepaintBoundary(
        key: _globalKey,
        child: SingleChildScrollView(
          controller: controller.scrollController,
          child: const Column(
            children: [
              HomePage(),
              WhatMakesUsSection(),
              OurServices(),
              WeHelpSection(),
              ClientReviewSection(),
              WhyChooseUsSection(),
              ContactUsSection(),
              AboutUsSection(),
            ],
          ),
        ),
      ),
    );
  }

  Widget buildDrawer(BuildContext context) {
    return Drawer(
      backgroundColor: AppColors.blackBg,
      shape: const RoundedRectangleBorder(
        borderRadius: BorderRadius.only(
          topRight: Radius.circular(0),
          bottomRight: Radius.circular(0),
        ),
      ),
      child: ListView(
        padding: EdgeInsets.zero,
        children: [
          DrawerHeader(child: Image.asset(AppImg.logo)),
          // buildExpansionTile(title: AppText.portfolio),
          // buildExpansionTile(title: AppText.services),
          // buildExpansionTile(title: AppText.solutions),
          ListTile(
            title: const MyTextPoppines(
              text: AppText.portfolio,
              fontSize: 16,
              color: AppColors.white,
            ),
            onTap: () {
              Navigator.pop(context);
              context.push(AppRoutes.siteUnderMaintaince);
            },
          ),
          ListTile(
            title: const MyTextPoppines(
              text: AppText.services,
              fontSize: 16,
              color: AppColors.white,
            ),
            onTap: () {
              Navigator.pop(context);
              context.push(AppRoutes.siteUnderMaintaince);
            },
          ),
          ListTile(
            title: const MyTextPoppines(
              text: AppText.solutions,
              fontSize: 16,
              color: AppColors.white,
            ),
            onTap: () {
              Navigator.pop(context);
              context.push(AppRoutes.siteUnderMaintaince);
            },
          ),
          ListTile(
            title: const MyTextPoppines(
              text: AppText.pricing,
              fontSize: 16,
              color: AppColors.white,
            ),
            onTap: () {
              Navigator.pop(context);
              context.push(AppRoutes.siteUnderMaintaince);
            },
          ),
          // buildExpansionTile(title: AppText.industries),
          ListTile(
            title: const MyTextPoppines(
              text: AppText.aboutUs,
              fontSize: 16,
              color: AppColors.white,
            ),
            onTap: () {
              Navigator.pop(context);
              context.push(AppRoutes.siteUnderMaintaince);
            },
          ),
          ListTile(
            title: const MyTextPoppines(
              text: AppText.contactUs,
              color: AppColors.lightGreen,
              fontSize: 16,
            ),
            onTap: () {
              Navigator.pop(context);
              context.push(AppRoutes.siteUnderMaintaince);
            },
          ),
        ],
      ),
    );
  }

  Widget buildExpansionTile({required String title}) {
    return Theme(
      data: ThemeData().copyWith(dividerColor: Colors.transparent),
      child: ExpansionTile(
        collapsedIconColor: Colors.white,
        iconColor: Colors.white,
        title: Text(title, style: TextStyle(color: Colors.white)),
        children: [
          ListTile(
            title: Text('Sub Menu 1', style: TextStyle(color: Colors.grey)),
            onTap: () => context.push(AppRoutes.siteUnderMaintaince),
          ),
          ListTile(
            title: Text('Sub Menu 2', style: TextStyle(color: Colors.grey)),
            onTap: () => context.push(AppRoutes.siteUnderMaintaince),
          ),
        ],
      ),
    );
  }
}

// 381 8 710
/// 1. Responsive app bar
/// 2. Fix minor responsive issues
/// 3. redirect all interaction to site under maintance

///////
/*
 1. Lets Talk setup
 2. Review animation 
 3. Services Heading continous scrolling
 4. Serices pages
 5. We help pages
 6. Real client review and Images
 7. Contact form working
 8. Click box
 9. Attach file option
 10. Firebase storage integration
 11, Book a Call calander integration
 12. Photo of us 
 13. Contact mail / HR mail 
 14. Socail Media Integration
 15. Privacy policy page
 16. More contact page
 */

// import 'package:flutter/cupertino.dart';
// import 'package:flutter/material.dart';
// import 'package:wakeup_web/utils/res/comman/app_colors.dart';

// import '../../../utils/res/my_text.dart';
// import '../../we help/screen/we_help_section.dart';
// import '../widget/build_services_colunm.dart';

// class OurServices extends StatelessWidget {
//   const OurServices({super.key});

//   @override
//   Widget build(BuildContext context) {
//     final height = MediaQuery.sizeOf(context).height;
//     final width = MediaQuery.sizeOf(context).width;
//     return Container(
//       width: width,
//       padding: EdgeInsets.symmetric(
//         vertical: height * 0.06,
//         horizontal: width * 0.015,
//       ),
//       color: AppColors.white,
//       child: Column(
//         crossAxisAlignment: CrossAxisAlignment.center,
//         children: [
//           SizedBox(height: height * 0.1),
//           Padding(
//             padding: EdgeInsets.symmetric(horizontal: width * 0.01),
//             child: Row(
//               mainAxisAlignment: MainAxisAlignment.spaceBetween,
//               children: [
//                 Padding(
//                   padding: EdgeInsets.only(left: width * 0.0),
//                   child: Column(
//                     children: [
//                       SizedBox(
//                         width: width * 0.3,
//                         child: MyTextPoppines(
//                           text: "OUR PRODUCT DEVELOPMENT SERVICES",
//                           fontSize: width * 0.03,
//                           color: AppColors.lightGreen,
//                           letterSpacing: -2,
//                           fontWeight: FontWeight.bold,
//                           maxLines: 3,
//                           height: 1.1,
//                         ),
//                       ),
//                       SizedBox(height: height * 0.014),
//                       SizedBox(
//                         width: width * 0.3,
//                         child: MyTextPoppines(
//                           text:
//                               "We can provide just one service or make a combination of the best-fitting expertise required for your project.",
//                           fontSize: width * 0.008,
//                           color: AppColors.blackBg.withOpacity(0.6),
//                           fontWeight: FontWeight.w500,
//                           maxLines: 3,
//                           height: 1.4,
//                         ),
//                       ),
//                     ],
//                   ),
//                 ),
//                 // Services card
//                 Row(
//                   crossAxisAlignment: CrossAxisAlignment.start,
//                   children: [
//                     const BuildServicesColunm(isMarketingService: true),
//                     SizedBox(width: width * 0.03),
//                     const BuildServicesColunm(isMarketingService: false),
//                   ],
//                 ),
//               ],
//             ),
//           ),
//           SizedBox(height: height * 0.2),
//           const WeHelpSection(),
//         ],
//       ),
//     );
//   }
// }
