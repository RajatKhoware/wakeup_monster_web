import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:wakeup_web/utils/res/comman/app_colors.dart';
import 'package:wakeup_web/utils/res/comman/app_list.dart';

import '../../../utils/res/my_text.dart';
import '../widget/we_help_section_card_widget.dart';

class WeHelpSection extends StatelessWidget {
  const WeHelpSection({super.key});

  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.sizeOf(context).height;
    final width = MediaQuery.sizeOf(context).width;
    return Container(
      color: AppColors.white,
      child: Padding(
        padding: EdgeInsets.symmetric(horizontal: width * 0.16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            MyTextPoppines(
              text: "DO YOU KNOW?",
              fontSize: width * 0.008,
              color: AppColors.orange,
              fontWeight: FontWeight.w500,
            ),
            MyTextPoppines(
              text: "WE HELP",
              fontSize: width * 0.04,
              fontWeight: FontWeight.bold,
              color: AppColors.blackBg,
              letterSpacing: -5,
            ),
            SizedBox(height: height * 0.05),
            Align(
              alignment: Alignment.center,
              child: SizedBox(
                width: width * 0.8,
                height: height * 0.3,
                //    color: AppColors.brown,
                child: ListView.builder(
                  physics: const NeverScrollableScrollPhysics(),
                  //  shrinkWrap: true,
                  scrollDirection: Axis.horizontal,
                  itemCount: AppList.wehelp.length,
                  itemBuilder: (context, index) {
                    final data = AppList.wehelp[index];
                    return BuildWeHelpSections(
                      heading: data[0],
                      subHeading: data[1],
                      highlight: data[2],
                      number: " ${index + 1}",
                    );
                  },
                ),
              ),
            ),
            SizedBox(height: height * 0.05),
            const Divider(color: AppColors.black),
            SizedBox(height: height * 0.08),
            MyTextPoppines(
              text: "YOU",
              fontSize: width * 0.012,
              fontWeight: FontWeight.bold,
            ),
            SizedBox(
              width: width * 0.28,
              child: RichText(
                textAlign: TextAlign.center,
                text: TextSpan(
                  text: 'To sqeeze the most value ',
                  style: TextStyle(
                    color: AppColors.orange,
                    fontSize: width * 0.015,
                    fontWeight: FontWeight.bold,
                    height: 1.5,
                  ),
                  children: <TextSpan>[
                    TextSpan(
                      text:
                          'out of modern technologies for your particular cause.',
                      style: TextStyle(
                        color: AppColors.black.withOpacity(0.8),
                        fontSize: width * 0.014,
                        fontWeight: FontWeight.w400,
                        height: 1.5,
                      ),
                      recognizer: TapGestureRecognizer()
                        ..onTap = () {
                          // navigate to desired screen
                        },
                    )
                  ],
                ),
              ),
            ),
            SizedBox(height: height * 0.1),
          ],
        ),
      ),
    );
  }
}
