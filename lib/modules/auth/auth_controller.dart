import 'package:get/get.dart';

import '../../routes/app_routes.dart';

class AuthController extends GetxController {

  RxBool isLoading = false.obs;

  Future<void> signInWithGoogle() async {

    isLoading.value = true;

    await Future.delayed(
      const Duration(seconds: 2),
    );

    isLoading.value = false;

    Get.offAllNamed(
      AppRoutes.home,
    );
  }

  Future<void> loginWithOtp(
      String phone,
      ) async {

    isLoading.value = true;

    await Future.delayed(
      const Duration(seconds: 2),
    );

    isLoading.value = false;

    Get.offAllNamed(
      AppRoutes.bottomNav,
    );
  }

  Future<void> signInWithApple() async {

    isLoading.value = true;

    await Future.delayed(
      const Duration(seconds: 2),
    );

    isLoading.value = false;

    Get.offAllNamed(
      AppRoutes.home,
    );
  }
}