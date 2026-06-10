import 'package:get/get.dart';

import 'competitions_controller.dart';

class CompetitionsBinding
    extends Bindings {

  @override
  void dependencies() {

    Get.lazyPut<CompetitionsController>(
          () => CompetitionsController(),
    );
  }
}