import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../core/theme/app_colors.dart';

import 'profile_controller.dart';

class ProfileScreen
    extends GetView<ProfileController> {

  const ProfileScreen({
    super.key,
  });

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      backgroundColor:
      AppColors.background,

      body: CustomScrollView(
        slivers: [

          SliverAppBar(
            expandedHeight: 320,
            pinned: true,
            backgroundColor:
            AppColors.primary,

            flexibleSpace:
            FlexibleSpaceBar(
              background:
              _buildHeader(),
            ),
          ),

          SliverToBoxAdapter(
            child: Padding(
              padding:
              const EdgeInsets.all(
                  20),
              child: Column(
                children: [

                  _buildStatistics(),

                  const SizedBox(
                      height: 25),

                  _buildCertificates(),

                  const SizedBox(
                      height: 25),

                  _buildMenuCard(),

                  const SizedBox(
                      height: 25),

                  _buildDarkMode(),

                  const SizedBox(
                      height: 25),

                  _buildLogout(),

                  const SizedBox(
                      height: 40),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildHeader() {

    return Container(
      decoration:
      const BoxDecoration(
        gradient:
        LinearGradient(
          begin:
          Alignment.topLeft,
          end:
          Alignment.bottomRight,
          colors: [
            Color(0xff0D1B2A),
            Color(0xff1B263B),
          ],
        ),
      ),
      child: SafeArea(
        child: Column(
          mainAxisAlignment:
          MainAxisAlignment.center,
          children: [

            CircleAvatar(
              radius: 55,
              backgroundColor:
              Colors.white,
              child: Obx(
                    () => CircleAvatar(
                  radius: 50,
                  backgroundImage:
                  NetworkImage(
                    controller
                        .profileImage
                        .value,
                  ),
                ),
              ),
            ),

            const SizedBox(
                height: 15),

            Obx(
                  () => Text(
                controller
                    .userName
                    .value,
                style:
                const TextStyle(
                  color:
                  Colors.white,
                  fontSize: 26,
                  fontWeight:
                  FontWeight.bold,
                ),
              ),
            ),

            const SizedBox(
                height: 5),

            Obx(
                  () => Text(
                controller.email
                    .value,
                style:
                const TextStyle(
                  color:
                  Colors.white70,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildStatistics() {

    return Row(
      children: [

        Expanded(
          child: _StatCard(
            title: controller
                .competitionsJoined
                .value
                .toString(),
            subtitle:
            "Competitions",
            icon:
            Icons.emoji_events,
          ),
        ),

        const SizedBox(
            width: 12),

        Expanded(
          child: _StatCard(
            title: controller
                .fundingApplied
                .value
                .toString(),
            subtitle:
            "Funding",
            icon:
            Icons.currency_rupee,
          ),
        ),
      ],
    );
  }

  Widget _buildCertificates() {

    return ClipRRect(
      borderRadius:
      BorderRadius.circular(
          24),
      child: BackdropFilter(
        filter: ImageFilter.blur(
          sigmaX: 20,
          sigmaY: 20,
        ),
        child: Container(
          padding:
          const EdgeInsets.all(
              20),
          decoration:
          BoxDecoration(
            color: Colors.white,
            borderRadius:
            BorderRadius.circular(
                24),
          ),
          child: Column(
            crossAxisAlignment:
            CrossAxisAlignment
                .start,
            children: [

              const Text(
                "Certificates",
                style:
                TextStyle(
                  fontSize: 20,
                  fontWeight:
                  FontWeight.bold,
                ),
              ),

              const SizedBox(
                  height: 15),

              ListTile(
                leading:
                const Icon(
                  Icons.workspace_premium,
                ),
                title:
                const Text(
                  "Drone Pilot Certification",
                ),
                subtitle:
                const Text(
                  "Completed",
                ),
              ),

              ListTile(
                leading:
                const Icon(
                  Icons.workspace_premium,
                ),
                title:
                const Text(
                  "AI Drone Research",
                ),
                subtitle:
                const Text(
                  "Completed",
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildMenuCard() {

    return Container(
      decoration:
      BoxDecoration(
        color: Colors.white,
        borderRadius:
        BorderRadius.circular(
            24),
      ),
      child: Column(
        children: [

          _menuItem(
            Icons.bookmark,
            "Bookmarks",
          ),

          _menuItem(
            Icons.assignment,
            "My Applications",
          ),

          _menuItem(
            Icons.card_membership,
            "Certificates",
          ),

          _menuItem(
            Icons.settings,
            "Settings",
          ),
        ],
      ),
    );
  }

  Widget _buildDarkMode() {

    return Obx(
          () => Container(
        padding:
        const EdgeInsets.all(
            18),
        decoration:
        BoxDecoration(
          color: Colors.white,
          borderRadius:
          BorderRadius.circular(
              24),
        ),
        child: Row(
          children: [

            const Icon(
              Icons.dark_mode,
            ),

            const SizedBox(
                width: 12),

            const Expanded(
              child: Text(
                "Dark Mode",
              ),
            ),

            Switch(
              value: controller
                  .darkMode
                  .value,
              onChanged:
                  (_) {
                controller
                    .toggleDarkMode();
              },
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildLogout() {

    return SizedBox(
      width: double.infinity,
      height: 55,
      child: ElevatedButton.icon(
        style:
        ElevatedButton.styleFrom(
          backgroundColor:
          Colors.red,
        ),
        onPressed:
        controller.logout,
        icon: const Icon(
          Icons.logout,
        ),
        label:
        const Text(
          "Logout",
        ),
      ),
    );
  }

  Widget _menuItem(
      IconData icon,
      String title,
      ) {

    return ListTile(
      leading: Icon(icon),
      title: Text(title),
      trailing: const Icon(
        Icons.arrow_forward_ios,
        size: 16,
      ),
      onTap: () {},
    );
  }
}

class _StatCard
    extends StatelessWidget {

  final String title;
  final String subtitle;
  final IconData icon;

  const _StatCard({
    required this.title,
    required this.subtitle,
    required this.icon,
  });

  @override
  Widget build(BuildContext context) {

    return Container(
      padding:
      const EdgeInsets.all(
          18),
      decoration:
      BoxDecoration(
        gradient:
        const LinearGradient(
          colors: [
            Color(0xff0D1B2A),
            Color(0xff1B263B),
          ],
        ),
        borderRadius:
        BorderRadius.circular(
            20),
      ),
      child: Column(
        children: [

          Icon(
            icon,
            color: Colors.white,
          ),

          const SizedBox(
              height: 10),

          Text(
            title,
            style:
            const TextStyle(
              color: Colors.white,
              fontSize: 24,
              fontWeight:
              FontWeight.bold,
            ),
          ),

          Text(
            subtitle,
            style:
            const TextStyle(
              color:
              Colors.white70,
            ),
          ),
        ],
      ),
    );
  }
}