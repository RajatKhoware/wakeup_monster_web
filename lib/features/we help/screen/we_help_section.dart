import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:wakeup_web/utils/constant/app_sizer.dart';
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
    bool isMobile = width < 600;
    bool isTab = width >= 600 && width < 1271;
    bool isWeb = width >= 1270;
    return Container(
      color: AppColors.white,
      padding: EdgeInsets.symmetric(horizontal: width * 0.0016),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          SizedBox(height: isMobile ? 80 : height * 0.08),
          MyTextPoppines(
            text: "DO YOU KNOW?",
            fontSize: isMobile ? 12 : AppSizer.font15,
            //  fontSize: width * 0.008,
            color: AppColors.orange,
            fontWeight: FontWeight.w500,
            height: 0,
          ),
          SizedBox(height: isMobile ? 5 : 0),
          MyTextPoppines(
            text: "WE HELP",

            fontSize: isMobile
                ? AppSizer.font28
                : isTab
                    ? AppSizer.font40
                    : AppSizer.font48,
            //     fontSize: width * 0.04,
            fontWeight: FontWeight.bold,
            color: AppColors.blackBg,
            letterSpacing: -1,
          ),
          SizedBox(height: height * 0.05),
          _buildResponsiveLayout(context),
          // if (isMobile)
          //   Padding(
          //     padding: EdgeInsets.only(left: width * 0.06),
          //     child: SizedBox(
          //       width: isWeb ? width * 0.8 : width,
          //       //   height: height * 0.3,
          //       //    color: AppColors.brown,
          //       child: ListView.builder(
          //         shrinkWrap: true,
          //         physics: const NeverScrollableScrollPhysics(),
          //         //  shrinkWrap: true,
          //         // scrollDirection: Axis.,
          //         itemCount: AppList.wehelp.length,
          //         itemBuilder: (context, index) {
          //           final data = AppList.wehelp[index];
          //           return Padding(
          //             padding: EdgeInsets.only(bottom: 60),
          //             child: BuildWeHelpSections(
          //               heading: data[0],
          //               subHeading: data[1],
          //               highlight: data[2],
          //               number: " ${index + 1}",
          //             ),
          //           );
          //         },
          //       ),
          //     ),
          //   ),

          // SizedBox(
          //   width: isWeb ? width * 0.8 : width,
          //   height: height * 0.3,
          //   //    color: AppColors.brown,
          //   child: Align(
          //     alignment: Alignment.center,
          //     child: ListView.builder(
          //       physics: const NeverScrollableScrollPhysics(),
          //       //  shrinkWrap: true,
          //       scrollDirection: Axis.horizontal,
          //       itemCount: AppList.wehelp.length,
          //       itemBuilder: (context, index) {
          //         final data = AppList.wehelp[index];
          //         return BuildWeHelpSections(
          //           heading: data[0],
          //           subHeading: data[1],
          //           highlight: data[2],
          //           number: " ${index + 1}",
          //         );
          //       },
          //     ),
          //   ),
          // ),

          SizedBox(height: isMobile ? 15 : 80),

          Padding(
            padding: EdgeInsets.symmetric(horizontal: width * 0.1),
            child: const Divider(color: AppColors.black),
          ),
          SizedBox(height: isMobile ? 50 : 100),
          MyTextPoppines(
            text: "YOU",
            fontSize: isMobile ? 20 : AppSizer.font28,
            //   fontSize: width * 0.012,
            fontWeight: FontWeight.bold,
          ),
          SizedBox(height: isMobile ? 10 : 0),
          SizedBox(
            width: width * 0.8,
            child: RichText(
              textAlign: TextAlign.center,
              text: TextSpan(
                text: 'To sqeeze the most value ',
                style: GoogleFonts.poppins(
                  color: AppColors.orange,
                  fontSize: isMobile ? 16 : AppSizer.font24,
                  //    fontSize: width * 0.015,
                  fontWeight: FontWeight.bold,
                  height: 1.5,
                ),
                children: <TextSpan>[
                  TextSpan(
                    text:
                        'out of modern technologies for your particular cause.',
                    style: GoogleFonts.poppins(
                      color: AppColors.black.withOpacity(0.8),
                      //    fontSize: width * 0.014,
                      fontSize: isMobile ? 16 : AppSizer.font24,
                      fontWeight: FontWeight.w400,
                      height: 1.5,
                    ),
                    //   recognizer: TapGestureRecognizer()..onTap = () {},
                  )
                ],
              ),
            ),
          ),
          const SizedBox(height: 80),
        ],
      ),
    );
  }

  Widget _buildResponsiveLayout(
    BuildContext context,
  ) {
    final width = MediaQuery.sizeOf(context).width;
    bool isMobile = width < 600;
    bool isTab = width >= 600 && width < 1271;
    bool isWeb = width >= 1270;
    if (isMobile) {
      return Padding(
        padding: EdgeInsets.only(left: width * 0.06),
        child: SizedBox(
          width: width,
          child: ListView.builder(
            shrinkWrap: true,
            physics: const NeverScrollableScrollPhysics(),
            itemCount: AppList.wehelp.length,
            itemBuilder: (context, index) {
              final data = AppList.wehelp[index];
              return Padding(
                padding: const EdgeInsets.only(bottom: 60),
                child: BuildWeHelpSections(
                  heading: data[0],
                  subHeading: data[1],
                  highlight: data[2],
                  number: " ${index + 1}",
                ),
              );
            },
          ),
        ),
      );
    } else if (isTab) {
      return Padding(
        padding: EdgeInsets.symmetric(horizontal: width * 0.05),
        child: GridView.count(
          shrinkWrap: true,
          physics: const NeverScrollableScrollPhysics(),
          crossAxisCount: 2,
          mainAxisSpacing: 30,
          crossAxisSpacing: 30,
          childAspectRatio: width * 0.0015,
          children: AppList.wehelp.asMap().entries.map((entry) {
            final index = entry.key;
            final data = entry.value;
            return BuildWeHelpSections(
              heading: data[0],
              subHeading: data[1],
              highlight: data[2],
              number: " ${index + 1}",
            );
          }).toList(),
        ),
      );
    } else {
      return Row(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: AppList.wehelp.asMap().entries.map((entry) {
          final index = entry.key;
          final data = entry.value;
          return Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: BuildWeHelpSections(
              heading: data[0],
              subHeading: data[1],
              highlight: data[2],
              number: " ${index + 1}",
            ),
          );
        }).toList(),
      );
    }
  }
}
