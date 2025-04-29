import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:wakeup_web/my%20web/controller/my_web_controller.dart';
import 'package:wakeup_web/utils/constant/app_sizer.dart';
import 'package:wakeup_web/utils/res/comman/app_colors.dart';
import 'package:wakeup_web/utils/res/comman/app_text.dart';

import '../../../utils/res/my_text.dart';

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
    bool isMobile = width < 600;
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
              Container(
                decoration: BoxDecoration(
                  border: Border(
                      bottom: BorderSide(
                    color: isHover ? AppColors.orange : AppColors.lightGreen,
                    width: 2,
                  )),
                ),
                child: MyTextPoppines(
                  text: AppText.talkBusiness,
                  color: isHover ? AppColors.orange : AppColors.lightGreen,
                  fontWeight: FontWeight.w600,
                  fontSize: isMobile ? AppSizer.font16 : AppSizer.font18,
                  //fontSize: width * 0.009,
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
          size: AppSizer.font18,
          //size: width * 0.015,
        ),
      ],
    );
  }
}
