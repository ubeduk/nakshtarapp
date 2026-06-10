import 'package:get/get.dart';

import 'universities_controller.dart';

class UniversitiesBinding
    extends Bindings {

  @override
  void dependencies() {

    Get.lazyPut<UniversitiesController>(
          () => UniversitiesController(),
    );
  }
}