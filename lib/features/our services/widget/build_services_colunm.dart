import 'package:flutter/material.dart';
import 'package:wakeup_web/utils/res/comman/app_colors.dart';
import 'package:wakeup_web/utils/res/comman/app_list.dart';

import '../../../utils/res/my_text.dart';
import '../../home/screens/home_screen.dart';
import 'services_card.dart';


class BuildServicesColunm extends StatefulWidget {
  final bool isMarketingService;
  const BuildServicesColunm({super.key, required this.isMarketingService});

  @override
  State<BuildServicesColunm> createState() => _BuildServicesColunmState();
}

class _BuildServicesColunmState extends State<BuildServicesColunm> {
  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.sizeOf(context).height;
    final width = MediaQuery.sizeOf(context).width;
    return Column(
      children: [
        MyTextPoppines(
          text: widget.isMarketingService
              ? "Digital Marketing"
              : "Software Development",
          fontSize: width * 0.015,
          color: AppColors.blackBg,
          fontWeight: FontWeight.bold,
        ),
        SizedBox(height: height * 0.015),
        SizedBox(
          width: width * 0.3,
          child: ListView.builder(
            shrinkWrap: true,
            itemCount: AppList.softwareDevelopmentServices.length,
            itemBuilder: (context, index) {
              final digital = AppList.digitalMarketingServices[index];
              final software = AppList.softwareDevelopmentServices[index];
              final data = widget.isMarketingService ? digital : software;
              return ServicesCard(
                heading: data.heading,
                subHeading: data.subHeading,
                isHovered: data.isHovered,
                onHovered: (value) {
                  setState(() {
                    value ? data.isHovered = true : data.isHovered = false;
                  });
                },
                onTap: () {},
              );
            },
          ),
        )
      ],
    );
  }
}
