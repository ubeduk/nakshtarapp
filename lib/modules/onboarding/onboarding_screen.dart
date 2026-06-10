import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:lottie/lottie.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

import '../../core/theme/app_colors.dart';

import 'onboarding_controller.dart';

class OnboardingScreen
    extends GetView<OnboardingController> {

  const OnboardingScreen({super.key});

  @override
  Widget build(BuildContext context) {

    final pages = [

      _OnboardPage(
        title: "Learn Drone Technology",
        description:
        "Master drone engineering and innovation.",
        lottie:
        "assets/lottie/image1.json",
      ),

      _OnboardPage(
        title: "Connect Universities",
        description:
        "Explore drone programs from top institutes.",
        lottie:
        "assets/lottie/image2.json",
      ),

      _OnboardPage(
        title: "Build Drone Startup",
        description:
        "Discover funding and incubation opportunities.",
        lottie:
        "assets/lottie/image3.json",
      ),
    ];

    return Scaffold(
      backgroundColor:
      AppColors.background,

      body: SafeArea(
        child: Column(
          children: [

            Expanded(
              child: PageView.builder(
                controller:
                controller.pageController,

                onPageChanged:
                controller.changePage,

                itemCount: pages.length,

                itemBuilder: (_, index) =>
                pages[index],
              ),
            ),

            SmoothPageIndicator(
              controller: controller.pageController,
              count: pages.length,
              effect: WormEffect(
                activeDotColor: AppColors.accent,
                dotHeight: 10,
                dotWidth: 10,
              ),
            ),

            const SizedBox(height: 30),

            Padding(
              padding:
              const EdgeInsets.symmetric(
                horizontal: 20,
              ),
              child: SizedBox(
                width: double.infinity,
                height: 55,

                child: ElevatedButton(
                  onPressed:
                  controller.nextPage,

                  child: const Text(
                    "Next",
                  ),
                ),
              ),
            ),

            const SizedBox(height: 40),
          ],
        ),
      ),
    );
  }
}

class _OnboardPage extends StatelessWidget {

  final String title;

  final String description;

  final String lottie;

  const _OnboardPage({
    required this.title,
    required this.description,
    required this.lottie,
  });

  @override
  Widget build(BuildContext context) {

    return Padding(
      padding: const EdgeInsets.all(24),
      child: Column(
        mainAxisAlignment:
        MainAxisAlignment.center,
        children: [

          Lottie.asset(
            lottie,
            height: 260,
          ),

          const SizedBox(height: 30),

          Text(
            title,
            textAlign: TextAlign.center,
            style: const TextStyle(
              fontSize: 28,
              fontWeight: FontWeight.bold,
            ),
          ),

          const SizedBox(height: 15),

          Text(
            description,
            textAlign: TextAlign.center,
            style: const TextStyle(
              color: Colors.grey,
              fontSize: 14,
            ),
          ),
        ],
      ),
    );
  }
}