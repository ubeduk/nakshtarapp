import '../dummy_data/dummy_data.dart';
import '../models/models.dart';

class NewsRepository {

  Future<List<NewsModel>> getNews() async {

    await Future.delayed(
      const Duration(milliseconds: 500),
    );

    return NewsData.news;
  }

  Future<NewsModel?> getNewsById(
      String id,
      ) async {

    try {
      return NewsData.news.firstWhere(
            (e) => e.id == id,
      );
    } catch (_) {
      return null;
    }
  }
}