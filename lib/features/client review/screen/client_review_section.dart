import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:wakeup_web/utils/res/comman/app_images.dart';

import '../../../utils/res/comman/app_colors.dart';
import '../../../utils/res/my_text.dart';
import '../widget/review_card.dart';

class ClientReviewSection extends StatelessWidget {
  const ClientReviewSection({super.key});

  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.sizeOf(context).height;
    final width = MediaQuery.sizeOf(context).width;
    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        SizedBox(height: height * 0.1),
        Align(
          alignment: Alignment.center,
          child: MyTextPoppines(
            text: "DO YOU KNOW?",
            fontSize: width * 0.008,
            color: AppColors.orange,
            fontWeight: FontWeight.w600,
          ),
        ),
        Align(
          alignment: Alignment.center,
          child: MyTextPoppines(
            text: "WHY CLIENTS LOVE US",
               fontSize: width * 0.04,
              fontWeight: FontWeight.bold,
              color: AppColors.white,
              letterSpacing: -5,
          ),
        ),
        Align(
          alignment: Alignment.center,
          child: MyTextPoppines(
            text:
                "Don’t take a word for it. See what our partners have to say about us",
            fontSize: width * 0.008,
            color: AppColors.white,
            fontWeight: FontWeight.w400,
          ),
        ),
        SizedBox(height: height * 0.06),
        SizedBox(
          height: height * 0.4,
          child: ScrollConfiguration(
            behavior: ScrollConfiguration.of(context).copyWith(
              dragDevices: {
                PointerDeviceKind.touch,
                PointerDeviceKind.mouse,
              },
            ),
            child: ListView.builder(
              reverse: true,
              physics: const AlwaysScrollableScrollPhysics(),
              scrollDirection: Axis.horizontal,
              itemCount: 10,
              itemBuilder: (context, index) {
                return const ReviewCard(
                  title:
                      "Web development for a digital sports products company",
                  subTitle:
                      "“Their passion and dedication to the tasks are impressive. Thanks to Uinno’s efforts, they’ve worked hard to reduce downtime on our products. The team has been accessible, and they’ve delivered the platform in a timely manner. Their passion and commitment have stood out in the partnership.”",
                  image: AppImg.blackMonster,
                  name: "Rajat Khoware",
                  designation: "Founder Wakeup Monsters",
                );
              },
            ),
          ),
        )
      ],
    );
  }
}
