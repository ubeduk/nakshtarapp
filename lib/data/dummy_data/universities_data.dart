import '../models/models.dart';

class UniversitiesData {
  static List<UniversityModel> universities = [
    UniversityModel(
      id: "1",
      name: "IIT Bombay",
      location: "Mumbai, Maharashtra",
      image:
      "https://images.unsplash.com/photo-1562774053-701939374585",
      ranking: "#1",
      course: "Drone Engineering",
      description:
      "Leading institute for drone research, AI aviation, and autonomous systems.",
      website: "https://www.iitb.ac.in",
    ),
    UniversityModel(
      id: "2",
      name: "IIT Madras",
      location: "Chennai, Tamil Nadu",
      image:
      "https://images.unsplash.com/photo-1523050854058-8df90110c9f1",
      ranking: "#2",
      course: "Drone Technology",
      description:
      "Advanced drone design and UAV innovation programs.",
      website: "https://www.iitm.ac.in",
    ),
    UniversityModel(
      id: "3",
      name: "NIT Surat",
      location: "Surat, Gujarat",
      image:
      "https://images.unsplash.com/photo-1541339907198-e08756dedf3f",
      ranking: "#3",
      course: "Drone Innovation",
      description:
      "Research-driven drone ecosystem with startup support.",
      website: "https://www.svnit.ac.in",
    ),
  ];
}