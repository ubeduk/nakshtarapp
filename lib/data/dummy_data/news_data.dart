import '../models/models.dart';

class NewsData {
  static List<NewsModel> news = [
    NewsModel(
      id: "1",
      title:
      "India launches new Drone Policy",
      image:
      "https://images.unsplash.com/photo-1516321318423-f06f85e504b3",
      author: "DroneNakshatra",
      date: "10 June 2026",
      category: "Government",
      content:
      "Government of India launches a new drone policy to encourage innovation and manufacturing.",
    ),
    NewsModel(
      id: "2",
      title:
      "Drone Startup Receives ₹5 Crore Funding",
      image:
      "https://images.unsplash.com/photo-1552664730-d307ca884978",
      author: "Startup Desk",
      date: "09 June 2026",
      category: "Funding",
      content:
      "Emerging drone startup secures major investment to scale operations.",
    ),
    NewsModel(
      id: "3",
      title:
      "National Drone Competition Announced",
      image:
      "https://images.unsplash.com/photo-1508614589041-895b88991e3e",
      author: "Competition Team",
      date: "08 June 2026",
      category: "Competition",
      content:
      "Registrations are now open for the National Drone Championship.",
    ),
  ];
}