import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'settings_controller.dart';

class SettingsScreen
    extends GetView<SettingsController> {

  const SettingsScreen({super.key});

  @override
  Widget build(BuildContext context) {

    return Scaffold(

      appBar: AppBar(
        title:
        const Text("Settings"),
      ),

      body: Obx(
            () => Column(
          children: [

            SwitchListTile(
              title:
              const Text("Dark Mode"),
              value:
              controller.darkMode.value,
              onChanged: (v) {
                controller.darkMode.value = v;
              },
            ),

            SwitchListTile(
              title:
              const Text("Notifications"),
              value:
              controller.notification.value,
              onChanged: (v) {
                controller.notification.value = v;
              },
            ),
          ],
        ),
      ),
    );
  }
}