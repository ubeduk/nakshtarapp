import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../competitions/competitions_screen.dart';
import '../funding/funding_screen.dart';
import '../home/home_screen.dart';
import '../profile/profile_screen.dart';
import '../universities/universities_screen.dart';
import 'bottom_nav_controller.dart';

class BottomNavScreen extends GetView<BottomNavController> {
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
        extendBody: true,
        backgroundColor: Colors.white,

        body: IndexedStack(
          index: controller.currentIndex.value,
          children: screens,
        ),

        floatingActionButtonLocation:
        FloatingActionButtonLocation.centerDocked,

        floatingActionButton: GestureDetector(
          onTap: () {
            controller.changeIndex(2);
          },
          child: AnimatedContainer(
            duration: const Duration(
              milliseconds: 250,
            ),
            width: 74,
            height: 74,
            decoration: BoxDecoration(
              shape: BoxShape.circle,
              gradient: const LinearGradient(
                begin: Alignment.topLeft,
                end: Alignment.bottomRight,
                colors: [
                  Color(0xff4F8DFF),
                  Color(0xff2563EB),
                ],
              ),
              border: Border.all(
                color: Colors.white,
                width: 5,
              ),
              boxShadow: [
                BoxShadow(
                  color: const Color(
                    0xff2563EB,
                  ).withOpacity(.35),
                  blurRadius: 20,
                  offset: const Offset(
                    0,
                    8,
                  ),
                ),
              ],
            ),
            child: Image.asset(

              "assets/images/drone.png",
              fit: BoxFit.cover,
              color: Colors.white,
            ),
          ),
        ),

        bottomNavigationBar: Container(
          height: 82,
          margin: const EdgeInsets.fromLTRB(
            12,
            0,
            12,
            12,
          ),
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius:
            BorderRadius.circular(28),
            boxShadow: [
              BoxShadow(
                color: Colors.black.withOpacity(
                  .08,
                ),
                blurRadius: 20,
                offset: const Offset(
                  0,
                  -2,
                ),
              ),
            ],
          ),
          child: Row(
            children: [

              Expanded(
                child: _navItem(
                  icon: Icons.home_rounded,
                  label: "Home",
                  index: 0,
                ),
              ),

              Expanded(
                child: _navItem(
                  icon: Icons.explore_rounded,
                  label: "Explore",
                  index: 1,
                ),
              ),

              const SizedBox(
                width: 75,
              ),

              Expanded(
                child: _navItem(
                  icon:
                  Icons.calendar_today_rounded,
                  label: "Events",
                  index: 3,
                ),
              ),

              Expanded(
                child: _navItem(
                  icon:
                  Icons.person_outline_rounded,
                  label: "Profile",
                  index: 4,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget _navItem({
    required IconData icon,
    required String label,
    required int index,
  }) {

    final selected =
        controller.currentIndex.value ==
            index;

    return InkWell(
      borderRadius:
      BorderRadius.circular(20),

      onTap: () {
        controller.changeIndex(index);
      },

      child: Column(
        mainAxisAlignment:
        MainAxisAlignment.center,
        children: [

          AnimatedContainer(
            duration: const Duration(
              milliseconds: 250,
            ),

            child: Icon(
              icon,
              size: 22,
              color: selected
                  ? const Color(
                0xff2563EB,
              )
                  : const Color(
                0xff94A3B8,
              ),
            ),
          ),

          const SizedBox(height: 4),

          Text(
            label,
            style: TextStyle(
              fontSize: 11,
              fontWeight:
              FontWeight.w600,
              color: selected
                  ? const Color(
                0xff2563EB,
              )
                  : const Color(
                0xff94A3B8,
              ),
            ),
          ),
        ],
      ),
    );
  }
}