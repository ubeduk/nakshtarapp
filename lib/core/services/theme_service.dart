import 'package:get/get.dart';

class ThemeService extends GetxService {

  RxBool isDarkMode = false.obs;

  void toggleTheme() {

    isDarkMode.value =
    !isDarkMode.value;
  }
}