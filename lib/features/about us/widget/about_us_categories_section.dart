import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:wakeup_web/features/about%20us/widget/about_hover_text.dart';
import 'package:wakeup_web/utils/res/comman/app_colors.dart';
import 'package:wakeup_web/utils/res/my_text.dart';

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
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        MyTextPoppines(
          text: heading,
          fontSize: width * 0.009,
          fontWeight: FontWeight.w600,
          color: AppColors.white,
        ),
        SizedBox(height: height * 0.01),
        SizedBox(
          width: width * 0.1,
          child: ListView.builder(
            shrinkWrap: true,
            itemCount: list.length,
            itemBuilder: (context, index) {
              return Padding(
                padding: EdgeInsets.only(
                  bottom: height * 0.004,
                ),
                child: AboutUsHoverText(
                  text: list[index],
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
