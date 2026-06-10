import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../home/home_screen.dart';
import '../universities/universities_screen.dart';
import '../competitions/competitions_screen.dart';
import '../funding/funding_screen.dart';
import '../profile/profile_screen.dart';

import 'bottom_nav_controller.dart';

class BottomNavScreen
    extends GetView<BottomNavController> {

  const BottomNavScreen({super.key});

  @override
  Widget build(BuildContext context) {

    final screens = [

      const HomeScreen(),

      const UniversitiesScreen(),

      const CompetitionsScreen(),

      const FundingScreen(),

      const ProfileScreen(),
    ];

    return Obx(
          () => Scaffold(

        body: IndexedStack(
          index:
          controller.currentIndex.value,
          children: screens,
        ),

        bottomNavigationBar:
        NavigationBar(

          selectedIndex:
          controller.currentIndex.value,

          onDestinationSelected:
          controller.changeIndex,

          destinations: const [

            NavigationDestination(
              icon: Icon(Icons.home),
              label: "Home",
            ),

            NavigationDestination(
              icon: Icon(Icons.school),
              label: "Universities",
            ),

            NavigationDestination(
              icon:
              Icon(Icons.emoji_events),
              label: "Competition",
            ),

            NavigationDestination(
              icon:
              Icon(Icons.currency_rupee),
              label: "Funding",
            ),

            NavigationDestination(
              icon: Icon(Icons.person),
              label: "Profile",
            ),
          ],
        ),
      ),
    );
  }
}