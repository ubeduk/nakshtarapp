import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'notifications_controller.dart';

class NotificationsScreen
    extends GetView<NotificationsController> {

  const NotificationsScreen({super.key});

  @override
  Widget build(BuildContext context) {

    return Scaffold(

      appBar: AppBar(
        title:
        const Text("Notifications"),
      ),

      body: Obx(
            () => ListView.builder(
          itemCount:
          controller.notifications.length,

          itemBuilder: (_, index) {

            final item =
            controller.notifications[index];

            return ListTile(

              leading:
              const CircleAvatar(
                child:
                Icon(Icons.notifications),
              ),

              title:
              Text(item.title),

              subtitle:
              Text(item.subtitle),

              trailing:
              Text(item.time),
            );
          },
        ),
      ),
    );
  }
}