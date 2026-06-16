import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:nakshatr/modules/universities/universities_binding.dart';
import 'package:nakshatr/modules/universities/universities_controller.dart';

import 'core/theme/app_theme.dart';
import 'routes/app_pages.dart';
import 'routes/app_routes.dart';

void main() {
  runApp(const DroneNakshatraApp());
  Get.put(UniversitiesController());
}

class DroneNakshatraApp extends StatelessWidget {
  const DroneNakshatraApp({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'DroneNakshatra',
      theme: AppTheme.lightTheme,
      initialRoute: AppRoutes.splash,
      getPages: AppPages.routes,
    );
  }
}