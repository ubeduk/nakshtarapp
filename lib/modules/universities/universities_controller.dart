import 'package:get/get.dart';

import '../../data/models/models.dart';
import '../../data/repositories/repositories.dart';

class UniversitiesController extends GetxController {

  final UniversityRepository _repository =
  UniversityRepository();

  RxList<UniversityModel> universities =
      <UniversityModel>[].obs;

  RxList<UniversityModel> filteredUniversities =
      <UniversityModel>[].obs;

  RxBool isLoading = true.obs;
  RxBool showFilters = false.obs;

  void toggleFilters() {
    showFilters.value = !showFilters.value;
  }
  RxString selectedFilter = "All".obs;

  final filters = [
    "All",
    "IIT",
    "NIT",
    "Government",
    "Private",
  ];

  @override
  void onInit() {
    super.onInit();
    loadUniversities();
  }

  Future<void> loadUniversities() async {

    isLoading.value = true;

    final result =
    await _repository.getUniversities();

    universities.assignAll(result);

    filteredUniversities.assignAll(result);

    isLoading.value = false;
  }

  void searchUniversity(String value) {

    if (value.isEmpty) {

      filteredUniversities.assignAll(
        universities,
      );

      return;
    }

    filteredUniversities.assignAll(
      universities.where(
            (element) =>
            element.name
                .toLowerCase()
                .contains(
              value.toLowerCase(),
            ),
      ),
    );
  }

  void filterUniversity(
      String category,
      ) {

    selectedFilter.value = category;

    if (category == "All") {

      filteredUniversities.assignAll(
        universities,
      );

      return;
    }

    filteredUniversities.assignAll(
      universities.where(
            (e) => e.name
            .toLowerCase()
            .contains(
          category.toLowerCase(),
        ),
      ),
    );
  }
}