import 'package:flutter/material.dart';

import '../../../utils/res/comman/app_colors.dart';
import '../../../utils/res/my_text.dart';


class ReviewCard extends StatelessWidget {
  final String title, subTitle, image, name, designation;
  const ReviewCard({
    super.key,
    required this.title,
    required this.subTitle,
    required this.image,
    required this.name,
    required this.designation,
  });

  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.sizeOf(context).height;
    final width = MediaQuery.sizeOf(context).width;
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: width * 0.02),
      child: SizedBox(
        width: width * 0.3,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            MyTextPoppines(
              text: title,
              fontSize: width * 0.01,
              color: AppColors.white,
              fontWeight: FontWeight.bold,
            ),
            SizedBox(height: height * 0.01),
            MyTextPoppines(
              text: subTitle,
              fontSize: width * 0.009,
              color: AppColors.white,
              fontWeight: FontWeight.w300,
              height: 1.5,
              maxLines: 10,
            ),
            SizedBox(height: height * 0.03),
            Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Image(
                  image: AssetImage(image),
                  width: width * 0.02,
                  height: height * 0.04,
                ),
                SizedBox(width: width * 0.01),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    MyTextPoppines(
                      text: name,
                      fontSize: width * 0.009,
                      color: AppColors.orange,
                      fontWeight: FontWeight.bold,
                    ),
                    MyTextPoppines(
                      text: designation,
                      fontSize: width * 0.006,
                      color: AppColors.white,
                      fontWeight: FontWeight.w400,
                    ),
                  ],
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}
