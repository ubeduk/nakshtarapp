import '../dummy_data/dummy_data.dart';
import '../models/models.dart';

class CompetitionRepository {

  Future<List<CompetitionModel>> getCompetitions() async {

    await Future.delayed(
      const Duration(milliseconds: 500),
    );

    return CompetitionsData.competitions;
  }

  Future<CompetitionModel?> getCompetitionById(
      String id,
      ) async {

    try {
      return CompetitionsData.competitions.firstWhere(
            (e) => e.id == id,
      );
    } catch (_) {
      return null;
    }
  }
}