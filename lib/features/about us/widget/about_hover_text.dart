import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:wakeup_web/utils/res/comman/app_colors.dart';
import 'package:wakeup_web/utils/res/my_text.dart';

class AboutUsHoverText extends StatefulWidget {
  final String text;
  final Color? color;
  final VoidCallback? onTap;

  const AboutUsHoverText(
      {super.key, required this.text, this.color, this.onTap});

  @override
  State<AboutUsHoverText> createState() => _AboutUsHoverTextState();
}

class _AboutUsHoverTextState extends State<AboutUsHoverText> {
  bool isHovered = false;

  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.sizeOf(context).width;

    return InkWell(
      onTap: widget.onTap,
      child: MouseRegion(
        onEnter: (_) => setState(() => isHovered = true),
        onExit: (_) => setState(() => isHovered = false),
        child: MyTextPoppines(
          text: widget.text,
          fontSize: width * 0.007,
          fontWeight: isHovered ? FontWeight.w500 : FontWeight.w300,
          color:
              isHovered ? AppColors.orange : (widget.color ?? AppColors.white),
        ),
      ),
    );
  }
}
