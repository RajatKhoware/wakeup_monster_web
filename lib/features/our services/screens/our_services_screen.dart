import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:wakeup_web/utils/res/comman/app_colors.dart';

import '../../../utils/res/my_text.dart';
import '../../we help/screen/we_help_section.dart';
import '../widget/build_services_colunm.dart';

class OurServices extends StatelessWidget {
  const OurServices({super.key});

  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.sizeOf(context).height;
    final width = MediaQuery.sizeOf(context).width;
    return Container(
      width: width,
      padding: EdgeInsets.symmetric(
        vertical: height * 0.06,
        horizontal: width * 0.015,
      ),
      color: AppColors.white,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          SizedBox(height: height * 0.1),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: width * 0.01),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Padding(
                  padding: EdgeInsets.only(left: width * 0.0),
                  child: Column(
                    children: [
                      SizedBox(
                        width: width * 0.3,
                        child: MyTextPoppines(
                          text: "OUR PRODUCT DEVELOPMENT SERVICES",
                          fontSize: width * 0.03,
                          color: AppColors.lightGreen,
                          letterSpacing: -2,
                          fontWeight: FontWeight.bold,
                          maxLines: 3,
                          height: 1.1,
                        ),
                      ),
                      SizedBox(height: height * 0.014),
                      SizedBox(
                        width: width * 0.3,
                        child: MyTextPoppines(
                          text:
                              "We can provide just one service or make a combination of the best-fitting expertise required for your project.",
                          fontSize: width * 0.008,
                          color: AppColors.blackBg.withOpacity(0.6),
                          fontWeight: FontWeight.w500,
                          maxLines: 3,
                          height: 1.4,
                        ),
                      ),
                    ],
                  ),
                ),
                // Services card
                Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const BuildServicesColunm(isMarketingService: true),
                    SizedBox(width: width * 0.03),
                    const BuildServicesColunm(isMarketingService: false),
                  ],
                ),
              ],
            ),
          ),
          SizedBox(height: height * 0.2),
         const WeHelpSection(),
        ],
      ),
    );
  }
}
