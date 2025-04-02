import 'package:get/get.dart';

class OurServicesController extends GetxController {
  static OurServicesController instance = Get.find();
  var isHovered = false.obs;

  

  void onHover(bool isHovering) {
    isHovered.value = isHovering;
  }
}
