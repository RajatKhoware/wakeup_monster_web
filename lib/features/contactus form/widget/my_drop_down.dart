import 'package:flutter/material.dart';
import 'package:wakeup_web/utils/constant/app_sizer.dart';
import 'package:wakeup_web/utils/res/comman/app_colors.dart';

import '../../../utils/res/my_text.dart';

class MyDropdownField extends StatefulWidget {
  final String labelText;
  final List<String> items;
  final String initialValue;
  final Function(String) onChanged;

  const MyDropdownField({
    super.key,
    required this.labelText,
    required this.items,
    required this.initialValue,
    required this.onChanged,
  });

  @override
  _MyDropdownFieldState createState() => _MyDropdownFieldState();
}

class _MyDropdownFieldState extends State<MyDropdownField> {
  late String selectedValue;

  @override
  void initState() {
    super.initState();
    selectedValue = widget.initialValue;
  }

  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.sizeOf(context).width;

    return Container(
      decoration: BoxDecoration(
        color: AppColors.black10,
        borderRadius: BorderRadius.circular(4),
        border: Border.all(
          color: AppColors.white.withOpacity(0.2),
        ),
      ),
      padding: EdgeInsets.symmetric(horizontal: 12),
      child: DropdownButtonHideUnderline(
        child: DropdownButton<String>(
          value: selectedValue,
          icon: const Icon(Icons.arrow_drop_down, color: AppColors.white),
          dropdownColor: AppColors.black10,
          style: TextStyle(
            color: AppColors.white,
            fontSize: AppSizer.font15,
            //  fontSize: width * 0.008,
          ),
          items: widget.items.map((String item) {
            return DropdownMenuItem<String>(
              value: item,
              child: MyTextPoppines(
                text: item,
                fontSize: AppSizer.font15,
                //   fontSize: width * 0.007,
                color: AppColors.white,
              ),
            );
          }).toList(),
          onChanged: (String? newValue) {
            if (newValue != null) {
              setState(() {
                selectedValue = newValue;
              });
              widget.onChanged(newValue);
            }
          },
        ),
      ),
    );
  }
}
