import 'package:get/get.dart';

import '../../data/dummy_data/dummy_data.dart';
import '../../data/models/models.dart';

class HomeController extends GetxController {

  RxInt currentIndex = 0.obs;

  RxList<NewsModel> news =
      <NewsModel>[].obs;

  RxList<UniversityModel> universities =
      <UniversityModel>[].obs;

  RxString userName =
      "Ubed".obs;

  @override
  void onInit() {
    super.onInit();

    loadData();
  }

  void loadData() {

    news.assignAll(
      NewsData.news,
    );

    universities.assignAll(
      UniversitiesData.universities,
    );
  }

  void changeTab(int index) {
    currentIndex.value = index;
  }
}