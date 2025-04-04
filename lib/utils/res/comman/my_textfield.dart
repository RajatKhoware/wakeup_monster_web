import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:wakeup_web/utils/res/comman/app_colors.dart';
import 'package:wakeup_web/utils/res/my_text.dart';

class MyTextFeild extends StatelessWidget {
  final TextEditingController controller;
  final String lableText;
  final int? maxlines;
  final bool? isPhoneField;
  final String? Function(String?)? validator;
  const MyTextFeild({
    super.key,
    required this.controller,
    required this.lableText,
    this.maxlines,
    this.isPhoneField,
    this.validator,
  });

  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.sizeOf(context).width;
    // Border
    const OutlineInputBorder border = OutlineInputBorder(
      borderSide: BorderSide(color: AppColors.white),
    );
    return TextFormField(
      mouseCursor: MouseCursor.defer,
      cursorColor: AppColors.orange,
      controller: controller,
      maxLines: maxlines ?? 1,
      inputFormatters:
          isPhoneField ?? false ? [FilteringTextInputFormatter.digitsOnly] : [],
      keyboardType:
          isPhoneField ?? false ? TextInputType.phone : TextInputType.text,
      style: TextStyle(
        color: AppColors.white,
        fontSize: width * 0.008,
      ),
      decoration: InputDecoration(
        filled: true,
        hoverColor: AppColors.white.withOpacity(0.2),
        fillColor: AppColors.black10,
        border: border,
        disabledBorder: border,
        focusedBorder: border,
        errorBorder: const OutlineInputBorder(
          borderSide: BorderSide(
            color: Colors.red,
          ),
        ),
        alignLabelWithHint: true, // Aligns label with the hint text
        label: MyTextPoppines(
          text: lableText,
          fontSize: width * 0.007,
          textAlign: TextAlign.start,
          color: AppColors.white,
        ),
      ),
      validator: validator,
    );
  }
}
