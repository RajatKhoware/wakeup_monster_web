import 'dart:async';

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:wakeup_web/my%20web/controller/my_web_controller.dart';
import 'package:wakeup_web/utils/res/comman/app_colors.dart';
import 'package:wakeup_web/utils/res/comman/app_list.dart';
import 'package:wakeup_web/utils/res/comman/app_text.dart';

import '../../../utils/res/helper/my_custom_painter.dart';
import '../../../utils/res/my_text.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.sizeOf(context).height;
    final width = MediaQuery.sizeOf(context).width;

    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Align(
          alignment: Alignment.center,
          child: Container(
            width: width,
            color: AppColors.blackBg,
            padding: EdgeInsets.symmetric(vertical: height * 0.01),
            child: Column(
              children: [
                SizedBox(height: height * 0.2),
                // Text
                SelectablePoppines(
                  text: AppText.innovateWithUs,
                  color: AppColors.orange,
                  fontWeight: FontWeight.w600,
                  fontSize: width * 0.008,
                ),
                SizedBox(height: height * 0.01),
                // Banner + Headlines
                HomeBanner(width: width, height: height),
                SizedBox(height: height * 0.015),
                SizedBox(
                  width: width * 0.3,
                  child: SelectablePoppines(
                    text: AppText.homesubHeadline,
                    color: AppColors.white,
                    fontWeight: FontWeight.normal,
                    fontSize: width * 0.008,
                    maxLines: 5,
                    height: 1.6,
                    textAlign: TextAlign.center,
                  ),
                ),
                SizedBox(height: height * 0.06),
                //Lets talk business
                const LetsTalk(),
                SizedBox(height: height * 0.03),
                Container(
                  margin: EdgeInsets.only(right: width * 0.01),
                  width: width * 0.001,
                  height: height * 0.3,
                  color: AppColors.lightGreen,
                ),
                SizedBox(height: height * 0.015),
                // Founder Quate
                HomeQuate(width: width, height: height),
                SizedBox(height: height * 0.1),
              ],
            ),
          ),
        ),
      ],
    );
  }
}

class HomeQuate extends StatefulWidget {
  const HomeQuate({
    super.key,
    required this.width,
    required this.height,
  });

  final double width;
  final double height;

  @override
  State<HomeQuate> createState() => _HomeQuateState();
}

class _HomeQuateState extends State<HomeQuate> {
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
    return Stack(
      alignment: Alignment.center,
      children: [
        Container(
          width: widget.width * 0.7,
          color: AppColors.black10,
          padding: EdgeInsets.symmetric(
            vertical: widget.height * 0.08,
            horizontal: widget.width * 0.08,
          ),
          child: SizedBox(
            height: widget.height * 0.3,
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
                return Column(
                  children: [
                    SizedBox(height: widget.height * 0.05),
                    MyTextPoppines(
                      text: testimonial.quote,
                      fontSize: widget.width * 0.015,
                      textAlign: TextAlign.center,
                      fontWeight: FontWeight.w600,
                      color: AppColors.white,
                      maxLines: 3,
                    ),
                    SizedBox(height: widget.height * 0.03),
                    MyTextPoppines(
                      text: testimonial.name,
                      fontSize: widget.width * 0.008,
                      textAlign: TextAlign.center,
                      fontWeight: FontWeight.w600,
                      color: AppColors.lightGreen,
                    ),
                    MyTextPoppines(
                      text: testimonial.heading,
                      fontSize: widget.width * 0.008,
                      textAlign: TextAlign.center,
                      fontWeight: FontWeight.w600,
                      color: AppColors.lightGreen,
                    ),
                  ],
                );
              },
            ),
          ),
        ),
        // Left Navigation Button
        Positioned(
          left: widget.width * 0.04,
          child: IconButton(
            onPressed: () {
              _pageController.previousPage(
                duration: const Duration(milliseconds: 500),
                curve: Curves.easeInOut,
              );
            },
            icon: Icon(
              Icons.arrow_back_ios,
              color: AppColors.lightGreen,
              size: widget.width * 0.02,
            ),
          ),
        ),
        // Right Navigation Button
        Positioned(
          right: widget.width * 0.04,
          child: IconButton(
            onPressed: () {
              _pageController.nextPage(
                duration: const Duration(milliseconds: 500),
                curve: Curves.easeInOut,
              );
            },
            icon: Icon(
              Icons.arrow_forward_ios,
              color: AppColors.lightGreen,
              size: widget.width * 0.02,
            ),
          ),
        ),
      ],
    );
  }
}

class HomeBanner extends StatelessWidget {
  const HomeBanner({
    super.key,
    required this.width,
    required this.height,
  });

  final double width;
  final double height;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      child: CustomPaint(
        painter: MyRectanglePainter(),
        size: Size(width, height * 0.3),
        child: Padding(
          padding: EdgeInsets.only(
            top: height * 0.05,
            left: width * 0.1,
            right: width * 0.1,
            bottom: height * 0.03,
          ),
          child: MyTextPoppines(
            text: AppText.webMobileAI,
            color: Colors.white,
            fontWeight: FontWeight.bold,
            fontSize: width * 0.04,
            height: 1,
          ),
        ),
      ),
    );
  }
}

class LetsTalk extends StatefulWidget {
  const LetsTalk({super.key});

  @override
  State<LetsTalk> createState() => _LetsTalkState();
}

class _LetsTalkState extends State<LetsTalk> {
  bool isHover = false;
  final MyWebController controller = Get.find<MyWebController>();

  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.sizeOf(context).height;
    final width = MediaQuery.sizeOf(context).width;
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        InkWell(
          onHover: (value) {
            setState(() {
              value ? isHover = true : isHover = false;
            });
          },
          onTap: () => controller.scrollToBottom(),
          child: Column(
            children: [
              MyTextPoppines(
                text: AppText.talkBusiness,
                color: isHover ? AppColors.orange : AppColors.lightGreen,
                fontWeight: FontWeight.w700,
                fontSize: width * 0.009,
                textAlign: TextAlign.center,
              ),
              Visibility(
                child: Container(
                  width: width * 0.092,
                  height: height * 0.0018,
                  color: isHover ? AppColors.orange : AppColors.lightGreen,
                ),
              )
            ],
          ),
        ),
        SizedBox(width: width * 0.006),
        Icon(
          Icons.arrow_outward,
          color: isHover ? AppColors.orange : AppColors.lightGreen,
          size: width * 0.015,
        ),
      ],
    );
  }
}
