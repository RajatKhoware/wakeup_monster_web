import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:wakeup_web/features/our%20services/widget/services_card.dart';
import 'package:wakeup_web/utils/res/comman/app_images.dart';
import 'package:wakeup_web/utils/res/comman/app_text.dart';
import 'package:wakeup_web/utils/res/helper/my_custom_painter.dart';

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
        SizedBox(height: height * 0.07),
        SizedBox(
          width: width * 0.4,
          child: MyTextPoppines(
            text: "WHY CLIENTS LOVE US",
            fontSize: width * 0.03,
            color: AppColors.lightGreen,
            letterSpacing: -2,
            fontWeight: FontWeight.bold,
            maxLines: 3,
            height: 1.1,
            textAlign: TextAlign.center,
          ),
        ),
        SizedBox(height: height * 0.014),
        SizedBox(
          width: width * 0.6,
          child: MyTextPoppines(
            text:
                "Don’t take a word for it. See what our partners have to say about us",
            fontSize: width * 0.008,
            color: AppColors.white.withOpacity(0.6),
            fontWeight: FontWeight.w500,
            textAlign: TextAlign.center,
            maxLines: 3,
            height: 1.4,
          ),
        ),
        SizedBox(height: height * 0.08),
        // SizedBox(height: height * 0.06),
        // Align(
        //   alignment: Alignment.center,
        //   child: MyTextPoppines(
        //     text: "DO YOU KNOW?",
        //     fontSize: width * 0.008,
        //     color: AppColors.orange,
        //     fontWeight: FontWeight.w600,
        //   ),
        // ),
        // Align(
        //   alignment: Alignment.center,
        //   child: MyTextPoppines(
        //     text: "WHY CLIENTS LOVE US",
        //     // fontSize: width * 0.03,
        //     // color: AppColors.white,
        //     // letterSpacing: -2,
        //     // fontWeight: FontWeight.bold,
        //     // maxLines: 3,
        //     // height: 1.1,
        //     // textAlign: TextAlign.center,
        //     fontSize: width * 0.04,
        //     fontWeight: FontWeight.bold,
        //     color: AppColors.lightGreen,
        //     letterSpacing: -5,
        //     height: 0,
        //   ),
        // ),

        // Align(
        //   alignment: Alignment.center,
        //   child: MyTextPoppines(
        //     text:
        //         "Don’t take a word for it. See what our partners have to say about us",
        //     fontSize: width * 0.008,
        //     color: AppColors.white.withOpacity(0.6),
        //     //     color: AppColors.white,
        //     fontWeight: FontWeight.w400,
        //   ),
        // ),
        //  SizedBox(height: height * 0.08),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ReviewCard2(
              width: 0.25,
              title: "Web development for a digital sports products company",
              subTitle:
                  "“Their passion and dedication to the tasks are impressive. Thanks to Uinno’s efforts, they’ve worked hard to reduce downtime on our products. The team has been accessible, and they’ve delivered the platform in a timely manner. Their passion and commitment have stood out in the partnership.”",
              image: AppImg.blackMonster,
              name: "Rajat Khoware",
              designation: "Founder Wakeup Monsters",
            ),
            ReviewCard2(
              width: 0.21,
              title: "Web development for a digital sports products company",
              subTitle:
                  "“Their passion and dedication to the tasks are impressive. Thanks to Uinno’s efforts, they’ve worked hard to reduce downtime on our products. The team has been accessible, and they’ve delivered the platform in a timely manner. Their passion and commitment have stood out in the partnership.”",
              image: AppImg.blackMonster,
              name: "Rajat Khoware",
              designation: "Founder Wakeup Monsters",
            ),
            ReviewCard2(
              width: 0.25,
              title: "Web development for a digital sports products company",
              subTitle:
                  "“Their passion and dedication to the tasks are impressive. Thanks to Uinno’s efforts, they’ve worked hard to reduce downtime on our products. The team has been accessible, and they’ve delivered the platform in a timely manner. Their passion and commitment have stood out in the partnership.”",
              image: AppImg.blackMonster,
              name: "Rajat Khoware",
              designation: "Founder Wakeup Monsters",
            )
          ],
        ),
        Row(
          //mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            Spacer(),
            ReviewCard2(
              title: "Web development for a digital sports products company",
              subTitle:
                  "“Their passion and dedication to the tasks are impressive. Thanks to Uinno’s efforts, they’ve worked hard to reduce downtime on our products. The team has been accessible, and they’ve delivered the platform in a timely manner. Their passion and commitment have stood out in the partnership.”",
              image: AppImg.blackMonster,
              name: "Rajat Khoware",
              designation: "Founder Wakeup Monsters",
            ),
            ReviewCard2(
              title: "Web development for a digital sports products company",
              subTitle:
                  "“Their passion and dedication to the tasks are impressive. Thanks to Uinno’s efforts, they’ve worked hard to reduce downtime on our products. The team has been accessible, and they’ve delivered the platform in a timely manner. Their passion and commitment have stood out in the partnership.”",
              image: AppImg.blackMonster,
              name: "Rajat Khoware",
              designation: "Founder Wakeup Monsters",
            ),
            Spacer()
          ],
        ),
        Row(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ReviewCard2(
              width: .12,
              title: "Web development for a digital sports products company",
              subTitle:
                  "“Their passion and dedication to the tasks are impressive. Thanks to Uinno’s efforts, they’ve worked hard .”",
              image: AppImg.blackMonster,
              name: "Rajat Khoware",
              designation: "Founder Wakeup Monsters",
            ),
            ReviewCard2(
              width: .12,
              title: "Web development for a digital sports products company",
              subTitle:
                  "“Their passion and dedication to the tasks are impressive. Thanks to Uinno’s efforts, they’ve worked hard .”",
              image: AppImg.blackMonster,
              name: "Rajat Khoware",
              designation: "Founder Wakeup Monsters",
            ),
            ReviewCard2(
              width: .12,
              title: "Web development for a digital sports products company",
              subTitle:
                  "“Their passion and dedication to the tasks are impressive. Thanks to Uinno’s efforts, they’ve worked hard .”",
              image: AppImg.blackMonster,
              name: "Rajat Khoware",
              designation: "Founder Wakeup Monsters",
            ),
          ],
        ),

        SizedBox(height: height * 0.04),
        Container(
          width: width,
          decoration: BoxDecoration(color: AppColors.white.withOpacity(0.12)),
          padding: EdgeInsets.symmetric(
            vertical: height * 0.04,
            horizontal: width * 0.1,
          ),
          margin: EdgeInsets.symmetric(horizontal: width * 0.05),
          child: Row(
            children: [
              Column(
                children: [
                  MyText(
                    text: "WONDERING",
                    color: AppColors.lightGreen,
                    fontWeight: FontWeight.w800,
                    fontSize: width * 0.028,
                    height: 1,
                    maxLines: 1,
                    googleFontFamily: "Plus Jakarta Sans",
                  ),
                  SizedBox(height: height * 0.012),
                  MyText(
                    text: "what next?",
                    color: Colors.white,
                    fontWeight: FontWeight.w600,
                    fontSize: width * 0.025,
                    height: 1,
                    maxLines: 1,
                    googleFontFamily: "Plus Jakarta Sans",
                  ),
                ],
              ),
              const Spacer(),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(
                    width: width * 0.3,
                    child: MyText(
                      text:
                          "Here's where you are right now: Staring at exactly what you've been looking for in a creative agency.",
                      color: Colors.white,
                      fontWeight: FontWeight.w500,
                      fontSize: width * 0.008,
                      height: 1.4,
                      googleFontFamily: "Plus Jakarta Sans",
                      textAlign: TextAlign.start,
                    ),
                  ),
                  SizedBox(height: height * 0.016),
                  Container(
                    color: AppColors.orange,
                    padding: EdgeInsets.symmetric(
                      vertical: height * 0.016,
                      horizontal: width * 0.02,
                    ),
                    child: MyText(
                      text: "LET'S TALK",
                      color: Colors.white,
                      fontWeight: FontWeight.w800,
                      fontSize: width * 0.008,
                      googleFontFamily: "Plus Jakarta Sans",
                      textAlign: TextAlign.start,
                    ),
                  )
                ],
              ),
            ],
          ),
        ),

        SizedBox(height: height * 0.04),

        // SizedBox(
        //   height: height * 0.4,
        //   child: ScrollConfiguration(
        //     behavior: ScrollConfiguration.of(context).copyWith(
        //       dragDevices: {
        //         PointerDeviceKind.touch,
        //         PointerDeviceKind.mouse,
        //       },
        //     ),
        //     child: ListView.builder(
        //       reverse: true,
        //       physics: const AlwaysScrollableScrollPhysics(),
        //       scrollDirection: Axis.horizontal,
        //       itemCount: 10,
        //       itemBuilder: (context, index) {
        //         return const ReviewCard2(
        //           title:
        //               "Web development for a digital sports products company",
        //           subTitle:
        //               "“Their passion and dedication to the tasks are impressive. Thanks to Uinno’s efforts, they’ve worked hard to reduce downtime on our products. The team has been accessible, and they’ve delivered the platform in a timely manner. Their passion and commitment have stood out in the partnership.”",
        //           image: AppImg.blackMonster,
        //           name: "Rajat Khoware",
        //           designation: "Founder Wakeup Monsters",
        //         );
        //       },
        //     ),
        //   ),
        // )
      ],
    );
  }
}
