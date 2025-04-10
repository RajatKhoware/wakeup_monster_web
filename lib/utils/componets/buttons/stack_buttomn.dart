import 'package:flutter/material.dart';
import 'package:wakeup_web/utils/res/comman/app_colors.dart';

import '../../../utils/res/my_text.dart';

class StackButton extends StatefulWidget {
  final String text;
  final VoidCallback onTap;
  const StackButton({super.key, required this.text, required this.onTap});

  @override
  State<StackButton> createState() => _StackButtonState();
}

class _StackButtonState extends State<StackButton> {
  bool isHovered = false;

  final List<Color> layerColors = [
    AppColors.orange,
    AppColors.black,
    AppColors.yellow,
  ];

  // How far each layer should slide away on hover.
  final double offsetPerLayer = 6.0;

  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.sizeOf(context).height;
    final width = MediaQuery.sizeOf(context).width;

    return MouseRegion(
      onEnter: (_) => setState(() => isHovered = true),
      onExit: (_) => setState(() => isHovered = false),
      child: InkWell(
        onTap: widget.onTap,
        child: SizedBox(
          width: 200,
          height: 50,

          // Allow overflow so the layers don't affect the overall button size
          child: Stack(
            clipBehavior: Clip.none,
            children: [
              for (int i = 0; i < layerColors.length; i++)
                // Only animate the underlying layers (orange and black).
                // The main button layer (index 2) stays at the default position.
                AnimatedPositioned(
                  duration: const Duration(milliseconds: 250),
                  curve: Curves.easeOut,
                  bottom: !(i != layerColors.length - 1 && isHovered)
                      ? -((layerColors.length - 1 - i) * offsetPerLayer)
                      : 0,
                  right: !(i != layerColors.length - 1 && isHovered)
                      ? -((layerColors.length - 1 - i) * offsetPerLayer)
                      : 0,
                  child: Container(
                    width: 200,
                    height: 50,

                    decoration: BoxDecoration(
                      color: layerColors[i],
                      border: Border.all(color: AppColors.yellow),
                    ),
                    alignment: Alignment.center,
                    // Only the main layer (top, index 2) shows the text.
                    child: i == layerColors.length - 1
                        ? MyTextPoppines(
                            text: widget.text,
                            fontSize: width * 0.0085,
                            fontWeight: FontWeight.bold,
                            color: isHovered
                                ? AppColors.black
                                : AppColors.black.withOpacity(0.8),
                          )
                        : const SizedBox.shrink(),
                  ),
                ),
            ],
          ),
        ),
      ),
    );
  }
}

// class StackButton extends StatefulWidget {
//   const StackButton({super.key});

//   @override
//   State<StackButton> createState() => _StackButtonState();
// }

// class _StackButtonState extends State<StackButton> {
//   bool isHovered = false;

//   @override
//   Widget build(BuildContext context) {
//     final height = MediaQuery.sizeOf(context).height;
//     final width = MediaQuery.sizeOf(context).width;
//     final webController = Get.find<MyWebController>();

//     return MouseRegion(
//       onEnter: (_) => setState(() => isHovered = true),
//       onExit: (_) => setState(() => isHovered = false),
//       child: InkWell(
//         onTap: () => webController.scrollToBottom(),
//         child: AnimatedContainer(
//           duration: const Duration(milliseconds: 200),
//           decoration: BoxDecoration(
//             color: isHovered ? Colors.transparent : AppColors.yellow,
//             border: Border.all(color: AppColors.yellow),
//             borderRadius: BorderRadius.circular(0),
//           ),
//           padding: EdgeInsets.symmetric(
//             horizontal: width * 0.03,
//             vertical: height * 0.014,
//           ),
//           child: Row(
//             mainAxisSize: MainAxisSize.min,
//             children: [
//               Center(
//                 child: MyTextPoppines(
//                   text: "Contact Us",
//                   fontSize: width * 0.0085,
//                   fontWeight: FontWeight.bold,
//                   color: isHovered
//                       ? AppColors.yellow
//                       : AppColors.black.withOpacity(0.8),
//                 ),
//               ),
//             ],
//           ),
//         ),
//       ),
//     );
//   }
// }
