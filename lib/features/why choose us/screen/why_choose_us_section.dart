import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/material.dart';
import 'package:wakeup_web/features/our%20services/widget/services_card.dart';
import 'package:wakeup_web/utils/constant/app_sizer.dart';
import 'package:wakeup_web/utils/res/comman/app_text.dart';

import '../../../utils/res/comman/app_colors.dart';
import '../../../utils/res/my_text.dart';
import '../widget/decremented_custom_rectangle.dart';
import '../widget/incremented_rcustom_ectangle.dart';

class WhyChooseUsSection extends StatelessWidget {
  const WhyChooseUsSection({super.key});

  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.sizeOf(context).height;
    final width = MediaQuery.sizeOf(context).width;
    bool isMobile = width < 600;
    bool isTab = width >= 600 && width < 1271;
    bool isWeb = width >= 1270;
    return Container(
      color: AppColors.white,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          SizedBox(height: isMobile ? 80 : height * 0.08),
          //   SizedBox(height: height * 0.1),
          const Align(
            alignment: Alignment.center,
            child: MyTextPoppines(
              text: AppText.whyChooseAs,
              fontSize: AppSizer.font15,
              //   fontSize: width * 0.008,
              color: AppColors.orange,
              fontWeight: FontWeight.w500,
            ),
          ),
          SizedBox(height: isMobile ? 10 : 0),
          Align(
            alignment: Alignment.center,
            child: SizedBox(
              width: isMobile ? width * 0.8 : width,
              child: MyTextPoppines(
                text: AppText.yourDevPatner,
                fontSize: isMobile
                    ? AppSizer.font28
                    : isTab
                        ? AppSizer.font40
                        : AppSizer.font48,
                //  fontSize: width * 0.04,
                fontWeight: FontWeight.bold,
                color: AppColors.blackBg,
                textAlign: TextAlign.center,
                height: isMobile ? 1.5 : 1.4,
                letterSpacing: isMobile ? -1 : -2,
              ),
            ),
          ),

          SizedBox(height: isMobile ? 50 : height * 0.04),
          if (width <= 1000) ...[
            SizedBox(
              width: isMobile ? width * .8 : 450,
              child: CustomPaint(
                painter: DecrementedCustomRectangle(),
                size: Size(width * 0.22, height * 0.18),
                child: buildCardContent(
                  context,
                  "60",
                  AppText.whyChooseCard1,
                ),
              ),
            ),
            const SizedBox(height: 10),
            SizedBox(
              width: isMobile ? width * .8 : 450,
              child: CustomPaint(
                painter: IncrementedCustomRectangle(),
                size: Size(width * 0.22, height * 0.18),
                child: buildCardContent(
                  context,
                  "90",
                  AppText.whyChooseCard2,
                ),
              ),
            ),
          ] else
            // Cards
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                SizedBox(
                  //    width: width * 0.3,
                  width: isWeb ? width * 0.3 : width * 0.33,
                  child: CustomPaint(
                    painter: DecrementedCustomRectangle(),
                    size: Size(width * 0.3, height * 0.18),
                    child: buildCardContent(
                      context,
                      "60",
                      AppText.whyChooseCard1,
                    ),
                  ),
                ),
                SizedBox(width: width * 0.015),
                SizedBox(
                  width: isWeb ? width * 0.3 : width * 0.33,
                  //    width: width * 0.3,
                  //  width: isWeb ? width * 0.28 : width * 0.3,
                  child: CustomPaint(
                    painter: IncrementedCustomRectangle(),
                    size: Size(width * 0.3, height * 0.18),
                    child: buildCardContent(
                      context,
                      "90",
                      AppText.whyChooseCard2,
                    ),
                  ),
                ),
              ],
            ),
          SizedBox(height: width >= 1000 ? width * 0.06 : 80),
          // SizedBox(height: height * 0.1),
          SizedBox(
            child: CustomPaint(
              painter: MyRectanglePainter(),
              size: Size(width * 0.02, height * 0.02),
              child: Padding(
                padding: EdgeInsets.only(
                  top: isMobile ? 12 : height * 0.01,
                  left: isMobile ? 24 : width * 0.04,
                  right: isMobile ? 24 : width * 0.04,
                  bottom: isMobile ? 12 : height * 0.01,
                ),
                child: MyTextPoppines(
                  text: "Wonder Why ?",
                  fontSize: isMobile
                      ? AppSizer.font14
                      : isTab
                          ? AppSizer.font16
                          : AppSizer.font18,
                  //  fontSize: width * 0.01,
                  color: AppColors.white,
                  fontWeight: FontWeight.w700,
                ),
              ),
            ),
          ),
          SizedBox(height: isMobile ? 40 : height * 0.06),
          isMobile
              ? Padding(
                  padding: EdgeInsets.only(left: width * 0.06),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      buildPoints(
                        context,
                        AppText.chooseUsPointHeading1,
                        AppText.chooseUsPointSubHeading1,
                      ),
                      const SizedBox(height: 30),
                      buildPoints(
                        context,
                        AppText.chooseUsPointHeading2,
                        AppText.chooseUsPointSubHeading2,
                      ),
                      const SizedBox(height: 30),
                      buildPoints(
                        context,
                        AppText.chooseUsPointHeading3,
                        AppText.chooseUsPointSubHeading3,
                      ),
                    ],
                  ),
                )
              : Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    buildPoints(
                      context,
                      AppText.chooseUsPointHeading1,
                      AppText.chooseUsPointSubHeading1,
                    ),
                    SizedBox(width: width * 0.04),
                    buildPoints(
                      context,
                      AppText.chooseUsPointHeading2,
                      AppText.chooseUsPointSubHeading2,
                    ),
                    SizedBox(width: width * 0.04),
                    buildPoints(
                      context,
                      AppText.chooseUsPointHeading3,
                      AppText.chooseUsPointSubHeading3,
                    ),
                  ],
                ),
          SizedBox(height: isMobile ? 80 : 120),
        ],
      ),
    );
  }

  Widget buildCardContent(
    BuildContext context,
    String heading,
    String subHeading,
  ) {
    final height = MediaQuery.sizeOf(context).height;
    final width = MediaQuery.sizeOf(context).width;
    bool isMobile = width < 600;
    bool isTab = width >= 600 && width < 1271;
    bool isWeb = width >= 1270;
    bool is1000 = width <= 1000;
    return Padding(
      padding: EdgeInsets.symmetric(
        horizontal: isWeb
            ? width * 0.015
            : isTab
                ? width * 0.025
                : 20,
        vertical: isMobile ? 30 : height * 0.026,
      ),
      child: Row(
        mainAxisAlignment:
            isWeb ? MainAxisAlignment.center : MainAxisAlignment.start,
        children: [
          MyTextPoppines(
            text: heading,
            //    fontSize: width * 0.034,
            fontSize: isMobile
                ? 38
                : isTab
                    ? AppSizer.font48
                    : AppSizer.font48,
            fontWeight: FontWeight.bold,
            color: AppColors.orange,
          ),
          Padding(
            padding: EdgeInsets.only(bottom: height * 0.03),
            child: Align(
              alignment: Alignment.topCenter,
              child: MyTextPoppines(
                text: "%",
                fontSize: isMobile
                    ? 10
                    : isTab
                        ? AppSizer.font16
                        : AppSizer.font20,
                //  fontSize: width * 0.01,
                fontWeight: FontWeight.bold,
                color: AppColors.orange,
              ),
            ),
          ),
          SizedBox(width: isWeb ? width * 0.01 : width * 0.02),
          SizedBox(
            width: isMobile
                ? width * 0.5
                : is1000
                    ? width * 0.3
                    : isTab
                        ? width * 0.18
                        : width * .2,
            // width: isWeb
            //     ? width * .18
            //     : isTab
            //         ? width * 0.3
            //         : width * 0.4,
            child: MyTextPoppines(
              text: subHeading,
              fontSize: isMobile
                  ? 12
                  : isTab
                      ? 12
                      : 14,
              // fontSize: width * 0.007,
              fontWeight: FontWeight.w400,
              color: AppColors.black,
              maxLines: 4,
              height: isMobile ? 1.6 : 1.4,
            ),
          ),
        ],
      ),
    );
  }

  Widget buildPoints(BuildContext context, String heading, String subHeading) {
    final height = MediaQuery.sizeOf(context).height;
    final width = MediaQuery.sizeOf(context).width;
    bool isMobile = width < 600;
    bool isTab = width >= 600 && width < 1271;
    bool isWeb = width >= 1270;
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Transform.rotate(
          angle: 45 * 3.141592653589793 / 180, // 45 degrees in radians
          child: Container(
            width: 6,
            height: 6,
            color: AppColors.orange,
            margin: const EdgeInsets.only(top: 10),
          ),
        ),
        SizedBox(width: isMobile ? 10 : width * 0.006),
        SizedBox(
          width: isMobile
              ? width * 0.8
              : isTab
                  ? width * .25
                  : 320,
          //    width: width * 0.2,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              MyTextPoppines(
                text: heading,
                fontSize: AppSizer.font16,
                //   fontSize: width * 0.01,
                color: AppColors.black,
                fontWeight: FontWeight.w600,
                height: 1.4,
                maxLines: 4,
              ),
              SizedBox(height: height * 0.01),
              MyTextPoppines(
                text: subHeading,
                fontSize: AppSizer.font14,
                height: isMobile ? 1.6 : 1.4,
                // fontSize: width * 0.0085,
                color: AppColors.black.withOpacity(0.8),
                fontWeight: FontWeight.w400,
                maxLines: 20,
              ),
            ],
          ),
        )
      ],
    );
  }
}
