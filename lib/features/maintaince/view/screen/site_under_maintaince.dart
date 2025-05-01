import 'dart:async';

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:go_router/go_router.dart';
import 'package:wakeup_web/features/our%20services/widget/services_card.dart';
import 'package:wakeup_web/utils/res/comman/app_colors.dart';
import 'package:wakeup_web/utils/res/my_text.dart';

import '../../../home/widgets/home_appbar.dart';

class SiteUnderMaintaince extends StatelessWidget {
  const SiteUnderMaintaince({super.key});

  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.sizeOf(context).height;
    final width = MediaQuery.sizeOf(context).width;
    bool isMobile = width < 600;
    bool isTab = width >= 600 && width < 1271;
    bool isWeb = width >= 1270;

    return Scaffold(
      backgroundColor: AppColors.blackBg,
      appBar: PreferredSize(
        preferredSize: Size(width, 80),
        child: const HomeAppBar(),
      ),
      body: Column(
        //  mainAxisAlignment: MainAxisAlignment.center,
        children: [
          SizedBox(
            height: isMobile ? height * 0.65 : height * 0.6,
            child: const Center(
              child: ScrollingStrip(
                scrollLeft: true,
                backgroundColor: AppColors.transparent,
              ),
            ),
          ),
          Expanded(
            child: Container(
              width: width,
              padding: EdgeInsets.symmetric(horizontal: 40),
              color: AppColors.white,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  SizedBox(height: isMobile ? 45 : width * 0.03),
                  MyTextPoppines(
                    text:
                        "Looks like the page your were looking for doesn’t exist.",
                    fontSize: isMobile ? 25 : 30,
                    fontWeight: isMobile ? FontWeight.w300 : FontWeight.w500,
                    color: AppColors.black,
                    textAlign: TextAlign.center,
                    maxLines: 3,
                  ),
                  SizedBox(height: isMobile ? 30 : width * 0.01),
                  const GoToHomePage(),
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}

class MaintainceBanner extends StatelessWidget {
  const MaintainceBanner({
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
        painter:
            MyCustomRectanglePainter(color: AppColors.white.withOpacity(0.2)),
        size: Size(width, height * 0.3),
        child: Padding(
          padding: EdgeInsets.only(
            top: height * 0.05,
            left: width * 0.1,
            right: width * 0.1,
            bottom: height * 0.03,
          ),
          child: MyTextPoppines(
            text: "Page Not Found",
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

class ScrollingBrandsWidget extends StatelessWidget {
  const ScrollingBrandsWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return const ScrollingStrip(
      scrollLeft: true,
      backgroundColor: AppColors.transparent,
    );
  }
}

class PageNotFoundController extends GetxController {
  final ScrollController scrollController = ScrollController();
  late Timer _timer;
  late double step;
  final bool scrollLeft; // true: content scrolls left, false: scrolls right
  bool isHovered = false;

  PageNotFoundController({required this.scrollLeft}) {
    // If scrolling left, increase offset (2.0), otherwise decrease (-2.0)
    step = scrollLeft ? 2.0 : -2.0;
    _startScrolling();
  }

  void _startScrolling() {
    _timer = Timer.periodic(const Duration(milliseconds: 30), (_) {
      if (scrollController.hasClients) {
        final offset = scrollController.offset + step;
        final maxScroll = scrollController.position.maxScrollExtent;
        final minScroll = scrollController.position.minScrollExtent;

        if (offset >= maxScroll) {
          scrollController.jumpTo(minScroll);
        } else if (offset <= minScroll) {
          scrollController.jumpTo(maxScroll);
        } else {
          scrollController.jumpTo(offset);
        }
      }
    });
  }

  void setHovered(bool hovered) {
    isHovered = hovered;
    update();
  }

  @override
  void onClose() {
    _timer.cancel();
    scrollController.dispose();
    super.onClose();
  }
}

class ScrollingStrip extends StatelessWidget {
  final bool scrollLeft;
  final Color backgroundColor;

  const ScrollingStrip({
    Key? key,
    required this.scrollLeft,
    required this.backgroundColor,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.sizeOf(context).height;
    final width = MediaQuery.sizeOf(context).width;
    // Use a unique tag for each instance to ensure a separate controller.
    final controller = Get.put(
      PageNotFoundController(scrollLeft: scrollLeft),
      tag: UniqueKey().toString(),
    );

    return Container(
      height: height * 0.35,
      color: backgroundColor,
      child: MouseRegion(
        onEnter: (_) => controller.setHovered(true),
        onExit: (_) => controller.setHovered(false),
        child: GetBuilder<PageNotFoundController>(
          init: controller,
          builder: (_) => ListView(
            controller: controller.scrollController,
            scrollDirection: Axis.horizontal,
            physics: const NeverScrollableScrollPhysics(),
            // Remove reverse property to let our controller manage direction.
            children: [_buildTextRow(controller.isHovered, context)],
            //  children: [_buildImageRow(controller.isHovered, context)],
          ),
        ),
      ),
    );
  }

  Widget _buildTextRow(bool isHovered, BuildContext context) {
    final List<String> texts = [
      'PAGE  NOT  FOUND  *  SITE  UNDER  MAINTAINCE  *  PAGE  NOT  FOUND  *',
      'PAGE  NOT  FOUND  *  SITE  UNDER  MAINTAINCE  *  PAGE  NOT  FOUND  *',
      'PAGE  NOT  FOUND  *  SITE  UNDER  MAINTAINCE  *  PAGE  NOT  FOUND  *',
      'PAGE  NOT  FOUND  *  SITE  UNDER  MAINTAINCE  *  PAGE  NOT  FOUND  *',
      'PAGE  NOT  FOUND  *  SITE  UNDER  MAINTAINCE  *  PAGE  NOT  FOUND  *',
      'PAGE  NOT  FOUND  *  SITE  UNDER  MAINTAINCE  *  PAGE  NOT  FOUND  *',
    ];

    final combined = [...texts, ...texts];
    final width = MediaQuery.sizeOf(context).width;
    bool isMobile = width < 600;
    bool isTab = width >= 600 && width < 1271;
    bool isWeb = width >= 1270;
    return Row(
      children: combined
          .map(
            (text) => Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: MyText(
                text: text,
                color: AppColors.white,
                googleFontFamily: "Anton",
                fontSize: isMobile ? 98 : 88,
                //     fontSize: width * 0.06,
                fontWeight: FontWeight.w500,
                //stroke: isHovered,
              ),
            ),
          )
          .toList(),
    );
  }
}

class GoToHomePage extends StatefulWidget {
  const GoToHomePage({super.key});

  @override
  State<GoToHomePage> createState() => _GoToHomePageState();
}

class _GoToHomePageState extends State<GoToHomePage> {
  bool isHover = false;

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
          onTap: () => context.go('/'),
          child: Column(
            children: [
              Container(
                decoration: BoxDecoration(
                  border: Border(
                      bottom: BorderSide(
                    color: isHover ? AppColors.orange : AppColors.lightGreen,
                    width: 2,
                  )),
                ),
                child: MyText(
                  text: "Go to Homepage",
                  color: isHover ? AppColors.orange : AppColors.lightGreen,
                  fontWeight: FontWeight.w400,
                  googleFontFamily: 'Anton',
                  fontSize: 24,
                  textAlign: TextAlign.center,
                ),
              ),
            ],
          ),
        ),
        SizedBox(width: width * 0.006),
        Icon(
          Icons.arrow_outward,
          color: isHover ? AppColors.orange : AppColors.lightGreen,
          size: 26,
        ),
      ],
    );
  }
}
