import 'package:get/get.dart';
import '../../routes/app_routes.dart';

class SplashController extends GetxController {

  @override
  void onInit() {
    super.onInit();

    print("Splash Initialized");

    _navigateNext();
  }

  void _navigateNext() {
    Future.delayed(
      const Duration(seconds: 3),
          () {
        print("Going to Onboarding");

        Get.offAllNamed(AppRoutes.onboarding);
      },
    );
  }
}