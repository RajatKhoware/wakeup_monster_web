import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:wakeup_web/features/about%20us/screen/about_us.dart';
import 'package:wakeup_web/features/client%20review/screen/client_review_section.dart';
import 'package:wakeup_web/features/contactus%20form/screen/contact_us_setion.dart';
import 'package:wakeup_web/features/home/screens/home_screen.dart';
import 'package:wakeup_web/features/our%20services/widget/build_services_colunm.dart';
import 'package:wakeup_web/features/why%20choose%20us/screen/why_choose_us_section.dart';
import 'package:wakeup_web/my%20web/controller/my_web_controller.dart';

import '../features/we help/screen/we_help_section.dart';

import '../utils/res/comman/app_colors.dart';
import '../features/home/widgets/home_appbar.dart';
import '../features/our services/screens/our_services_screen.dart';
import '../features/we help/screen/we_help_section.dart';

class MyWeb extends StatelessWidget {
  MyWeb({super.key});

  final MyWebController controller = Get.put(MyWebController());

  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.sizeOf(context).height;
    final width = MediaQuery.sizeOf(context).width;
    return Scaffold(
      backgroundColor: AppColors.blackBg,
      appBar: PreferredSize(
        preferredSize: Size(width, 80),
        child: const HomeAppBar(),
      ),
      body: SingleChildScrollView(
        controller: controller.scrollController,
        child: const Column(
          children: [
            // HomePage(),
            // OurServices(),
            // ClientReviewSection(),
            // WhyChooseUsSection(),
            ContactUsSection(),
            AboutUsSection()
          ],
        ),
      ),
    );
  }
}

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
