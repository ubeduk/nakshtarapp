import 'package:get/get.dart';

class GovernmentUpdate {
  final String id;
  final String title;
  final String department;
  final String date;
  final String description;
  final String pdfUrl;

  GovernmentUpdate({
    required this.id,
    required this.title,
    required this.department,
    required this.date,
    required this.description,
    required this.pdfUrl,
  });
}

class GovernmentController extends GetxController {

  RxList<GovernmentUpdate> updates =
      <GovernmentUpdate>[].obs;

  RxList<GovernmentUpdate> filteredUpdates =
      <GovernmentUpdate>[].obs;

  @override
  void onInit() {
    super.onInit();

    loadUpdates();
  }

  void loadUpdates() {

    updates.assignAll([

      GovernmentUpdate(
        id: "1",
        title: "Drone Rules 2025",
        department: "DGCA",
        date: "01 June 2026",
        description:
        "Updated regulations for drone operations and licensing.",
        pdfUrl: "",
      ),

      GovernmentUpdate(
        id: "2",
        title: "Drone Pilot Certification",
        department:
        "Ministry of Civil Aviation",
        date: "03 June 2026",
        description:
        "New certification framework for drone pilots.",
        pdfUrl: "",
      ),

      GovernmentUpdate(
        id: "3",
        title: "PLI Scheme For Drones",
        department:
        "Government of India",
        date: "06 June 2026",
        description:
        "Production Linked Incentive scheme expanded for drone manufacturing.",
        pdfUrl: "",
      ),

      GovernmentUpdate(
        id: "4",
        title: "DGCA Guidelines Update",
        department: "DGCA",
        date: "10 June 2026",
        description:
        "Updated operating procedures and permissions.",
        pdfUrl: "",
      ),
    ]);

    filteredUpdates.assignAll(
      updates,
    );
  }

  void search(String query) {

    if (query.isEmpty) {

      filteredUpdates.assignAll(
        updates,
      );

      return;
    }

    filteredUpdates.assignAll(
      updates.where(
            (e) =>
        e.title
            .toLowerCase()
            .contains(
          query.toLowerCase(),
        ) ||
            e.department
                .toLowerCase()
                .contains(
              query.toLowerCase(),
            ),
      ),
    );
  }
}