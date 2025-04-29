import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:wakeup_web/features/our%20services/widget/service_card.dart';
import 'package:wakeup_web/my%20web/controller/my_web_controller.dart';
import 'package:wakeup_web/utils/componets/buttons/stack_buttomn.dart';
import 'package:wakeup_web/utils/constant/app_sizer.dart';
import 'package:wakeup_web/utils/res/comman/app_colors.dart';
import 'package:wakeup_web/utils/res/comman/app_list.dart';

import '../../../utils/res/my_text.dart';
import '../../we help/screen/we_help_section.dart';
import '../controllers/hover_controller.dart';

class OurServices extends StatelessWidget {
  const OurServices({super.key});

  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.sizeOf(context).height;
    final width = MediaQuery.sizeOf(context).width;
    bool isMobile = width < 600;
    bool isTab = width >= 600 && width < 1271;
    bool isWeb = width >= 1270;

    final hoverControllers = List.generate(
        AppList.services.length, (index) => OurServicesController()).obs;
    return Container(
      width: width,
      padding: EdgeInsets.symmetric(vertical: width * 0.06),
      color: AppColors.blackBg,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          SizedBox(height: isMobile ? 40 : 0),
          SizedBox(
            width: isMobile
                ? width * 0.8
                : isTab
                    ? width * 0.5
                    : width * 0.4,
            child: MyTextPoppines(
              text: "OUR PRODUCT DEVELOPMENT SERVICES",
              fontSize: isMobile
                  ? AppSizer.font28
                  : isTab
                      ? AppSizer.font40
                      : AppSizer.font48,
              //  fontSize: isWeb ? AppSizer.font48 : AppSizer.font32,
              //   fontSize: width * 0.03,
              color: AppColors.lightGreen,
              letterSpacing: -2,
              fontWeight: FontWeight.bold,
              maxLines: 3,
              height: 1.1,
              textAlign: TextAlign.center,
            ),
          ),
          SizedBox(height: isMobile ? 12 : height * 0.014),
          SizedBox(
            width: isMobile
                ? width * 0.9
                : isTab
                    ? width * 0.7
                    : width * 0.6,
            child: MyTextPoppines(
              text:
                  "We can provide just one service or make a combination of the best-fitting expertise required for your project.",
              fontSize: isMobile ? 12 : AppSizer.font15,
              //  fontSize: width * 0.008,
              color: AppColors.white.withOpacity(0.6),
              fontWeight: isMobile ? FontWeight.w300 : FontWeight.w500,
              textAlign: TextAlign.center,
              maxLines: 3,
              height: isMobile ? 1.6 : 1.4,
            ),
          ),
          SizedBox(height: width * 0.08),
          ListView.builder(
            itemCount: AppList.services.length,
            shrinkWrap: true,
            physics: const NeverScrollableScrollPhysics(),
            padding: EdgeInsets.zero,
            itemBuilder: (context, index) {
              final service = AppList.services[index];
              final cardHoverController = hoverControllers[index];
              return OurServiceCard(
                cardHoverController: cardHoverController,
                service: service,
                isLast: index != AppList.services.length - 1,
              );
            },
          ),
          const SizedBox(height: 40),
          StackButton(
            text: "CONTACT US",
            onTap: () => MyWebController.instance.scrollToBottom(),
          ),
          SizedBox(height: isMobile ? 40 : 60),
        ],
      ),
    );
  }
}
