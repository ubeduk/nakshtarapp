import 'package:get/get.dart';

class BookmarkController
    extends GetxController {

  RxList<String> bookmarks =
      <String>[].obs;

  @override
  void onInit() {
    super.onInit();

    bookmarks.assignAll([

      "IIT Bombay",

      "Startup India Fund",

      "National Drone Championship",
    ]);
  }
}