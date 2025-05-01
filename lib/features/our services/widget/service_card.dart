import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:go_router/go_router.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:wakeup_web/features/our%20services/models/our_service_model.dart';
import 'package:wakeup_web/utils/res/comman/app_colors.dart';
import 'package:wakeup_web/utils/res/routing/app_pages.dart';

import '../../../utils/res/my_text.dart';
import '../controllers/hover_controller.dart';

class OurServiceCard extends StatelessWidget {
  final OurServicesController cardHoverController;
  final OurServiceModel service;
  final bool isLast;
  const OurServiceCard({
    super.key,
    required this.cardHoverController,
    required this.service,
    required this.isLast,
  });

  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.sizeOf(context).height;
    final width = MediaQuery.sizeOf(context).width;
    bool isMobile = width <= 600;
    bool isTab = width > 600 || width < 1271;
    bool isWeb = width > 1270;
    return InkWell(
      onTap: () => context.push(AppRoutes.siteUnderMaintaince),
      child: Column(
        children: [
          MouseRegion(
            onEnter: (_) => cardHoverController.onHover(true),
            onExit: (_) => cardHoverController.onHover(false),
            child: Obx(
              () => Container(
                padding:
                    const EdgeInsets.symmetric(horizontal: 18, vertical: 32),
                color: cardHoverController.isHovered.value
                    ? AppColors.black10
                    : AppColors.blackBg,
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    // Service
                    SizedBox(
                      width: isMobile ? width * 0.35 : width * 0.32,
                      child: Text(
                        service.title,
                        style: cardHoverController.isHovered.value
                            ? GoogleFonts.syne(
                                fontSize: isWeb
                                    ? 28
                                    : isMobile
                                        ? 16
                                        : 22,
                                fontWeight: FontWeight.bold,
                                foreground: Paint()
                                  ..style = PaintingStyle.stroke
                                  ..strokeWidth = 1.2
                                  ..color = AppColors.orange,
                              )
                            : GoogleFonts.syne(
                                fontSize: isWeb
                                    ? 28
                                    : isMobile
                                        ? 16
                                        : 22,
                                //   fontSize: width * 0.016,
                                color: AppColors.white,
                                fontWeight: FontWeight.bold,
                              ),
                      ),
                    ),

                    Expanded(
                      child: Row(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          if (isTab) const SizedBox(width: 8),
                          // Subpoints
                          if (!isMobile)
                            SizedBox(
                              width: isWeb ? width * 0.6 : width * 0.4,
                              child: Wrap(
                                alignment: WrapAlignment.start,
                                spacing: width * 0.015,
                                runSpacing: height * 0.015,
                                children: service.subPoints
                                    .map((subPoint) => buildText(
                                        context,
                                        subPoint,
                                        cardHoverController.isHovered.value))
                                    .toList(),
                              ),
                            )
                          else
                            const SizedBox.shrink(),
                          GestureDetector(
                            onTap: () => service.onTap,
                            child: Obx(
                              () => Column(
                                crossAxisAlignment: CrossAxisAlignment.center,
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  SizedBox(height: height * 0.02),
                                  !cardHoverController.isHovered.value
                                      ? Container(
                                          width: isWeb
                                              ? 36
                                              : isMobile
                                                  ? 24
                                                  : 30,
                                          height: isWeb
                                              ? 36
                                              : isMobile
                                                  ? 24
                                                  : 30,
                                          decoration: BoxDecoration(
                                            color:
                                                Colors.white.withOpacity(0.7),
                                            shape: BoxShape.circle,
                                          ),
                                          child: Icon(
                                            Icons.arrow_forward_outlined,
                                            color: cardHoverController
                                                    .isHovered.value
                                                ? AppColors.orange
                                                : AppColors.blackBg,
                                            size: isWeb
                                                ? 18
                                                : isMobile
                                                    ? 12
                                                    : 14,
                                          ),
                                        )
                                      : const MyTextSyne(
                                          text: "View More",
                                          fontSize: 14,
                                          //  width * 0.0065,
                                          color: AppColors.orange,
                                          fontWeight: FontWeight.w500,
                                        ),
                                ],
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
          Visibility(
            visible: isLast,
            child: Divider(
              thickness: width * 0.001,
              height: 0,
              color: AppColors.white.withOpacity(0.2),
            ),
          ),
        ],
      ),
    );
  }

  Widget buildText(BuildContext context, String text, bool isHovered) {
    final height = MediaQuery.sizeOf(context).height;
    final width = MediaQuery.sizeOf(context).width;
    bool isMobile = width <= 600;
    bool isTab = width > 600 || width < 1271;
    bool isWeb = width > 1270;
    return SizedBox(
      width: width * 0.22,
      child: Row(
        mainAxisSize: MainAxisSize.min,
        children: [
          Container(
            width: 2,
            height: 16,
            color: isHovered ? AppColors.orange : AppColors.yellow,
          ),
          SizedBox(width: 6),
          MyTextSyne(
            text: text,
            fontSize: isWeb
                ? 16
                : isMobile
                    ? 10
                    : 12,
            // fontSize: width * 0.0085,
            fontWeight: FontWeight.w600,
            color: AppColors.white.withOpacity(0.8),
          ),
        ],
      ),
    );
  }
}
