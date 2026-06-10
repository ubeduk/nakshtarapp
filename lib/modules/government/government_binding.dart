import 'package:get/get.dart';

import 'government_controller.dart';

class GovernmentBinding
    extends Bindings {

  @override
  void dependencies() {

    Get.lazyPut<GovernmentController>(
          () => GovernmentController(),
    );
  }
}