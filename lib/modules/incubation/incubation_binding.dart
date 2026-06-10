import 'package:get/get.dart';

import 'incubation_controller.dart';

class IncubationBinding extends Bindings {

  @override
  void dependencies() {

    Get.lazyPut<IncubationController>(
          () => IncubationController(),
    );
  }
}