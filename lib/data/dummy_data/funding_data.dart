import '../models/models.dart';

class FundingData {
  static List<FundingModel> fundingList = [
    FundingModel(
      id: "1",
      title: "Startup India Seed Fund",
      provider: "Startup India",
      amount: "₹25 Lakhs",
      deadline: "31 Dec 2026",
      eligibility: "Early Stage Startups",
      description:
      "Funding support for innovative drone startups.",
    ),
    FundingModel(
      id: "2",
      title: "Gujarat Startup Mission",
      provider: "Government of Gujarat",
      amount: "₹10 Lakhs",
      deadline: "15 Nov 2026",
      eligibility: "Registered Startups",
      description:
      "Financial assistance for technology-based ventures.",
    ),
    FundingModel(
      id: "3",
      title: "MSME Innovation Fund",
      provider: "MSME",
      amount: "₹50 Lakhs",
      deadline: "10 Jan 2027",
      eligibility: "MSME Registered Companies",
      description:
      "Funding for drone manufacturing and innovation.",
    ),
  ];
}