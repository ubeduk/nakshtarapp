
import 'package:get/get.dart';

class IncubationCenter {
  final String id;
  final String name;
  final String image;
  final String location;
  final String startups;
  final String description;

  IncubationCenter({
    required this.id,
    required this.name,
    required this.image,
    required this.location,
    required this.startups,
    required this.description,
  });
}

class IncubationController extends GetxController {

  RxList<IncubationCenter> centers =
      <IncubationCenter>[].obs;

  @override
  void onInit() {
    super.onInit();

    loadCenters();
  }

  void loadCenters() {

    centers.assignAll([

      IncubationCenter(
        id: "1",
        name: "AIC Ahmedabad",
        image:
        "https://images.unsplash.com/photo-1497366754035-f200968a6e72",
        location: "Ahmedabad",
        startups: "150+ Startups",
        description:
        "Supporting drone startups with funding and mentorship.",
      ),

      IncubationCenter(
        id: "2",
        name: "iCreate",
        image:
        "https://images.unsplash.com/photo-1520607162513-77705c0f0d4a",
        location: "Ahmedabad",
        startups: "200+ Startups",
        description:
        "Technology innovation and startup acceleration.",
      ),

      IncubationCenter(
        id: "3",
        name: "T-Hub",
        image:
        "https://images.unsplash.com/photo-1497366412874-3415097a27e7",
        location: "Hyderabad",
        startups: "500+ Startups",
        description:
        "India's largest startup ecosystem and innovation hub.",
      ),
    ]);
  }
}