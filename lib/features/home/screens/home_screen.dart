import 'package:flutter/material.dart';
import 'package:wakeup_web/features/home/widgets/home_reviews_section.dart';
import 'package:wakeup_web/features/home/widgets/lets_talk.dart';
import 'package:wakeup_web/utils/constant/app_sizer.dart';
import 'package:wakeup_web/utils/res/comman/app_colors.dart';
import 'package:wakeup_web/utils/res/comman/app_text.dart';

import '../../../utils/res/helper/my_custom_painter.dart';
import '../../../utils/res/my_text.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.sizeOf(context).height;
    final width = MediaQuery.sizeOf(context).width;
    bool isMobile = width < 600;
    bool isWin = width > 1270;
    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Align(
          alignment: Alignment.center,
          child: Container(
            width: width,
            color: AppColors.blackBg,
            padding: EdgeInsets.symmetric(vertical: height * 0.01),
            child: Column(
              children: [
                SizedBox(height: width * 0.1),
                // Text
                const SelectablePoppines(
                  text: AppText.innovateWithUs,
                  color: AppColors.orange,
                  fontWeight: FontWeight.w600,
                  fontSize: AppSizer.font15,

                  //   fontSize: isMobile ? width * 0.03 : 16,
                  //  fontSize: width * 0.008,
                ),
                const HomeBanner(), // Banner + Headlines
                SizedBox(height: isMobile ? 20 : width * 0.015),
                SizedBox(
                  width: isMobile ? width * 0.9 : 500,
                  // width: isMobile ? width * 0.9 : width * 0.3,
                  child: const MyTextPoppines(
                    text: AppText.homesubHeadline,
                    color: AppColors.white,
                    fontWeight: FontWeight.normal,
                    fontSize: AppSizer.font15,
                    maxLines: 10,
                    height: 1.6,
                    textAlign: TextAlign.center,
                  ),
                ),
                // SizedBox(height: isMobile ? height * 0.03 : width * 0.04),
                SizedBox(height: isMobile ? 60 : 120),
                //Lets talk business
                const LetsTalk(),
                SizedBox(height: isMobile ? height * 0.02 : height * 0.03),
                if (isWin)
                  Container(
                    margin: EdgeInsets.only(right: width * 0.01),
                    width: width * 0.001,
                    height: height * 0.3,
                    color: AppColors.lightGreen,
                  )
                else
                  Container(
                    margin: EdgeInsets.only(right: width * 0.01),
                    width: 2,
                    height: height * 0.16,
                    color: AppColors.lightGreen,
                  ),
                SizedBox(height: height * 0.015),
                // Founder Quate
                const HomeReviewSection(),
                SizedBox(height: width * 0.07),
              ],
            ),
          ),
        ),
      ],
    );
  }
}

class HomeBanner extends StatelessWidget {
  const HomeBanner({super.key});

  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.sizeOf(context).height;
    final width = MediaQuery.sizeOf(context).width;
    bool isMobile = width < 600;
    bool isTab = width >= 600 && width < 1271;
    bool isWeb = width >= 1270;
    // bool isWin = width > 1270;
    // bool isMobile = width < 600;
    return SizedBox(
      child: CustomPaint(
        painter: MyRectanglePainter(),
        size: Size(width, height * 0.3),
        child: SizedBox(
          width: isWeb ? width * 0.8 : width,
          child: Center(
            child: Padding(
              padding: EdgeInsets.only(
                top: height * 0.05,
                left: width * 0.1,
                right: width * 0.1,
                bottom: height * 0.03,
              ),
              child: MyTextPoppines(
                text: AppText.webMobileAI,
                color: Colors.white,
                fontWeight: FontWeight.bold,
                fontSize: isMobile
                    ? width * 0.07
                    : isTab
                        ? width * 0.05
                        : AppSizer.font60,
                //   fontSize: isMobile ? width * 0.07 : width * 0.04,
                height: isMobile ? 1.2 : 1,
                maxLines: 4,
                textAlign: TextAlign.center,
              ),
            ),
          ),
        ),
      ),
    );
  }
}
