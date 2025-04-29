import 'dart:async';
import 'package:flutter/material.dart';
import 'package:wakeup_web/utils/constant/app_sizer.dart';
import 'package:wakeup_web/utils/res/comman/app_colors.dart';
import 'package:wakeup_web/utils/res/comman/app_list.dart';

import '../../../utils/res/my_text.dart';

class HomeReviewSection extends StatefulWidget {
  const HomeReviewSection({super.key});

  @override
  State<HomeReviewSection> createState() => _HomeReviewSectionState();
}

class _HomeReviewSectionState extends State<HomeReviewSection> {
  late PageController _pageController;
  late Timer _timer;
  int _currentPage = 0;

  @override
  void initState() {
    super.initState();
    _pageController = PageController();
    _startTimer();
  }

  void _startTimer() {
    _timer = Timer.periodic(const Duration(seconds: 6), (timer) {
      if (_currentPage < AppList.appTestimonial.length - 1) {
        _currentPage++;
      } else {
        _currentPage = 0;
      }
      _pageController.animateToPage(
        _currentPage,
        duration: const Duration(milliseconds: 500),
        curve: Curves.easeInOut,
      );
    });
  }

  @override
  void dispose() {
    _pageController.dispose();
    _timer.cancel();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.sizeOf(context).height;
    final width = MediaQuery.sizeOf(context).width;
    bool isMobile = width < 600;
    bool isTab = width >= 600 && width < 1271;
    bool isWeb = width >= 1270;
    return Stack(
      alignment: Alignment.center,
      children: [
        Container(
          width: isWeb ? width * 0.5 : width * 0.9,
          color: AppColors.black10,
          padding: EdgeInsets.symmetric(
            vertical: height * 0.04,
            horizontal: width * 0.06,
          ),
          margin: const EdgeInsets.symmetric(horizontal: 24),
          child: SizedBox(
            height: isMobile ? 300 : height * 0.24,
            child: PageView.builder(
              controller: _pageController,
              onPageChanged: (index) {
                setState(() {
                  _currentPage = index;
                });
              },
              itemCount: AppList.appTestimonial.length,
              itemBuilder: (context, index) {
                final testimonial = AppList.appTestimonial[index];
                return Padding(
                  padding: EdgeInsets.symmetric(horizontal: isWeb ? 24 : 0),
                  child: Column(
                    children: [
                      SizedBox(height: isMobile ? 24 : height * 0.05),
                      MyTextSyne(
                        text: testimonial.quote,
                        fontSize: isMobile ? 17 : AppSizer.font18,
                        //   fontSize: width * 0.01,
                        textAlign: TextAlign.center,
                        fontWeight:
                            isMobile ? FontWeight.w700 : FontWeight.w600,
                        color: AppColors.white,
                        height: isMobile ? 1.7 : 1.4,
                        maxLines: 10,
                      ),
                      SizedBox(height: height * 0.03),
                      MyTextSyne(
                        text: testimonial.name,
                        fontSize: isMobile ? 12 : AppSizer.font16,
                        //   fontSize: width * 0.006,
                        textAlign: TextAlign.center,
                        fontWeight: FontWeight.w700,
                        color: AppColors.lightGreen,
                      ),
                      SizedBox(height: isMobile ? 6 : 0),
                      MyTextSyne(
                        text: testimonial.heading,
                        fontSize: isMobile ? 12 : AppSizer.font16,
                        //  fontSize: width * 0.006,
                        textAlign: TextAlign.center,
                        fontWeight: FontWeight.w700,
                        color: AppColors.lightGreen,
                      ),
                    ],
                  ),
                );
              },
            ),
          ),
        ),
        // Left Navigation Button
        Visibility(
          visible: !isMobile,
          child: Positioned(
            left: width * 0.026,
            child: IconButton(
              onPressed: () {
                _pageController.previousPage(
                  duration: const Duration(milliseconds: 500),
                  curve: Curves.easeInOut,
                );
              },
              icon: const Icon(
                Icons.arrow_back_ios,
                color: AppColors.lightGreen,
                size: AppSizer.font16,
                //  size: width * 0.012,
              ),
            ),
          ),
        ),
        // Right Navigation Button
        Visibility(
          visible: !isMobile,
          child: Positioned(
            right: width * 0.026,
            child: IconButton(
              onPressed: () {
                _pageController.nextPage(
                  duration: const Duration(milliseconds: 500),
                  curve: Curves.easeInOut,
                );
              },
              icon: const Icon(
                Icons.arrow_forward_ios,
                color: AppColors.lightGreen,
                size: AppSizer.font16,
                //size: width * 0.012,
              ),
            ),
          ),
        ),
      ],
    );
  }
}



// class HomeReviewSection extends StatefulWidget {
//   const HomeReviewSection({super.key});

//   @override
//   State<HomeReviewSection> createState() => _HomeReviewSectionState();
// }

// class _HomeReviewSectionState extends State<HomeReviewSection> {
//   late PageController _pageController;
//   late Timer _timer;
//   int _currentPage = 0;

//   @override
//   void initState() {
//     super.initState();
//     _pageController = PageController();
//     _startTimer();
//   }

//   void _startTimer() {
//     _timer = Timer.periodic(const Duration(seconds: 6), (timer) {
//       if (_currentPage < AppList.appTestimonial.length - 1) {
//         _currentPage++;
//       } else {
//         _currentPage = 0;
//       }
//       _pageController.animateToPage(
//         _currentPage,
//         duration: const Duration(milliseconds: 500),
//         curve: Curves.easeInOut,
//       );
//     });
//   }

//   @override
//   void dispose() {
//     _pageController.dispose();
//     _timer.cancel();
//     super.dispose();
//   }

//   @override
//   Widget build(BuildContext context) {
//     final height = MediaQuery.sizeOf(context).height;
//     final width = MediaQuery.sizeOf(context).width;
    // bool isMobile = width <= 600;
    // bool isTab = width > 600 || width < 1271;
    // bool isWeb = width > 1270;
//     return Stack(
//       alignment: Alignment.center,
//       children: [
//         Container(
//           width: isMobile
//               ? width * 0.9
//               : isWeb
//                   ? width * 0.5
//                   : width * 0.7,
//           color: AppColors.black10,
//           padding: EdgeInsets.symmetric(
//             vertical: height * 0.04,
//             horizontal: isWeb ? width * 0.06 : width * 0.03,
//           ),
//           child: SizedBox(
//             height: isMobile ? height * 0.14 : height * 0.24,
//             child: PageView.builder(
//               controller: _pageController,
//               onPageChanged: (index) {
//                 setState(() {
//                   _currentPage = index;
//                 });
//               },
//               itemCount: AppList.appTestimonial.length,
//               itemBuilder: (context, index) {
//                 final testimonial = AppList.appTestimonial[index];
//                 return Column(
//                   children: [
//                     SizedBox(height: isWeb ? height * 0.05 : height * 0.02),
//                     MyTextPoppines(
//                       text: testimonial.quote,
//                       fontSize: AppSizer.font18,
//                       //   fontSize: width * 0.01,
//                       textAlign: TextAlign.center,
//                       fontWeight: FontWeight.w600,
//                       color: AppColors.white,
//                       maxLines: 3,
//                     ),
//                     SizedBox(height: height * 0.03),
//                     MyTextPoppines(
//                       text: testimonial.name,
//                       fontSize: AppSizer.font16,
//                       //   fontSize: width * 0.006,
//                       textAlign: TextAlign.center,
//                       fontWeight: FontWeight.w700,
//                       color: AppColors.lightGreen,
//                     ),
//                     MyTextPoppines(
//                       text: testimonial.heading,
//                       fontSize: AppSizer.font16,
//                       //  fontSize: width * 0.006,
//                       textAlign: TextAlign.center,
//                       fontWeight: FontWeight.w700,
//                       color: AppColors.lightGreen,
//                     ),
//                   ],
//                 );
//               },
//             ),
//           ),
//         ),
//         // Left Navigation Button
//         Positioned(
//           left: isWeb ? width * 0.026 : width * 0.016,
//           child: IconButton(
//             onPressed: () {
//               _pageController.previousPage(
//                 duration: const Duration(milliseconds: 500),
//                 curve: Curves.easeInOut,
//               );
//             },
//             icon: Icon(
//               Icons.arrow_back_ios,
//               color: AppColors.lightGreen,
//               size: AppSizer.font18,
//               //  size: width * 0.012,
//             ),
//           ),
//         ),
//         // Right Navigation Button
//         Positioned(
//           right: isWeb ? width * 0.026 : width * 0.016,
//           child: IconButton(
//             onPressed: () {
//               _pageController.nextPage(
//                 duration: const Duration(milliseconds: 500),
//                 curve: Curves.easeInOut,
//               );
//             },
//             icon: Icon(
//               Icons.arrow_forward_ios,
//               color: AppColors.lightGreen,
//               size: AppSizer.font18,
//               //size: width * 0.012,
//             ),
//           ),
//         ),
//       ],
//     );
//   }
// }
