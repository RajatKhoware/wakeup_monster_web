import 'dart:async';

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:wakeup_web/utils/res/comman/app_colors.dart';
import 'package:wakeup_web/utils/res/my_text.dart';

class ScrollingBrandsWidget extends StatelessWidget {
  const ScrollingBrandsWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        // This strip scrolls left (content moves left)
        ScrollingStrip(
          scrollLeft: true,
          backgroundColor: AppColors.transparent,
        ),
        // This strip scrolls right (content moves right)
        // ScrollingStrip(
        //   scrollLeft: false,
        //   backgroundColor: AppColors.transparent,
        // ),
      ],
    );
  }
}

class ScrollingBrandsWidget2 extends StatelessWidget {
  const ScrollingBrandsWidget2({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        ScrollingStrip(
          scrollLeft: false,
          backgroundColor: AppColors.transparent,
        ),
      ],
    );
  }
}

class ScrollingStripController extends GetxController {
  final ScrollController scrollController = ScrollController();
  late Timer _timer;
  late double step;
  final bool scrollLeft; // true: content scrolls left, false: scrolls right
  bool isHovered = false;

  ScrollingStripController({required this.scrollLeft}) {
    // If scrolling left, increase offset (2.0), otherwise decrease (-2.0)
    step = scrollLeft ? 2.0 : -2.0;
    _startScrolling();
  }

  void _startScrolling() {
    _timer = Timer.periodic(const Duration(milliseconds: 40), (_) {
      if (scrollController.hasClients) {
        final offset = scrollController.offset + step;
        final maxScroll = scrollController.position.maxScrollExtent;
        final minScroll = scrollController.position.minScrollExtent;

        if (offset >= maxScroll) {
          scrollController.jumpTo(minScroll);
        } else if (offset <= minScroll) {
          scrollController.jumpTo(maxScroll);
        } else {
          scrollController.jumpTo(offset);
        }
      }
    });
  }

  void setHovered(bool hovered) {
    isHovered = hovered;
    update();
  }

  @override
  void onClose() {
    _timer.cancel();
    scrollController.dispose();
    super.onClose();
  }
}

class ScrollingStrip extends StatelessWidget {
  final bool scrollLeft;
  final Color backgroundColor;

  const ScrollingStrip({
    Key? key,
    required this.scrollLeft,
    required this.backgroundColor,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // Use a unique tag for each instance to ensure a separate controller.
    final controller = Get.put(
      ScrollingStripController(scrollLeft: scrollLeft),
      tag: UniqueKey().toString(),
    );

    return Container(
      height: 150,
      color: backgroundColor,
      child: MouseRegion(
        onEnter: (_) => controller.setHovered(true),
        onExit: (_) => controller.setHovered(false),
        child: GetBuilder<ScrollingStripController>(
          init: controller,
          builder: (_) => ListView(
            controller: controller.scrollController,
            scrollDirection: Axis.horizontal,
            physics: const NeverScrollableScrollPhysics(),
            // Remove reverse property to let our controller manage direction.
            // children: [_buildTextRow(controller.isHovered)],
            children: [_buildImageRow(controller.isHovered)],
          ),
        ),
      ),
    );
  }

  Widget _buildTextRow(bool isHovered) {
    final List<String> texts = [
      '360 Product Spins * Invisible Mannequins * Stop Motion *',
      'Flat Lay * Augmented Reality * Still Life *',
      '3D-AR * Invisible Mannequins * Still Life *',
    ];

    // Duplicate the content in a single row for seamless looping.
    final combined = [...texts, ...texts];

    return Row(
      children: combined
          .map(
            (text) => Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: MyTextPoppines(
                text: text,
                fontSize: 24,
                fontWeight: FontWeight.bold,
                // Pass the hover flag if you use it to show stroke effects
                stroke: isHovered,
              ),
            ),
          )
          .toList(),
    );
  }

  Widget _buildImageRow(bool isHovered) {
    // Replace these asset paths with your actual brand logo paths
    final List<String> imagePaths = [
      'assets/logo/brand1.png',
      'assets/logo/brand.png',
      'assets/logo/brand3.png',
      'assets/logo/brand4.png',
      'assets/logo/brand1.png',
      'assets/logo/brand.png',
      'assets/logo/brand3.png',
      'assets/logo/brand4.png',
      'assets/logo/brand1.png',
      'assets/logo/brand.png',
      'assets/logo/brand3.png',
      'assets/logo/brand4.png',
      'assets/logo/brand1.png',
      'assets/logo/brand.png',
      'assets/logo/brand3.png',
      'assets/logo/brand4.png',
    ];

    // Duplicate the content in a single row for seamless looping.
    final combined = [...imagePaths, ...imagePaths];

    return Row(
      children: combined
          .map(
            (imagePath) => Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: _buildBrandImage(imagePath, isHovered),
            ),
          )
          .toList(),
    );
  }

  Widget _buildBrandImage(String imagePath, bool isHovered) {
    return AnimatedContainer(
      duration: const Duration(milliseconds: 300),
      margin: EdgeInsets.symmetric(horizontal: 20),
      //  padding: EdgeInsets.all(isHovered ? 8 : 0),
      decoration: BoxDecoration(
        // border: isHovered ? Border.all(color: Colors.orange, width: 2) : null,
        borderRadius: BorderRadius.circular(8),
      ),
      child: Image.asset(
        imagePath,
        height: 100,
        fit: BoxFit.contain,
      ),
    );
  }
}

// import 'dart:async';
// import 'package:flutter/material.dart';

// void main() => runApp(const ScrollingBrandsW());

// class ScrollingBrandsW extends StatelessWidget {
//   const ScrollingBrandsW({super.key});
//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       home: Scaffold(
//         appBar: AppBar(title: const Text('Two-Way Smooth Scrolling Text')),
//         body: Column(
//           children: const [
//             ScrollingText2(
//               isRight: true,
//               direction: AxisDirection.right, // Scroll to the right
//               backgroundColor:
//                   Colors.yellow, // Background color for first strip
//             ),
//             ScrollingText(
//               isRight: false,
//               direction: AxisDirection.left, // Scroll to the left
//               backgroundColor:
//                   Colors.green, // Background color for second strip
//             ),
//           ],
//         ),
//       ),
//     );
//   }
// }

// class ScrollingText2 extends StatefulWidget {
//   final bool isRight;
//   final AxisDirection direction;
//   final Color backgroundColor;
//   const ScrollingText2(
//       {super.key,
//       required this.direction,
//       required this.backgroundColor,
//       required this.isRight});
//   @override
//   State<ScrollingText2> createState() => _ScrollingText2State();
// }

// class _ScrollingText2State extends State<ScrollingText2> {
//   final ScrollController _scrollController = ScrollController();
//   late Timer _timer;
//   bool _isHovered = false; // Shared hover state
//   late double step; // Scroll step for smooth movement
//   @override
//   void initState() {
//     super.initState();
//     WidgetsBinding.instance.addPostFrameCallback((_) {
//       step = -2.0;
//       //print(step);
//       _startScrolling();
//     });
//   }

//   void _startScrolling() {
//     const duration =
//         Duration(milliseconds: 16); // 60 FPS animation (16ms/frame)
//     _timer = Timer.periodic(duration, (_) {
//       if (_scrollController.hasClients) {
//         final maxScrollExtent = _scrollController.position.maxScrollExtent;
//         final minScrollExtent = _scrollController.position.minScrollExtent;
//         final offset = _scrollController.offset + step;
//         if (offset >= maxScrollExtent) {
//           // Reset to the start seamlessly
//           _scrollController.jumpTo(minScrollExtent);
//         } else if (offset <= minScrollExtent) {
//           // Reset to the end seamlessly
//           _scrollController.jumpTo(maxScrollExtent);
//         } else {
//           _scrollController.jumpTo(offset);
//         }
//       }
//     });
//   }

//   @override
//   void dispose() {
//     _timer.cancel();
//     _scrollController.dispose();
//     super.dispose();
//   }

//   @override
//   Widget build(BuildContext context) {
//     return Container(
//       height: 100,
//       color: widget.backgroundColor, // Set the background color for each strip
//       child: MouseRegion(
//         onEnter: (_) {
//           setState(() {
//             _isHovered = true;
//           });
//         },
//         onExit: (_) {
//           setState(() {
//             _isHovered = false;
//           });
//         },
//         child: ListView(
//           controller: _scrollController,
//           scrollDirection: Axis.horizontal,
//           physics: const NeverScrollableScrollPhysics(),
//           reverse: widget.direction ==
//               AxisDirection.left, // Reverse direction for left scrolling
//           children: [
//             _buildScrollingContent(),
//             _buildScrollingContent(), // Duplicate for seamless looping
//           ],
//         ),
//       ),
//     );
//   }

//   Widget _buildScrollingContent() {
//     final List<String> texts = [
//       '360 Product Spins * Invisible Mannequins * Stop Motion *',
//       'Flat Lay * Augmented Reality * Still Life *',
//       '3D-AR * Invisible Mannequins * Still Life *',
//     ];
//     return Row(
//       children: texts.map((text) => _buildHoverText(text)).toList(),
//     );
//   }

//   Widget _buildHoverText(String text) {
//     return Padding(
//       padding: const EdgeInsets.symmetric(horizontal: 20.0),
//       child: Text(
//         text,
//         style: TextStyle(
//           fontSize: 24,
//           fontWeight: FontWeight.bold,
//           foreground: _isHovered
//               ? (Paint()
//                 ..style = PaintingStyle.stroke
//                 ..strokeWidth = 0.5
//                 ..color = Colors.black) // Border on hover
//               : null, // Normal text style
//           color: _isHovered ? null : Colors.black, // Ensure no conflict
//         ),
//       ),
//     );
//   }
// }

// class ScrollingText extends StatefulWidget {
//   final bool isRight;
//   final AxisDirection direction;
//   final Color backgroundColor;
//   const ScrollingText(
//       {super.key,
//       required this.direction,
//       required this.backgroundColor,
//       required this.isRight});
//   @override
//   State<ScrollingText> createState() => _ScrollingTextState();
// }

// class _ScrollingTextState extends State<ScrollingText> {
//   final ScrollController _scrollController = ScrollController();
//   late Timer _timer;
//   bool _isHovered = false; // Shared hover state
//   late double step; // Scroll step for smooth movement
//   @override
//   void initState() {
//     super.initState();
//     WidgetsBinding.instance.addPostFrameCallback((_) {
//       print("---------------");
//       print(widget.isRight);
//       step = widget.isRight ? 2.0 : -2.0;
//       //print(step);
//       _startScrolling();
//     });
//   }

//   void _startScrolling() {
//     const duration =
//         Duration(milliseconds: 16); // 60 FPS animation (16ms/frame)
//     _timer = Timer.periodic(duration, (_) {
//       if (_scrollController.hasClients) {
//         final maxScrollExtent = _scrollController.position.maxScrollExtent;
//         final minScrollExtent = _scrollController.position.minScrollExtent;
//         final offset = _scrollController.offset + step;
//         if (offset >= maxScrollExtent) {
//           // Reset to the start seamlessly
//           _scrollController.jumpTo(minScrollExtent);
//         } else if (offset <= minScrollExtent) {
//           // Reset to the end seamlessly
//           _scrollController.jumpTo(maxScrollExtent);
//         } else {
//           _scrollController.jumpTo(offset);
//         }
//       }
//     });
//   }

//   @override
//   void dispose() {
//     _timer.cancel();
//     _scrollController.dispose();
//     super.dispose();
//   }

//   @override
//   Widget build(BuildContext context) {
//     return Container(
//       height: 100,
//       color: widget.backgroundColor, // Set the background color for each strip
//       child: MouseRegion(
//         onEnter: (_) {
//           setState(() {
//             _isHovered = true;
//           });
//         },
//         onExit: (_) {
//           setState(() {
//             _isHovered = false;
//           });
//         },
//         child: ListView(
//           controller: _scrollController,
//           scrollDirection: Axis.horizontal,
//           physics: const NeverScrollableScrollPhysics(),
//           reverse: widget.direction ==
//               AxisDirection.left, // Reverse direction for left scrolling
//           children: [
//             _buildScrollingContent(),
//             _buildScrollingContent(), // Duplicate for seamless looping
//           ],
//         ),
//       ),
//     );
//   }

//   Widget _buildScrollingContent() {
//     final List<String> texts = [
//       '360 Product Spins * Invisible Mannequins * Stop Motion *',
//       'Flat Lay * Augmented Reality * Still Life *',
//       '3D-AR * Invisible Mannequins * Still Life *',
//     ];
//     return Row(
//       children: texts.map((text) => _buildHoverText(text)).toList(),
//     );
//   }

//   Widget _buildHoverText(String text) {
//     return Padding(
//       padding: const EdgeInsets.symmetric(horizontal: 20.0),
//       child: Text(
//         text,
//         style: TextStyle(
//           fontSize: 24,
//           fontWeight: FontWeight.bold,
//           foreground: _isHovered
//               ? (Paint()
//                 ..style = PaintingStyle.stroke
//                 ..strokeWidth = 0.5
//                 ..color = Colors.black) // Border on hover
//               : null, // Normal text style
//           color: _isHovered ? null : Colors.black, // Ensure no conflict
//         ),
//       ),
//     );
//   }
// }
