import '../models/models.dart';

class GovernmentUpdatesData {
  static List<GovernmentUpdateModel> updates = [
    GovernmentUpdateModel(
      id: "1",
      title: "Drone Rules 2025",
      department: "DGCA",
      date: "01 June 2026",
      description:
      "Updated drone regulations for commercial operations.",
    ),
    GovernmentUpdateModel(
      id: "2",
      title: "Drone Pilot Certification Update",
      department: "Ministry of Civil Aviation",
      date: "03 June 2026",
      description:
      "New certification process announced for drone pilots.",
    ),
    GovernmentUpdateModel(
      id: "3",
      title: "PLI Scheme for Drone Manufacturing",
      department: "Government of India",
      date: "05 June 2026",
      description:
      "Production-linked incentives expanded for drone sector.",
    ),
  ];
}