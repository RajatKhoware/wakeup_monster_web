import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:wakeup_web/features/about%20us/widget/about_hover_text.dart';
import 'package:wakeup_web/utils/constant/app_sizer.dart';
import 'package:wakeup_web/utils/res/comman/app_colors.dart';
import 'package:wakeup_web/utils/res/my_text.dart';
import 'package:wakeup_web/utils/res/routing/app_pages.dart';

class AboutUsCategories extends StatelessWidget {
  final List list;
  final String heading;
  const AboutUsCategories({
    super.key,
    required this.list,
    required this.heading,
  });

  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.sizeOf(context).height;
    final width = MediaQuery.sizeOf(context).width;
    bool isMobile = width < 600;
    bool isTab = width >= 600 && width < 1271;
    bool isWeb = width >= 1270;
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        MyTextPoppines(
          text: heading,
          fontSize: AppSizer.font16,
          // fontSize: width * 0.009,
          fontWeight: FontWeight.w600,
          color: AppColors.white,
        ),
        SizedBox(height: isMobile ? 12 : height * 0.01),
        SizedBox(
          width: isWeb
              ? width * 0.1
              : isTab
                  ? 180
                  : width * 0.8,
          child: ListView.builder(
            shrinkWrap: true,
            itemCount: list.length,
            physics: const NeverScrollableScrollPhysics(),
            itemBuilder: (context, index) {
              return Padding(
                padding: EdgeInsets.only(bottom: isMobile ? 4 : height * 0.004),
                child: AboutUsHoverText(
                  text: list[index],
                  onTap: () => context.push(AppRoutes.siteUnderMaintaince),
                  // fontSize: width * 0.007,
                  // fontWeight: FontWeight.w300,
                  color: AppColors.white,
                ),
              );
            },
          ),
        )
      ],
    );
  }
}
