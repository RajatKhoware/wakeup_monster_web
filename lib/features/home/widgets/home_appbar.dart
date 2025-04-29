import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:wakeup_web/my%20web/controller/my_web_controller.dart';
import 'package:wakeup_web/utils/res/comman/app_colors.dart';
import 'package:wakeup_web/utils/res/comman/app_images.dart';
import 'package:wakeup_web/utils/res/comman/app_text.dart';
import 'package:wakeup_web/utils/res/routing/app_pages.dart';

import '../../../utils/res/my_text.dart';

class HomeAppBar extends StatefulWidget {
  final bool? showOptions;
  const HomeAppBar({super.key, this.showOptions});

  @override
  State<HomeAppBar> createState() => _HomeAppBarState();
}

class _HomeAppBarState extends State<HomeAppBar> {
  bool isDarkTheme = true;

  final List _isHovering = [
    false,
    false,
    false,
    false,
    false,
  ];
  @override
  Widget build(BuildContext context) {
    // final height = MediaQuery.sizeOf(context).height;
    final width = MediaQuery.sizeOf(context).width;
    Color appBarBgColor = isDarkTheme ? AppColors.blackBg : AppColors.white;

    void tap() {
      context.push(AppRoutes.siteUnderMaintaince);
    }

    bool isMobile = width < 600;
    bool isTab = width >= 600 && width < 1271;
    bool isWeb = width >= 1270;
    return Container(
      color: appBarBgColor,
      child: Padding(
        padding: const EdgeInsets.all(20),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Image.asset(
              isDarkTheme ? AppImg.logo : AppImg.darkLogo,
              width: isMobile ? 90 : width * 0.12,
            ),
            if (isMobile) ...[
              Icon(
                Icons.menu,
                size: 30,
                color: AppColors.white,
              ),
            ],
            if (widget.showOptions ?? true && !isMobile) ...[
              SizedBox(
                width: width * 0.3,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    // Portfolio
                    buildHeadings(
                      context: context,
                      text: AppText.portfolio,
                      isHovered: _isHovering[0],
                      onHover: (value) {
                        setState(() {
                          value
                              ? _isHovering[0] = true
                              : _isHovering[0] = false;
                        });
                      },
                      onTap: () => tap(),
                    ),
                    // Services
                    buildHeadings(
                      context: context,
                      text: AppText.services,
                      isHovered: _isHovering[1],
                      onHover: (value) {
                        setState(() {
                          value
                              ? _isHovering[1] = true
                              : _isHovering[1] = false;
                        });
                      },
                      onTap: () => tap(),
                    ),
                    // Solution
                    buildHeadings(
                      context: context,
                      text: AppText.solutions,
                      isHovered: _isHovering[2],
                      onHover: (value) {
                        setState(() {
                          value
                              ? _isHovering[2] = true
                              : _isHovering[2] = false;
                        });
                      },
                      onTap: () => tap(),
                    ),
                    // Pricing
                    buildHeadings(
                      context: context,
                      text: AppText.pricing,
                      isHovered: _isHovering[3],
                      onHover: (value) {
                        setState(() {
                          value
                              ? _isHovering[3] = true
                              : _isHovering[3] = false;
                        });
                      },
                      onTap: () => tap(),
                    ),
                    // Contact us
                    InkWell(
                      onHover: (value) {
                        setState(() {
                          value
                              ? _isHovering[4] = true
                              : _isHovering[4] = false;
                        });
                      },
                      onTap: () {
                        MyWebController.instance.scrollToBottom();
                      },
                      child: MyTextPoppines(
                        text: AppText.contactUs,
                        color: _isHovering[4]
                            ? AppColors.lightGreen
                            : AppColors.orange,
                        fontWeight: FontWeight.w600,
                        fontSize: width * 0.008,
                      ),
                    ),
                  ],
                ),
              ),
            ],
            if (!isMobile) SizedBox(width: width * 0.08)
          ],
        ),
      ),
    );
  }

  Widget buildHeadings({
    required BuildContext context,
    required String text,
    required bool isHovered,
    required void Function(bool)? onHover,
    required VoidCallback onTap,
  }) {
    final width = MediaQuery.sizeOf(context).width;

    return InkWell(
      onHover: onHover,
      onTap: onTap,
      child: Row(
        children: [
          MyTextPoppines(
            text: text,
            color: isHovered ? AppColors.lightGreen : AppColors.white,
            fontWeight: FontWeight.normal,
            fontSize: width * 0.008,
          ),
          SizedBox(width: width * 0.002),
          Visibility(
            visible: isHovered,
            child: Icon(
              Icons.arrow_outward,
              color: AppColors.lightGreen,
              size: width * 0.01,
            ),
          ),
        ],
      ),
    );
  }
}
