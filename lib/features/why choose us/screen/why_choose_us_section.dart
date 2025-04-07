import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/material.dart';
import 'package:wakeup_web/features/our%20services/widget/services_card.dart';
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

    return Container(
      color: AppColors.white,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          SizedBox(height: height * 0.1),
          Align(
            alignment: Alignment.center,
            child: MyTextPoppines(
              text: AppText.whyChooseAs,
              fontSize: width * 0.008,
              color: AppColors.orange,
              fontWeight: FontWeight.w500,
            ),
          ),
          Align(
            alignment: Alignment.center,
            child: MyTextPoppines(
              text: AppText.yourDevPatner,
              fontSize: width * 0.04,
              fontWeight: FontWeight.bold,
              color: AppColors.blackBg,
              letterSpacing: -5,
            ),
          ),
          SizedBox(height: height * 0.04),
          // Cards
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              CustomPaint(
                painter: DecrementedCustomRectangle(),
                size: Size(width * 0.18, height * 0.18),
                child: buildCardContent(
                  context,
                  "60",
                  AppText.whyChooseCard1,
                ),
              ),
              SizedBox(width: width * 0.015),
              CustomPaint(
                painter: IncrementedCustomRectangle(),
                size: Size(width * 0.18, height * 0.18),
                child: buildCardContent(
                  context,
                  "90",
                  AppText.whyChooseCard2,
                ),
              ),
            ],
          ),
          SizedBox(height: height * 0.1),
          SizedBox(
            child: CustomPaint(
              painter: MyRectanglePainter(),
              size: Size(width * 0.02, height * 0.02),
              child: Padding(
                padding: EdgeInsets.only(
                  top: height * 0.01,
                  left: width * 0.04,
                  right: width * 0.04,
                  bottom: height * 0.01,
                ),
                child: MyTextPoppines(
                  text: "Wonder Why ?",
                  fontSize: width * 0.01,
                  color: AppColors.white,
                  fontWeight: FontWeight.w700,
                ),
              ),
            ),
          ),

          SizedBox(height: height * 0.06),
          Row(
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
          SizedBox(height: height * 0.24),
        ],
      ),
    );
  }

  Widget buildCardContent(
      BuildContext context, String heading, String subHeading) {
    final height = MediaQuery.sizeOf(context).height;
    final width = MediaQuery.sizeOf(context).width;
    return Padding(
      padding: EdgeInsets.symmetric(
        horizontal: width * 0.015,
        vertical: height * 0.026,
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          MyTextPoppines(
            text: heading,
            fontSize: width * 0.034,
            fontWeight: FontWeight.bold,
            color: AppColors.orange,
          ),
          Padding(
            padding: EdgeInsets.only(bottom: height * 0.03),
            child: Align(
              alignment: Alignment.topCenter,
              child: MyTextPoppines(
                text: "%",
                fontSize: width * 0.01,
                fontWeight: FontWeight.bold,
                color: AppColors.orange,
              ),
            ),
          ),
          SizedBox(width: width * 0.01),
          SizedBox(
            width: width * 0.12,
            child: MyTextPoppines(
              text: subHeading,
              fontSize: width * 0.007,
              fontWeight: FontWeight.w400,
              color: AppColors.black,
              maxLines: 3,
            ),
          ),
        ],
      ),
    );
  }

  Widget buildPoints(BuildContext context, String heading, String subHeading) {
    final height = MediaQuery.sizeOf(context).height;
    final width = MediaQuery.sizeOf(context).width;
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
        SizedBox(width: width * 0.006),
        SizedBox(
          width: width * 0.2,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              MyTextPoppines(
                text: heading,
                fontSize: width * 0.01,
                color: AppColors.black,
                fontWeight: FontWeight.w600,
                height: 1.4,
              ),
              SizedBox(height: height * 0.01),
              MyTextPoppines(
                text: subHeading,
                fontSize: width * 0.0085,
                color: AppColors.black.withOpacity(0.8),
                fontWeight: FontWeight.w400,
                maxLines: 10,
              ),
            ],
          ),
        )
      ],
    );
  }
}
