import 'package:get/get.dart';

class CompetitionData {
  final String id;
  final String title;
  final String image;
  final String organizer;
  final String prize;
  final DateTime eventDate;
  final String description;

  CompetitionData({
    required this.id,
    required this.title,
    required this.image,
    required this.organizer,
    required this.prize,
    required this.eventDate,
    required this.description,
  });
}

class CompetitionsController extends GetxController {

  RxList<CompetitionData> competitions =
      <CompetitionData>[].obs;

  @override
  void onInit() {
    super.onInit();

    loadCompetitions();
  }

  void loadCompetitions() {

    competitions.assignAll([

      CompetitionData(
        id: "1",
        title: "National Drone Championship",
        image:
        "https://images.unsplash.com/photo-1473968512647-3e447244af8f",
        organizer:
        "Drone Federation India",
        prize: "₹10,00,000",
        eventDate:
        DateTime(2026, 12, 25),
        description:
        "National drone innovation competition for students and startups.",
      ),

      CompetitionData(
        id: "2",
        title:
        "Smart India Drone Challenge",
        image:
        "https://images.unsplash.com/photo-1508614589041-895b88991e3e",
        organizer:
        "Government of India",
        prize: "₹5,00,000",
        eventDate:
        DateTime(2027, 1, 15),
        description:
        "Challenge focused on solving real-world problems using drones.",
      ),
    ]);
  }
}