import 'package:flutter/cupertino.dart';
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
    return Padding(
      padding: EdgeInsets.only(right: width * 0.03),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            padding: EdgeInsets.all(width * 0.012),
            decoration: BoxDecoration(
              shape: BoxShape.circle,
              border: Border.all(
                color: AppColors.orange,
              ),
            ),
            child: MyTextPoppines(
              text: "#$number",
              fontSize: width * 0.013,
              color: AppColors.orange,
              fontWeight: FontWeight.w500,
            ),
          ),
          SizedBox(height: height * 0.02),
          SelectablePoppines(
            text: heading,
            fontSize: width * 0.015,
            height: 0,
            fontWeight: FontWeight.w600,
          ),
          SizedBox(height: height * 0.003),
          SizedBox(
            width: width * 0.14,
            child: SelectablePoppines(
              text: subHeading,
              fontSize: width * 0.008,
              color: AppColors.black.withOpacity(0.6),
              fontWeight: FontWeight.w500,
              maxLines: 3,
              height: 1.4,
            ),
          ),
          SizedBox(height: height * 0.018),
          Row(
            children: [
              Icon(
                CupertinoIcons.arrow_right,
                color: AppColors.orange,
                size: width * 0.01,
              ),
              SizedBox(width: width * 0.006),
              MyTextPoppines(
                text: highlight,
                fontSize: width * 0.0065,
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
