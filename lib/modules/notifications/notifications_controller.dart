import 'package:get/get.dart';

class NotificationModel {

  final String title;

  final String subtitle;

  final String time;

  NotificationModel({
    required this.title,
    required this.subtitle,
    required this.time,
  });
}

class NotificationsController
    extends GetxController {

  RxList<NotificationModel> notifications =
      <NotificationModel>[].obs;

  @override
  void onInit() {
    super.onInit();

    notifications.assignAll([

      NotificationModel(
        title:
        "Funding Alert",
        subtitle:
        "Startup India ₹25L Funding Open",
        time:
        "2 min ago",
      ),

      NotificationModel(
        title:
        "Competition Update",
        subtitle:
        "National Drone Championship Open",
        time:
        "1 hour ago",
      ),
    ]);
  }
}