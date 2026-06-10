import '../dummy_data/dummy_data.dart';
import '../models/models.dart';

class UniversityRepository {

  Future<List<UniversityModel>> getUniversities() async {

    await Future.delayed(
      const Duration(milliseconds: 500),
    );

    return UniversitiesData.universities;
  }

  Future<UniversityModel?> getUniversityById(
      String id,
      ) async {

    try {
      return UniversitiesData.universities.firstWhere(
            (e) => e.id == id,
      );
    } catch (_) {
      return null;
    }
  }
}