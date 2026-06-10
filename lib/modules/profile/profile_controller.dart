import 'package:flutter/material.dart';
import 'package:get/get.dart';

class ProfileController extends GetxController {

  RxString userName =
      "Ubed Kazi".obs;

  RxString email =
      "ubed@example.com".obs;

  RxString profileImage =
      "https://i.pravatar.cc/300".obs;

  RxBool darkMode =
      false.obs;

  RxInt competitionsJoined =
      12.obs;

  RxInt fundingApplied =
      5.obs;

  RxInt bookmarks =
      24.obs;

  RxInt certificates =
      8.obs;

  void toggleDarkMode() {

    darkMode.value =
    !darkMode.value;

    Get.changeThemeMode(
      darkMode.value
          ? ThemeMode.dark
          : ThemeMode.light,
    );
  }

  void logout() {

    Get.offAllNamed(
      '/login',
    );
  }
}