import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../../../utils/res/comman/app_colors.dart';


class IncrementedCustomRectangle extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    final width = size.width;
    final height = size.height;
    final Paint paint = Paint()
      ..color = AppColors.black
      ..style = PaintingStyle.stroke;

    final Path path = Path()
      ..moveTo(0, height * 0.12) // point A
      ..lineTo(width, height * 0.001) // point B
      ..lineTo(width, height) // point C
      ..lineTo(0, height * 0.9) // point D
      ..close();

    canvas.drawPath(path, paint);
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) {
    return false;
  }
}