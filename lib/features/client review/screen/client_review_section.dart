import 'package:flutter/material.dart';
import 'package:wakeup_web/my%20web/controller/my_web_controller.dart';
import 'package:wakeup_web/utils/componets/buttons/stack_buttomn.dart';
import 'package:wakeup_web/utils/constant/app_sizer.dart';
import 'package:wakeup_web/utils/res/comman/app_images.dart';

import '../../../utils/res/comman/app_colors.dart';
import '../../../utils/res/my_text.dart';
import '../widget/review_card.dart';

class ClientReview {
  final String title;
  final String subTitle;
  final String image;
  final String name;
  final String designation;

  ClientReview({
    required this.title,
    required this.subTitle,
    required this.image,
    required this.name,
    required this.designation,
  });
}

class ClientReviewSection extends StatelessWidget {
  const ClientReviewSection({super.key});

  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.sizeOf(context).width;
    final height = MediaQuery.sizeOf(context).height;

    bool isMobile = width < 600;
    bool isTab = width >= 600 && width < 1024;
    bool isWeb = width >= 1024;

    List<ClientReview> clientReviews = [
      ClientReview(
        title: "A flawless app experience!",
        subTitle:
            "Wake Up Monster turned our fitness startup idea into a beautiful, user-friendly app. Their communication and delivery speed were exceptional.",
        image: "assets/clients/rahul_singh.jpg",
        name: "Rahul Singh",
        designation: "Founder, FitNation (India)",
      ),
      ClientReview(
        title: "Reliable tech partner",
        subTitle:
            "We've collaborated on 3 projects now. Whether it's Flutter app development or backend architecture, their team always delivers top-quality results.",
        image: "assets/clients/michael_anderson.jpg",
        name: "Michael Anderson",
        designation: "CTO, PetWell (USA)",
      ),
      ClientReview(
        title: "Transformed our website",
        subTitle:
            "They redesigned our website from scratch. The new layout not only looks great but performs better in SEO and conversions too.",
        image: "assets/clients/meera_kapoor.jpg",
        name: "Meera Kapoor",
        designation: "Marketing Head, AyurWorld (India)",
      ),
      ClientReview(
        title: "Exceptional AI integration",
        subTitle:
            "Wake Up Monster helped us integrate AI recommendations into our e-commerce platform. Our user engagement and repeat visits have grown 60%.",
        image: "assets/clients/julia_martinez.jpg",
        name: "Julia Martinez",
        designation: "Product Manager, StyleHype (Spain)",
      ),
      ClientReview(
        title: "Creative meets technical",
        subTitle:
            "Their UI/UX team did a brilliant job in simplifying a very complex dashboard. It’s clean, fast, and our users love it.",
        image: "assets/clients/sachin_rathore.jpg",
        name: "Sachin Rathore",
        designation: "Co-founder, Finlytics (India)",
      ),
      ClientReview(
        title: "True professionals",
        subTitle:
            "From discovery workshops to launch, Wake Up Monster made the process smooth and stress-free. We’re seeing great traction already.",
        image: "assets/clients/emily_chen.jpg",
        name: "Emily Chen",
        designation: "Founder, BookBloom (Canada)",
      ),
      ClientReview(
        title: "Quick turnaround & top quality",
        subTitle:
            "We needed an MVP built fast. Not only did they hit our tight deadline, but they also exceeded expectations with quality and polish.",
        image: "assets/clients/arjun_patil.jpg",
        name: "Arjun Patil",
        designation: "Startup Founder, HealthVerse (India)",
      ),
      ClientReview(
        title: "Helped scale our product",
        subTitle:
            "Their team helped us re-architect and optimize our existing app. Performance improved drastically, and crash rates dropped by 80%.",
        image: "assets/clients/sophie_williams.jpg",
        name: "Sophie Williams",
        designation: "Product Lead, TalentNest (UK)",
      ),
      ClientReview(
        title: "Easy to work with",
        subTitle:
            "We worked remotely with Wake Up Monster for 4 months. Great coordination, constant updates, and amazing design sense.",
        image: "assets/clients/abdul_kareem.jpg",
        name: "Abdul Kareem",
        designation: "Project Manager, EduCore (UAE)",
      ),
    ];

    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        SizedBox(height: isMobile ? 80 : height * 0.08),
        _buildHeaderSection(context, isMobile, isTab, isWeb),
        SizedBox(height: width * 0.06),
        // SizedBox(height: isMobile ? height * 0.03 : height * 0.06),
        _buildReviewsSection(context, isMobile, isTab, isWeb, clientReviews),
        SizedBox(height: isMobile ? 40 : width * 0.04),

        _buildBottomSection(context, isMobile, isTab, isWeb),
        SizedBox(height: isMobile ? 40 : height * 0.04),
      ],
    );
  }

  Widget _buildHeaderSection(
      BuildContext context, bool isMobile, bool isTab, bool isWeb) {
    final width = MediaQuery.sizeOf(context).width;
    final height = MediaQuery.sizeOf(context).height;

    return Column(
      children: [
        SizedBox(
          width: isMobile || isTab ? width * 0.8 : width * 0.4,
          child: MyTextPoppines(
            text: "WHY CLIENTS LOVE US",
            fontSize: isMobile
                ? AppSizer.font28
                : isTab
                    ? AppSizer.font40
                    : AppSizer.font48,
            color: AppColors.lightGreen,
            letterSpacing: isMobile ? 0 : -2,
            fontWeight: FontWeight.bold,
            maxLines: 3,
            height: 1.1,
            textAlign: TextAlign.center,
          ),
        ),
        SizedBox(height: isMobile ? 8 : height * 0.014),
        SizedBox(
          width: isMobile
              ? width * 0.8
              : isTab
                  ? width * 0.7
                  : width * 0.6,
          // width: isMobile ? width * 0.9 : width * 0.6,
          child: MyTextPoppines(
            text:
                "Don’t take a word for it. See what our partners have to say about us",
            fontSize: isMobile ? 12 : AppSizer.font15,
            //  fontSize: width * 0.008,
            color: AppColors.white.withOpacity(0.6),
            fontWeight: isMobile ? FontWeight.w300 : FontWeight.w500,
            textAlign: TextAlign.center,
            maxLines: 3,
            height: isMobile ? 1.6 : 1.4,
            // fontSize: AppSizer.font15,
            // //    fontSize: isMobile ? 12 : width * 0.008,
            // color: AppColors.white.withOpacity(0.6),
            // fontWeight: FontWeight.w500,
            // textAlign: TextAlign.center,
            // maxLines: 3,
            // height: 1.4,
          ),
        ),
      ],
    );
  }

  Widget _buildReviewsSection(BuildContext context, bool isMobile, bool isTab,
      bool isWeb, List<ClientReview> reviews) {
    if (isMobile) {
      return _buildMobileReviews(context, reviews);
    } else if (isTab) {
      return _buildTabletReviews(context, reviews);
    }
    return _buildWebReviews(context, reviews);
  }

  Widget _buildMobileReviews(BuildContext context, List<ClientReview> reviews) {
    int reviewIndex = 0;
    final width = MediaQuery.sizeOf(context).width;
    final height = MediaQuery.sizeOf(context).height;

    List<List<double>> rowWidths = [
      [width * 0.4, width * 0.4],
      //  [width * 0.4, width * 0.4],
      // [width * 0.3]
    ];

    return Column(
      children: rowWidths.map((widthList) {
        final rowReviews = widthList.map((w) {
          final review = reviews[reviewIndex++];
          return Padding(
            padding: const EdgeInsets.only(right: 16.0),
            child: ReviewCard2(
              fixWidth: w,
              title: review.title,
              subTitle: review.subTitle,
              image: review.image,
              name: review.name,
              designation: review.designation,
            ),
          );
        }).toList();

        return Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: rowReviews,
        );
      }).toList(),
    );
    // return ListView.builder(
    //   shrinkWrap: true,
    //   physics: const NeverScrollableScrollPhysics(),
    //   itemCount: reviews.length,
    //   itemBuilder: (context, index) {
    //     return Padding(
    //       padding: const EdgeInsets.symmetric(vertical: 8, horizontal: 16),
    //       child: ReviewCard2(
    //         width: 0.9,
    //         title: reviews[index].title,
    //         subTitle: reviews[index].subTitle,
    //         image: reviews[index].image,
    //         name: reviews[index].name,
    //         designation: reviews[index].designation,
    //       ),
    //     );
    //   },
    // );
  }

  Widget _buildTabletReviews(BuildContext context, List<ClientReview> reviews) {
    final width = MediaQuery.sizeOf(context).width;
    final height = MediaQuery.sizeOf(context).height;

    int reviewIndex = 0;

    List<List<double>> rowWidths = [
      [width * 0.3, width * 0.3, width * 0.3],
      //  [width * 0.4, width * 0.4],
      // [width * 0.3]
    ];

    return Column(
      children: rowWidths.map((widthList) {
        final rowReviews = widthList.map((w) {
          final review = reviews[reviewIndex++];
          return ReviewCard2(
            fixWidth: w,
            title: review.title,
            subTitle: review.subTitle,
            image: review.image,
            name: review.name,
            designation: review.designation,
          );
        }).toList();

        return Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: rowReviews,
        );
      }).toList(),
    );

    // return GridView.builder(
    //   shrinkWrap: true,
    //   physics: const NeverScrollableScrollPhysics(),
    //   gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
    //     crossAxisCount: 2,
    //     childAspectRatio: width * 0.003,
    //     mainAxisSpacing: 16,
    //     crossAxisSpacing: 16,
    //   ),
    //   itemCount: reviews.length,
    //   itemBuilder: (context, index) {
    //     return ReviewCard2(
    //       width: 0.45,
    //       title: reviews[index].title,
    //       subTitle: reviews[index].subTitle,
    //       image: reviews[index].image,
    //       name: reviews[index].name,
    //       designation: reviews[index].designation,
    //     );
    //   },
    // );
  }

  Widget _buildWebReviews(BuildContext context, List<ClientReview> reviews) {
    int reviewIndex = 0;
    final width = MediaQuery.sizeOf(context).width;

    List<List<double>> rowWidths = [
      [width * 0.26, width * 0.26, width * 0.26],
      [400, 400],
      [199, 199, 199]
    ];

    return Column(
      children: rowWidths.map((widthList) {
        final rowReviews = widthList.map((w) {
          final review = reviews[reviewIndex++];
          return ReviewCard2(
            fixWidth: w,
            title: review.title,
            subTitle: review.subTitle,
            image: review.image,
            name: review.name,
            designation: review.designation,
          );
        }).toList();

        return Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: rowReviews,
        );
      }).toList(),
    );
  }

  //48TNGHCLTBPX1KXGH3HC7K1H

  Widget _buildBottomSection(
      BuildContext context, bool isMobile, bool isTab, bool isWeb) {
    final width = MediaQuery.sizeOf(context).width;
    final height = MediaQuery.sizeOf(context).height;

    return Container(
      width: width,
      color: AppColors.white.withOpacity(0.12),
      padding: EdgeInsets.symmetric(
        vertical: height * 0.04,
        horizontal: isMobile ? 16 : width * 0.1,
      ),
      margin: EdgeInsets.symmetric(
          horizontal: isMobile || isTab ? 0 : width * 0.05),
      child: isMobile
          ? Column(
              children: [
                _buildWonderingText(context, isMobile),
                SizedBox(height: isMobile ? 30 : 30),
                _buildDescriptionAndButton(context, isMobile),
              ],
            )
          : Row(
              children: [
                _buildWonderingText(context, isMobile),
                const Spacer(),
                _buildDescriptionAndButton(context, isMobile),
              ],
            ),
    );
  }

  Widget _buildWonderingText(BuildContext context, bool isMobile) {
    final width = MediaQuery.sizeOf(context).width;
    final height = MediaQuery.sizeOf(context).height;
    bool isMob = width < 600;
    bool isTab = width >= 600 && width < 1271;
    bool isWeb = width >= 1270;

    return Column(
      children: [
        MyText(
          text: "WONDERING",
          color: AppColors.lightGreen,
          fontWeight: FontWeight.w800,
          fontSize: isMob
              ? AppSizer.font28
              : isTab
                  ? AppSizer.font32
                  : AppSizer.font48,
          //  fontSize: isMobile ? 18 : width * 0.028,
          height: 1,
          maxLines: 1,
          googleFontFamily: "Plus Jakarta Sans",
        ),
        SizedBox(height: isMobile ? 8 : height * 0.012),
        MyText(
          text: "what next?",
          color: Colors.white,
          fontWeight: FontWeight.w600,
          fontSize: isMobile ? 18 : width * 0.025,
          height: 1,
          maxLines: 1,
          googleFontFamily: "Plus Jakarta Sans",
        ),
      ],
    );
  }

  Widget _buildDescriptionAndButton(BuildContext context, bool isMobile) {
    final width = MediaQuery.sizeOf(context).width;
    final height = MediaQuery.sizeOf(context).height;
    bool isTab = width >= 600 && width < 1271;
    bool isWeb = width >= 1270;

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        if (!isTab) ...[
          SizedBox(
            width: isMobile || isTab ? width * 0.9 : width * 0.3,
            child: MyText(
              text:
                  "Here's where you are right now: Staring at exactly what you've been looking for in a creative agency.",
              color: Colors.white,
              fontWeight: FontWeight.w500,
              fontSize: isMobile
                  ? 11
                  : isTab
                      ? 12
                      : 14,
              height: isMobile ? 1.6 : 1.4,
              googleFontFamily: "Plus Jakarta Sans",
              textAlign: isMobile || isTab ? TextAlign.center : TextAlign.start,
              maxLines: 3,
            ),
          ),
          SizedBox(height: isMobile ? 18 : height * 0.02),
        ],
        Center(
          child: StackButton(
            text: "LET'S TALK",
            onTap: () => MyWebController.instance.scrollToBottom(),
          ),
        ),
      ],
    );
  }
}

// class ClientReviewSection extends StatelessWidget {
//   const ClientReviewSection({super.key});

//   @override
//   Widget build(BuildContext context) {
//     final height = MediaQuery.sizeOf(context).height;
//     final width = MediaQuery.sizeOf(context).width;

//     List<ClientReview> clientReviews = [
//       ClientReview(
//         title: "A flawless app experience!",
//         subTitle:
//             "Wake Up Monster turned our fitness startup idea into a beautiful, user-friendly app. Their communication and delivery speed were exceptional.",
//         image: "assets/clients/rahul_singh.jpg",
//         name: "Rahul Singh",
//         designation: "Founder, FitNation (India)",
//       ),
//       ClientReview(
//         title: "Reliable tech partner",
//         subTitle:
//             "We've collaborated on 3 projects now. Whether it's Flutter app development or backend architecture, their team always delivers top-quality results.",
//         image: "assets/clients/michael_anderson.jpg",
//         name: "Michael Anderson",
//         designation: "CTO, PetWell (USA)",
//       ),
//       ClientReview(
//         title: "Transformed our website",
//         subTitle:
//             "They redesigned our website from scratch. The new layout not only looks great but performs better in SEO and conversions too.",
//         image: "assets/clients/meera_kapoor.jpg",
//         name: "Meera Kapoor",
//         designation: "Marketing Head, AyurWorld (India)",
//       ),
//       ClientReview(
//         title: "Exceptional AI integration",
//         subTitle:
//             "Wake Up Monster helped us integrate AI recommendations into our e-commerce platform. Our user engagement and repeat visits have grown 60%.",
//         image: "assets/clients/julia_martinez.jpg",
//         name: "Julia Martinez",
//         designation: "Product Manager, StyleHype (Spain)",
//       ),
//       ClientReview(
//         title: "Creative meets technical",
//         subTitle:
//             "Their UI/UX team did a brilliant job in simplifying a very complex dashboard. It’s clean, fast, and our users love it.",
//         image: "assets/clients/sachin_rathore.jpg",
//         name: "Sachin Rathore",
//         designation: "Co-founder, Finlytics (India)",
//       ),
//       ClientReview(
//         title: "True professionals",
//         subTitle:
//             "From discovery workshops to launch, Wake Up Monster made the process smooth and stress-free. We’re seeing great traction already.",
//         image: "assets/clients/emily_chen.jpg",
//         name: "Emily Chen",
//         designation: "Founder, BookBloom (Canada)",
//       ),
//       ClientReview(
//         title: "Quick turnaround & top quality",
//         subTitle:
//             "We needed an MVP built fast. Not only did they hit our tight deadline, but they also exceeded expectations with quality and polish.",
//         image: "assets/clients/arjun_patil.jpg",
//         name: "Arjun Patil",
//         designation: "Startup Founder, HealthVerse (India)",
//       ),
//       ClientReview(
//         title: "Helped scale our product",
//         subTitle:
//             "Their team helped us re-architect and optimize our existing app. Performance improved drastically, and crash rates dropped by 80%.",
//         image: "assets/clients/sophie_williams.jpg",
//         name: "Sophie Williams",
//         designation: "Product Lead, TalentNest (UK)",
//       ),
//       ClientReview(
//         title: "Easy to work with",
//         subTitle:
//             "We worked remotely with Wake Up Monster for 4 months. Great coordination, constant updates, and amazing design sense.",
//         image: "assets/clients/abdul_kareem.jpg",
//         name: "Abdul Kareem",
//         designation: "Project Manager, EduCore (UAE)",
//       ),
//     ];

//     List<List<double>> rowWidths = [
//       [0.25, 0.21, 0.25],
//       [0.22, 0.22],
//       [0.12, 0.12, 0.12]
//     ];

//     int reviewIndex = 0;

//     return Column(
//       crossAxisAlignment: CrossAxisAlignment.center,
//       children: [
//         SizedBox(height: height * 0.07),
//         // Align(
//         //   alignment: Alignment.center,
//         //   child: MyTextPoppines(
//         //     text: "DO YOU KNOW?",
//         //     fontSize: width * 0.008,
//         //     color: AppColors.orange,
//         //     fontWeight: FontWeight.w600,
//         //   ),
//         // ),
//         SizedBox(
//           width: width * 0.4,
//           child: MyTextPoppines(
//             text: "WHY CLIENTS LOVE US",
//             fontSize: width * 0.03,
//             color: AppColors.lightGreen,
//             letterSpacing: -2,
//             fontWeight: FontWeight.bold,
//             maxLines: 3,
//             height: 1.1,
//             textAlign: TextAlign.center,
//           ),
//         ),
//         SizedBox(height: height * 0.014),
//         SizedBox(
//           width: width * 0.6,
//           child: MyTextPoppines(
//             text:
//                 "Don’t take a word for it. See what our partners have to say about us",
//             fontSize: width * 0.008,
//             color: AppColors.white.withOpacity(0.6),
//             fontWeight: FontWeight.w500,
//             textAlign: TextAlign.center,
//             maxLines: 3,
//             height: 1.4,
//           ),
//         ),
//         SizedBox(height: height * 0.06),
//         // Review Rows
//         ...rowWidths.map((widthList) {
//           final reviews = widthList.map((w) {
//             final review = clientReviews[reviewIndex++];
//             return ReviewCard2(
//               width: w,
//               title: review.title,
//               subTitle: review.subTitle,
//               image: review.image,
//               name: review.name,
//               designation: review.designation,
//             );
//           }).toList();

//           return Row(
//             mainAxisAlignment: MainAxisAlignment.center,
//             children: reviews.length == 2
//                 ? [const Spacer(), ...reviews, const Spacer()]
//                 : reviews,
//           );
//         }).toList(),

//         // Row(
//         //   mainAxisAlignment: MainAxisAlignment.center,
//         //   children: [
//         //     ReviewCard2(
//         //       width: 0.25,
//         //       title: "Web development for a digital sports products company",
//         //       subTitle:
//         //           "“Their passion and dedication to the tasks are impressive. Thanks to Uinno’s efforts, they’ve worked hard to reduce downtime on our products. The team has been accessible, and they’ve delivered the platform in a timely manner. Their passion and commitment have stood out in the partnership.”",
//         //       image: AppImg.blackMonster,
//         //       name: "Rajat Khoware",
//         //       designation: "Founder Wakeup Monsters",
//         //     ),
//         //     ReviewCard2(
//         //       width: 0.21,
//         //       title: "Web development for a digital sports products company",
//         //       subTitle:
//         //           "“Their passion and dedication to the tasks are impressive. Thanks to Uinno’s efforts, they’ve worked hard to reduce downtime on our products. The team has been accessible, and they’ve delivered the platform in a timely manner. Their passion and commitment have stood out in the partnership.”",
//         //       image: AppImg.blackMonster,
//         //       name: "Rajat Khoware",
//         //       designation: "Founder Wakeup Monsters",
//         //     ),
//         //     ReviewCard2(
//         //       width: 0.25,
//         //       title: "Web development for a digital sports products company",
//         //       subTitle:
//         //           "“Their passion and dedication to the tasks are impressive. Thanks to Uinno’s efforts, they’ve worked hard to reduce downtime on our products. The team has been accessible, and they’ve delivered the platform in a timely manner. Their passion and commitment have stood out in the partnership.”",
//         //       image: AppImg.blackMonster,
//         //       name: "Rajat Khoware",
//         //       designation: "Founder Wakeup Monsters",
//         //     )
//         //   ],
//         // ),
//         // Row(
//         //   //mainAxisAlignment: MainAxisAlignment.spaceAround,
//         //   children: [
//         //     Spacer(),
//         //     ReviewCard2(
//         //       title: "Web development for a digital sports products company",
//         //       subTitle:
//         //           "“Their passion and dedication to the tasks are impressive. Thanks to Uinno’s efforts, they’ve worked hard to reduce downtime on our products. The team has been accessible, and they’ve delivered the platform in a timely manner. Their passion and commitment have stood out in the partnership.”",
//         //       image: AppImg.blackMonster,
//         //       name: "Rajat Khoware",
//         //       designation: "Founder Wakeup Monsters",
//         //     ),
//         //     ReviewCard2(
//         //       title: "Web development for a digital sports products company",
//         //       subTitle:
//         //           "“Their passion and dedication to the tasks are impressive. Thanks to Uinno’s efforts, they’ve worked hard to reduce downtime on our products. The team has been accessible, and they’ve delivered the platform in a timely manner. Their passion and commitment have stood out in the partnership.”",
//         //       image: AppImg.blackMonster,
//         //       name: "Rajat Khoware",
//         //       designation: "Founder Wakeup Monsters",
//         //     ),
//         //     Spacer()
//         //   ],
//         // ),
//         // Row(
//         //   crossAxisAlignment: CrossAxisAlignment.center,
//         //   mainAxisAlignment: MainAxisAlignment.center,
//         //   children: [
//         //     ReviewCard2(
//         //       width: .12,
//         //       title: "Web development for a digital sports products company",
//         //       subTitle:
//         //           "“Their passion and dedication to the tasks are impressive. Thanks to Uinno’s efforts, they’ve worked hard .”",
//         //       image: AppImg.blackMonster,
//         //       name: "Rajat Khoware",
//         //       designation: "Founder Wakeup Monsters",
//         //     ),
//         //     ReviewCard2(
//         //       width: .12,
//         //       title: "Web development for a digital sports products company",
//         //       subTitle:
//         //           "“Their passion and dedication to the tasks are impressive. Thanks to Uinno’s efforts, they’ve worked hard .”",
//         //       image: AppImg.blackMonster,
//         //       name: "Rajat Khoware",
//         //       designation: "Founder Wakeup Monsters",
//         //     ),
//         //     ReviewCard2(
//         //       width: .12,
//         //       title: "Web development for a digital sports products company",
//         //       subTitle:
//         //           "“Their passion and dedication to the tasks are impressive. Thanks to Uinno’s efforts, they’ve worked hard .”",
//         //       image: AppImg.blackMonster,
//         //       name: "Rajat Khoware",
//         //       designation: "Founder Wakeup Monsters",
//         //     ),
//         //   ],
//         // ),

//         SizedBox(height: height * 0.06),
//         Container(
//           width: width,
//           decoration: BoxDecoration(color: AppColors.white.withOpacity(0.12)),
//           padding: EdgeInsets.symmetric(
//             vertical: height * 0.04,
//             horizontal: width * 0.1,
//           ),
//           margin: EdgeInsets.symmetric(horizontal: width * 0.05),
//           child: Row(
//             children: [
//               Column(
//                 children: [
//                   MyText(
//                     text: "WONDERING",
//                     color: AppColors.lightGreen,
//                     fontWeight: FontWeight.w800,
//                     fontSize: width * 0.028,
//                     height: 1,
//                     maxLines: 1,
//                     googleFontFamily: "Plus Jakarta Sans",
//                   ),
//                   SizedBox(height: height * 0.012),
//                   MyText(
//                     text: "what next?",
//                     color: Colors.white,
//                     fontWeight: FontWeight.w600,
//                     fontSize: width * 0.025,
//                     height: 1,
//                     maxLines: 1,
//                     googleFontFamily: "Plus Jakarta Sans",
//                   ),
//                 ],
//               ),
//               const Spacer(),
//               Column(
//                 crossAxisAlignment: CrossAxisAlignment.start,
//                 children: [
//                   SizedBox(
//                     width: width * 0.3,
//                     child: MyText(
//                       text:
//                           "Here's where you are right now: Staring at exactly what you've been looking for in a creative agency.",
//                       color: Colors.white,
//                       fontWeight: FontWeight.w500,
//                       fontSize: width * 0.008,
//                       height: 1.4,
//                       googleFontFamily: "Plus Jakarta Sans",
//                       textAlign: TextAlign.start,
//                     ),
//                   ),
//                   SizedBox(height: height * 0.02),
//                   StackButton(
//                     text: "LET'S TALK",
//                     onTap: () => MyWebController.instance.scrollToBottom(),
//                   ),
//                 ],
//               ),
//             ],
//           ),
//         ),

//         SizedBox(height: height * 0.04),
//       ],
//     );
//   }
// }


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