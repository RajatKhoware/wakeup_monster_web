import 'package:flutter/material.dart';

import '../comman/app_colors.dart';

class MyRectanglePainter extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    final width = size.width;
    final height = size.height;
    final Paint paint = Paint()
      ..color = AppColors.orange
      ..style = PaintingStyle.fill;

    final Path path = Path()
      ..moveTo(0, height * 0.08) // point A
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

class MyRectanglePainterYellow extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    final width = size.width;
    final height = size.height;
    final Paint paint = Paint()
      ..color = AppColors.yellow
      ..style = PaintingStyle.fill;

    final Path path = Path()
      ..moveTo(0, height * 0.08) // point A
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
