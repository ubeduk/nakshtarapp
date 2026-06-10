import 'package:get/get.dart';

class FundingDataModel {
  final String id;
  final String title;
  final String provider;
  final String amount;
  final String deadline;
  final String eligibility;
  final String description;
  final double progress;

  FundingDataModel({
    required this.id,
    required this.title,
    required this.provider,
    required this.amount,
    required this.deadline,
    required this.eligibility,
    required this.description,
    required this.progress,
  });
}

class FundingController extends GetxController {

  RxList<FundingDataModel> fundingList =
      <FundingDataModel>[].obs;

  @override
  void onInit() {
    super.onInit();

    loadFunding();
  }

  void loadFunding() {

    fundingList.assignAll([

      FundingDataModel(
        id: "1",
        title: "Startup India Seed Fund",
        provider: "Startup India",
        amount: "₹25 Lakhs",
        deadline: "31 Dec 2026",
        eligibility: "Early Stage Startups",
        description:
        "Funding support for innovative drone startups.",
        progress: 0.75,
      ),

      FundingDataModel(
        id: "2",
        title: "Gujarat Startup Mission",
        provider: "Government of Gujarat",
        amount: "₹10 Lakhs",
        deadline: "15 Nov 2026",
        eligibility: "Registered Startups",
        description:
        "Financial assistance for technology startups.",
        progress: 0.55,
      ),

      FundingDataModel(
        id: "3",
        title: "MSME Innovation Fund",
        provider: "MSME",
        amount: "₹50 Lakhs",
        deadline: "10 Jan 2027",
        eligibility: "MSME Registered Companies",
        description:
        "Support for drone innovation and manufacturing.",
        progress: 0.85,
      ),
    ]);
  }
}