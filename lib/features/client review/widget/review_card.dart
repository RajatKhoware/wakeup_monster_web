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
            // Row(
            //   crossAxisAlignment: CrossAxisAlignment.start,
            //   mainAxisAlignment: MainAxisAlignment.start,
            //   children: [
            //     Column(
            //       crossAxisAlignment: CrossAxisAlignment.start,
            //       children: [
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
            //       ],
            //     )
            //   ],
            // )
          ],
        ),
      ),
    );
  }
}

class ReviewCard2 extends StatelessWidget {
  final String title, subTitle, image, name, designation;
  final double randomOpacity;
  final double width;
  final double? fixWidth;

  ReviewCard2({
    super.key,
    required this.title,
    required this.subTitle,
    required this.image,
    required this.name,
    required this.designation,
    this.width = 0.3,
    this.fixWidth,
  }) : randomOpacity = Random().nextDouble() * (0.12 - 0.02) + 0.06;

  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.sizeOf(context).width;
    final height = MediaQuery.sizeOf(context).height;
    final isMobile = width < 600;
    bool isTab = width >= 600 && width < 1271;
    bool isWeb = width >= 1270;

    return Container(
      width: fixWidth ?? width * this.width,
      margin: EdgeInsets.symmetric(
        horizontal: isMobile ? 0 : width * 0.01,
        vertical: isMobile ? 8 : width * 0.01,
      ),
      padding: EdgeInsets.symmetric(
        vertical: isMobile ? 16 : height * 0.02,
        horizontal: isMobile ? 12 : width * 0.012,
      ),
      decoration: BoxDecoration(
        color: AppColors.white.withOpacity(randomOpacity),
        border: Border.all(
          color: AppColors.white.withOpacity(0.3),
          width: 1.5,
        ),
        borderRadius: BorderRadius.circular(8),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisSize: MainAxisSize.min,
        children: [
          MyTextPoppines(
            text: subTitle,
            fontSize: isMobile ? 12 : 12,
            color: AppColors.white,
            fontWeight: FontWeight.w500,
            height: isMobile ? 1.6 : 1.4,
            maxLines: 10,
          ),
          SizedBox(height: isMobile ? 12 : height * 0.018),
          Row(children: [
            Icon(
              CupertinoIcons.person_fill,
              color: AppColors.yellow,
              size: isMobile ? 16 : 14,
            ),
            SizedBox(width: isMobile ? 8 : width * 0.004),
            Expanded(
              child: MyTextPoppines(
                text: name,
                fontSize: isMobile ? 12 : 11,
                color: AppColors.white.withOpacity(0.8),
                fontWeight: FontWeight.w400,
                height: isMobile ? 1.6 : 1.4,
              ),
            ),
            if (fixWidth != null && fixWidth! >= 200) ...[
              SizedBox(width: isMobile ? 8 : width * 0.01),
              Icon(
                CupertinoIcons.scope,
                color: AppColors.yellow,
                size: isMobile ? 14 : 14,
              ),
              SizedBox(width: isMobile ? 8 : width * 0.004),
              Expanded(
                child: MyTextPoppines(
                  text: designation,
                  fontSize: isMobile ? 12 : 11,
                  color: AppColors.white.withOpacity(0.8),
                  fontWeight: FontWeight.w400,
                  height: isMobile ? 1.6 : 1.4,
                ),
              ),
            ],
          ]),
          if (fixWidth != null && fixWidth! < 200) ...[
            SizedBox(height: isMobile ? 8 : height * 0.012),
            Row(
              children: [
                const Icon(
                  CupertinoIcons.scope,
                  color: AppColors.yellow,
                  size: 14,
                ),
                SizedBox(width: isMobile ? 8 : width * 0.004),
                Expanded(
                  child: MyTextPoppines(
                    text: designation,
                    fontSize: isMobile ? 12 : 11,
                    color: AppColors.white.withOpacity(0.8),
                    fontWeight: FontWeight.w400,
                    height: isMobile ? 1.6 : 1.4,
                  ),
                ),
              ],
            )
          ]
        ],
      ),
    );
  }
}

// class ReviewCard2 extends StatelessWidget {
//   final String title, subTitle, image, name, designation;
//   final double randomOpacity;
//   final double width;
//   ReviewCard2({
//     super.key,
//     required this.title,
//     required this.subTitle,
//     required this.image,
//     required this.name,
//     required this.designation,
//     this.width = 0.3,
//   }) : randomOpacity = Random().nextDouble() * (0.12 - 0.02) + 0.06;

//   @override
//   Widget build(BuildContext context) {
//     final height = MediaQuery.sizeOf(context).height;
//     final width = MediaQuery.sizeOf(context).width;
//     return Container(
//       width: width * this.width,
//       margin: EdgeInsets.symmetric(
//         horizontal: width * 0.01,
//         vertical: width * 0.01,
//       ),
//       padding: EdgeInsets.symmetric(
//         vertical: height * 0.02,
//         horizontal: width * 0.012,
//       ),
//       decoration: BoxDecoration(
//         color: AppColors.white.withOpacity(randomOpacity),
//         border: Border.all(
//           color: AppColors.white.withOpacity(0.3),
//           width: 1.5,
//         ),
//         borderRadius: BorderRadius.circular(
//           8,
//         ),
//       ),
//       child: Column(
//         crossAxisAlignment: CrossAxisAlignment.start,
//         mainAxisSize: MainAxisSize.min,
//         children: [
//           // MyTextPoppines(
//           //   text: title,
//           //   fontSize: width * 0.01,
//           //   color: AppColors.black,
//           //   fontWeight: FontWeight.w600,
//           // ),
//           // SizedBox(height: height * 0.01),
//           MyTextPoppines(
//             text: subTitle,
//             fontSize: width * 0.0075,
//             color: AppColors.white,
//             fontWeight: FontWeight.w500,
//             height: 1.5,
//             maxLines: 10,
//           ),
//           SizedBox(height: height * 0.018),
//           Row(children: [
//             Icon(
//               CupertinoIcons.person_fill,
//               color: AppColors.yellow,
//               size: width * 0.009,
//             ),
//             SizedBox(width: width * 0.004),
//             MyTextPoppines(
//               text: name,
//               fontSize: width * 0.006,
//               color: AppColors.white.withOpacity(0.8),
//               fontWeight: FontWeight.w400,
//             ),
//             if (this.width > 0.2) ...[
//               SizedBox(width: width * 0.01),
//               Icon(
//                 CupertinoIcons.scope,
//                 color: AppColors.yellow,
//                 size: width * 0.008,
//               ),
//               SizedBox(width: width * 0.004),
//               MyTextPoppines(
//                 text: designation,
//                 fontSize: width * 0.006,
//                 color: AppColors.white.withOpacity(0.8),
//                 fontWeight: FontWeight.w400,
//               ),
//             ],
//           ]),
//           if (this.width < 0.2) ...[
//             SizedBox(height: height * 0.012),
//             Row(
//               //  crossAxisAlignment: CrossAxisAlignment.start,
//               children: [
//                 Icon(
//                   CupertinoIcons.scope,
//                   color: AppColors.yellow,
//                   size: width * 0.008,
//                 ),
//                 SizedBox(width: width * 0.004),
//                 SizedBox(
//                   width: width * 0.08,
//                   child: MyTextPoppines(
//                     text: designation,
//                     fontSize: width * 0.006,
//                     color: AppColors.white.withOpacity(0.8),
//                     fontWeight: FontWeight.w400,
//                   ),
//                 ),
//               ],
//             )
//           ]
//           // SizedBox(
//           //   height: height * 0.008
//           // ),
//           // Row(
//           //   children: [
//           //     Icon(
//           //       CupertinoIcons.scope,
//           //       color: AppColors.orange,
//           //       size: width * 0.008,
//           //     ),
//           //     SizedBox(width: width * 0.004),
//           //     MyTextPoppines(
//           //       text: designation,
//           //       fontSize: width * 0.006,
//           //       color: AppColors.white.withOpacity(0.6),
//           //       fontWeight: FontWeight.w400,
//           //     ),
//           //   ],
//           // ),
//         ],
//       ),
//     );
//   }
// }
