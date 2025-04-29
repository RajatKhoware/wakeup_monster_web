import 'package:flutter/cupertino.dart';
import 'package:wakeup_web/utils/constant/app_sizer.dart';
import 'package:wakeup_web/utils/res/comman/app_colors.dart';

import '../../../utils/res/my_text.dart';

class BuildWeHelpSections extends StatelessWidget {
  final String number;
  final String heading;
  final String subHeading;
  final String highlight;
  const BuildWeHelpSections({
    super.key,
    required this.heading,
    required this.subHeading,
    required this.highlight,
    required this.number,
  });

  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.sizeOf(context).height;
    final width = MediaQuery.sizeOf(context).width;
    bool isMobile = width < 600;
    bool isTab = width >= 600 && width < 1271;
    bool isWeb = width >= 1270;
    return Padding(
      padding: EdgeInsets.only(right: width * 0.03),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            padding: EdgeInsets.all(
              isMobile
                  ? 12
                  : isTab
                      ? 14
                      : 18,
            ),
            decoration: BoxDecoration(
              shape: BoxShape.circle,
              border: Border.all(color: AppColors.orange),
            ),
            child: MyTextPoppines(
              text: "#$number",
              fontSize: isMobile
                  ? AppSizer.font12
                  : isTab
                      ? AppSizer.font18
                      : AppSizer.font24,
              //fontSize: width * 0.013,
              color: AppColors.orange,
              fontWeight: FontWeight.w500,
            ),
          ),
          SizedBox(height: isMobile ? 012 : 22),
          MyTextPoppines(
            text: heading,
            fontSize: isMobile
                ? AppSizer.font20
                : isTab
                    ? AppSizer.font24
                    : 26,
            //  fontSize: width * 0.015,
            height: 2,
            fontWeight: FontWeight.w600,
          ),
          SizedBox(
            width: isMobile
                ? width * 0.9
                : isTab
                    ? width * 0.4
                    : 235,
            // width: width * 0.14,
            child: MyTextPoppines(
              text: subHeading,
              fontSize: isMobile ? AppSizer.font13 : AppSizer.font15,
              //    fontSize: width * 0.008,
              color: AppColors.black.withOpacity(0.6),
              fontWeight: FontWeight.w500,
              maxLines: 3,
              height: 1.4,
            ),
          ),
          const SizedBox(height: 16),
          Row(
            children: [
              const Icon(
                CupertinoIcons.arrow_right,
                color: AppColors.orange,
                size: 18,
              ),
              const SizedBox(width: 12),
              MyTextPoppines(
                text: highlight,
                fontSize: AppSizer.font13,
                color: AppColors.orange,
                fontWeight: FontWeight.w600,
              ),
            ],
          )
        ],
      ),
    );
  }
}
