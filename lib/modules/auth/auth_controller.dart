import 'package:get/get.dart';
import '../../routes/app_routes.dart';

class AuthController extends GetxController {

  RxBool isLoading = false.obs;

  Future<void> signInWithGoogle() async {

    try {

      isLoading.value = true;

      await Future.delayed(
        const Duration(seconds: 2),
      );

      Get.offAllNamed(
        AppRoutes.bottomNav,
      );

    } catch (e) {

      Get.snackbar(
        'Error',
        e.toString(),
      );

    } finally {

      isLoading.value = false;
    }
  }

  Future<void> loginWithOtp(
      String phone,
      ) async {

    try {

      isLoading.value = true;

      await Future.delayed(
        const Duration(seconds: 2),
      );

      Get.offAllNamed(
        AppRoutes.bottomNav,
      );

    } catch (e) {

      Get.snackbar(
        'Error',
        e.toString(),
      );

    } finally {

      isLoading.value = false;
    }
  }

  Future<void> signInWithApple() async {

    try {

      isLoading.value = true;

      await Future.delayed(
        const Duration(seconds: 2),
      );

      Get.offAllNamed(
        AppRoutes.bottomNav,
      );

    } catch (e) {

      Get.snackbar(
        'Error',
        e.toString(),
      );

    } finally {

      isLoading.value = false;
    }
  }
}