import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:wakeup_web/features/about%20us/screen/about_us.dart';
import 'package:wakeup_web/features/client%20review/screen/client_review_section.dart';
import 'package:wakeup_web/features/contactus%20form/screen/contact_us_setion.dart';
import 'package:wakeup_web/features/home/screens/home_screen.dart';
import 'package:wakeup_web/features/why%20choose%20us/screen/why_choose_us_section.dart';
import 'package:wakeup_web/my%20web/controller/my_web_controller.dart';

import '../features/we help/screen/we_help_section.dart';
import '../utils/res/comman/app_colors.dart';
import '../features/home/widgets/home_appbar.dart';
import '../features/our services/screens/our_services_screen.dart';

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
            HomePage(),
            OurServices(),
            ClientReviewSection(),
            WhyChooseUsSection(),
            ContactUsSection(),
            AboutUsSection()
          ],
        ),
      ),
    );
  }
}


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