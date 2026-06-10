import 'package:get/get.dart';

class NewsArticle {
  final String id;
  final String title;
  final String category;
  final String image;
  final String author;
  final String date;
  final String description;
  final bool isBreaking;

  NewsArticle({
    required this.id,
    required this.title,
    required this.category,
    required this.image,
    required this.author,
    required this.date,
    required this.description,
    required this.isBreaking,
  });
}

class NewsController extends GetxController {

  RxList<NewsArticle> news =
      <NewsArticle>[].obs;

  RxList<NewsArticle> filteredNews =
      <NewsArticle>[].obs;

  RxString selectedCategory =
      "All".obs;

  final categories = [
    "All",
    "Government",
    "Funding",
    "Competition",
    "Research",
    "Startup",
  ];

  @override
  void onInit() {
    super.onInit();

    loadNews();
  }

  void loadNews() {

    news.assignAll([

      NewsArticle(
        id: "1",
        title:
        "India Launches New Drone Policy",
        category: "Government",
        image:
        "https://images.unsplash.com/photo-1516321318423-f06f85e504b3",
        author: "DroneNakshatra",
        date: "10 June 2026",
        description:
        "Government introduces major reforms to accelerate drone innovation and manufacturing.",
        isBreaking: true,
      ),

      NewsArticle(
        id: "2",
        title:
        "Drone Startup Raises ₹5 Crore",
        category: "Funding",
        image:
        "https://images.unsplash.com/photo-1552664730-d307ca884978",
        author: "Startup Desk",
        date: "09 June 2026",
        description:
        "Emerging drone startup secures significant funding round.",
        isBreaking: false,
      ),

      NewsArticle(
        id: "3",
        title:
        "National Drone Championship Announced",
        category: "Competition",
        image:
        "https://images.unsplash.com/photo-1508614589041-895b88991e3e",
        author: "Competition Team",
        date: "08 June 2026",
        description:
        "Registrations now open for India's biggest drone competition.",
        isBreaking: true,
      ),
    ]);

    filteredNews.assignAll(news);
  }

  void searchNews(String value) {

    if (value.isEmpty) {
      filteredNews.assignAll(news);
      return;
    }

    filteredNews.assignAll(
      news.where(
            (element) =>
            element.title
                .toLowerCase()
                .contains(
              value.toLowerCase(),
            ),
      ),
    );
  }

  void filterCategory(
      String category,
      ) {

    selectedCategory.value =
        category;

    if (category == "All") {

      filteredNews.assignAll(news);

      return;
    }

    filteredNews.assignAll(
      news.where(
            (e) =>
        e.category ==
            category,
      ),
    );
  }
}