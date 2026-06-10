import '../models/models.dart';

class CompetitionsData {
  static List<CompetitionModel> competitions = [
    CompetitionModel(
      id: "1",
      title: "National Drone Championship",
      organizer: "Drone Federation India",
      prize: "₹10,00,000",
      date: "25 December 2026",
      image:
      "https://images.unsplash.com/photo-1473968512647-3e447244af8f",
      description:
      "National level drone competition for students and startups.",
    ),
    CompetitionModel(
      id: "2",
      title: "Smart India Drone Challenge",
      organizer: "Government of India",
      prize: "₹5,00,000",
      date: "15 January 2027",
      image:
      "https://images.unsplash.com/photo-1508614589041-895b88991e3e",
      description:
      "Innovation challenge focused on drone-based solutions.",
    ),
  ];
}