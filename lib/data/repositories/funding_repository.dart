import '../dummy_data/dummy_data.dart';
import '../models/models.dart';

class FundingRepository {

  Future<List<FundingModel>> getFundingList() async {

    await Future.delayed(
      const Duration(milliseconds: 500),
    );

    return FundingData.fundingList;
  }

  Future<FundingModel?> getFundingById(
      String id,
      ) async {

    try {
      return FundingData.fundingList.firstWhere(
            (e) => e.id == id,
      );
    } catch (_) {
      return null;
    }
  }
}