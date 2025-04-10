import 'dart:async';

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:wakeup_web/utils/res/comman/app_colors.dart';
import 'package:wakeup_web/utils/res/my_text.dart';

class ScrollingBrandsWidget extends StatelessWidget {
  const ScrollingBrandsWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return const ScrollingStrip(
      scrollLeft: true,
      backgroundColor: AppColors.transparent,
    );
  }
}

class ScrollingBrandsWidget2 extends StatelessWidget {
  const ScrollingBrandsWidget2({super.key});

  @override
  Widget build(BuildContext context) {
    return const ScrollingStrip(
      scrollLeft: false,
      backgroundColor: AppColors.transparent,
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
    _timer = Timer.periodic(const Duration(milliseconds: 30), (_) {
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
      'assets/logo/1.png',
      'assets/logo/2.png',
      'assets/logo/3.png',
      'assets/logo/4.png',
      'assets/logo/5.png',
      'assets/logo/6.png',
      'assets/logo/7.png',
      'assets/logo/8.png',
      'assets/logo/1.png',
      'assets/logo/2.png',
      'assets/logo/3.png',
      'assets/logo/4.png',
      'assets/logo/5.png',
      'assets/logo/6.png',
      'assets/logo/7.png',
      'assets/logo/8.png',
      'assets/logo/1.png',
      'assets/logo/2.png',
      'assets/logo/3.png',
      'assets/logo/4.png',
      'assets/logo/5.png',
      'assets/logo/6.png',
      'assets/logo/7.png',
      'assets/logo/8.png',
      'assets/logo/1.png',
      'assets/logo/2.png',
      'assets/logo/3.png',
      'assets/logo/4.png',
      'assets/logo/5.png',
      'assets/logo/6.png',
      'assets/logo/7.png',
      'assets/logo/8.png',
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
      margin: const EdgeInsets.symmetric(horizontal: 20),
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
