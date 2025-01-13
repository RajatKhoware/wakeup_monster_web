import 'package:flutter/material.dart';
import 'package:wakeup_web/utils/res/comman/app_colors.dart';
import 'package:wakeup_web/utils/res/comman/app_images.dart';

import '../../../utils/res/my_text.dart';

class ServicesCard extends StatelessWidget {
  final String heading;
  final String subHeading;
  final bool isHovered;
  final void Function(bool)? onHovered;
  final VoidCallback onTap;
  const ServicesCard({
    super.key,
    required this.heading,
    required this.subHeading,
    required this.isHovered,
    required this.onHovered,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.sizeOf(context).height;
    final width = MediaQuery.sizeOf(context).width;
    return Container(
      width: width * 0.2,
      padding: EdgeInsets.symmetric(
        horizontal: width * 0.01,
        vertical: height * 0.02,
      ),
      margin: EdgeInsets.symmetric(vertical: height * 0.008),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(
          isHovered ? width * 0.01 : width * 0.0,
        ),
        color: AppColors.black10,
      ),
      child: Column(
        children: [
          SizedBox(height: height * 0.005),
          Row(
            crossAxisAlignment: CrossAxisAlignment.end,
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              SizedBox(
                width: width * 0.22,
                child: MyTextPoppines(
                  text: heading,
                  fontSize: width * 0.012,
                  color: !isHovered ? AppColors.white : AppColors.orange,
                  fontWeight: FontWeight.w700,
                ),
              ),
              InkWell(
                onTap: onTap,
                onHover: onHovered,
                child: CircleAvatar(
                  radius: width * 0.012,
                  backgroundColor:
                      !isHovered ? AppColors.white : AppColors.orange,
                  child: Icon(
                    Icons.arrow_outward,
                    size: width * 0.014,
                    color: !isHovered ? AppColors.orange : AppColors.black,
                  ),
                ),
              )
            ],
          ),
          SizedBox(height: height * 0.01),
          const Divider(),
          SizedBox(height: height * 0.005),
          SizedBox(
            width: width * 0.3,
            child: MyTextPoppines(
              text: subHeading,
              fontSize: width * 0.006,
              color: Colors.grey.shade400,
              fontWeight: FontWeight.w700,
              height: 1.5,
              maxLines: !isHovered ? 3 : 10,
            ),
          ),
          SizedBox(height: height * 0.02),
          // Visibility(
          //   visible: isHovered,
          //   child: Container(
          //     width: width,
          //     height: width * 0.14,
          //     decoration: BoxDecoration(
          //       borderRadius: BorderRadius.circular(width * 0.005),
          //       image: const DecorationImage(
          //         image: AssetImage(AppImg.team_01),
          //         fit: BoxFit.cover,
          //       ),
          //     ),
          //   ),
          // )
        ],
      ),
    );
  }
}

class MyRectanglePainter extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    final width = size.width;
    final height = size.height;
    final Paint paint = Paint()
      ..color = AppColors.orange
      ..style = PaintingStyle.fill;

    final Path path = Path()
      ..moveTo(0, height * -0.08) // point A
      ..lineTo(width, height * 0.01) // point B
      ..lineTo(width, height) // point C
      ..lineTo(0, height) // point D
      ..close();

    canvas.drawPath(path, paint);
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) {
    return false;
  }
}
