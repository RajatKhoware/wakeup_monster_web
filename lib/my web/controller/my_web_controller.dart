import 'package:flutter/material.dart';
import 'package:get/get.dart';

class MyWebController extends GetxController {
  static MyWebController get instance => Get.find();
  final ScrollController scrollController = ScrollController();
  final RxDouble scrollPosition = 0.0.obs;
  final RxDouble opacity = 0.0.obs;

  @override
  void onInit() {
    super.onInit();
    scrollController.addListener(_scrollListener);
  }

  void _scrollListener() {
    scrollPosition.value = scrollController.position.pixels;
  }

  void scrollToBottom() {
    if (!scrollController.hasClients) return;

    // Calculate position to show contact section (approximately 80% of total scroll)
    final targetPosition = scrollController.position.maxScrollExtent * 0.90;

    scrollController.animateTo(
      targetPosition,
      duration: const Duration(milliseconds: 800),
      curve: Curves.easeInOut,
    );
  }

  @override
  void onClose() {
    scrollController.dispose();
    super.onClose();
  }
}
