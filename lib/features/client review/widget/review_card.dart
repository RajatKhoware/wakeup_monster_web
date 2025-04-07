import 'dart:math';

import 'package:flutter/cupertino.dart';
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
      child: Container(
        width: width * 0.3,
        margin: EdgeInsets.symmetric(
          horizontal: width * 0.02,
          vertical: height * 0.02,
        ),
        padding: EdgeInsets.symmetric(
            vertical: height * 0.02, horizontal: width * 0.02),
        color: AppColors.transparent,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            MyTextPoppines(
              text: name,
              fontSize: width * 0.01,
              color: AppColors.lightGreen,
              fontWeight: FontWeight.w500,
            ),
            MyTextPoppines(
              text: designation,
              fontSize: width * 0.006,
              color: AppColors.white,
              fontWeight: FontWeight.w400,
            ),
            SizedBox(height: height * 0.01),
            // MyTextPoppines(
            //   text: title,
            //   fontSize: width * 0.01,
            //   color: AppColors.black,
            //   fontWeight: FontWeight.w600,
            // ),
            // SizedBox(height: height * 0.01),
            MyTextPoppines(
              text: subTitle,
              fontSize: width * 0.009,
              color: AppColors.white.withOpacity(0.8),
              fontWeight: FontWeight.w300,
              height: 1.5,
              maxLines: 10,
            ),
            SizedBox(height: height * 0.03),
            Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    // MyTextPoppines(
                    //   text: name,
                    //   fontSize: width * 0.009,
                    //   color: AppColors.lightGreen,
                    //   fontWeight: FontWeight.bold,
                    // ),
                    // MyTextPoppines(
                    //   text: designation,
                    //   fontSize: width * 0.006,
                    //   color: AppColors.white,
                    //   fontWeight: FontWeight.w400,
                    // ),
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

class ReviewCard2 extends StatelessWidget {
  final String title, subTitle, image, name, designation;
  final double randomOpacity;
  ReviewCard2({
    super.key,
    required this.title,
    required this.subTitle,
    required this.image,
    required this.name,
    required this.designation,
  }) : randomOpacity = Random().nextDouble() * (0.12 - 0.02) + 0.06;

  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.sizeOf(context).height;
    final width = MediaQuery.sizeOf(context).width;
    return Container(
      width: width * 0.3,
      margin: EdgeInsets.symmetric(
        horizontal: width * 0.012,
        vertical: height * 0.02,
      ),
      padding: EdgeInsets.symmetric(
        vertical: height * 0.02,
        horizontal: width * 0.012,
      ),
      decoration: BoxDecoration(
        color: AppColors.white.withOpacity(randomOpacity),
        border: Border.all(
          color: AppColors.white.withOpacity(0.3),
          width: 1.5,
        ),
        borderRadius: BorderRadius.circular(
          8,
        ),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisSize: MainAxisSize.min,
        children: [
          // MyTextPoppines(
          //   text: title,
          //   fontSize: width * 0.01,
          //   color: AppColors.black,
          //   fontWeight: FontWeight.w600,
          // ),
          // SizedBox(height: height * 0.01),
          MyTextPoppines(
            text: subTitle,
            fontSize: width * 0.0075,
            color: AppColors.white,
            fontWeight: FontWeight.w500,
            height: 1.5,
            maxLines: 10,
          ),
          SizedBox(height: height * 0.018),
          Row(
            children: [
              Icon(
                CupertinoIcons.person_fill,
                color: AppColors.orange,
                size: width * 0.009,
              ),
              SizedBox(width: width * 0.004),
              MyTextPoppines(
                text: name,
                fontSize: width * 0.006,
                color: AppColors.white.withOpacity(0.8),
                fontWeight: FontWeight.w400,
              ),
              SizedBox(width: width * 0.01),
              Icon(
                CupertinoIcons.scope,
                color: AppColors.orange,
                size: width * 0.008,
              ),
              SizedBox(width: width * 0.004),
              MyTextPoppines(
                text: designation,
                fontSize: width * 0.006,
                color: AppColors.white.withOpacity(0.8),
                fontWeight: FontWeight.w400,
              ),
            ],
          ),
          // SizedBox(
          //   height: height * 0.008
          // ),
          // Row(
          //   children: [
          //     Icon(
          //       CupertinoIcons.scope,
          //       color: AppColors.orange,
          //       size: width * 0.008,
          //     ),
          //     SizedBox(width: width * 0.004),
          //     MyTextPoppines(
          //       text: designation,
          //       fontSize: width * 0.006,
          //       color: AppColors.white.withOpacity(0.6),
          //       fontWeight: FontWeight.w400,
          //     ),
          //   ],
          // ),
        ],
      ),
    );
  }
}
