import '../dummy_data/dummy_data.dart';
import '../models/models.dart';

class GovernmentRepository {

  Future<List<GovernmentUpdateModel>>
  getUpdates() async {

    await Future.delayed(
      const Duration(milliseconds: 500),
    );

    return GovernmentUpdatesData.updates;
  }

  Future<GovernmentUpdateModel?>
  getUpdateById(
      String id,
      ) async {

    try {
      return GovernmentUpdatesData.updates
          .firstWhere(
            (e) => e.id == id,
      );
    } catch (_) {
      return null;
    }
  }
}