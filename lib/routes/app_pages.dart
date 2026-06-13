import 'package:get/get.dart';

import '../modules/bottom_nav_shell/bottom_nav_binding.dart';
import '../modules/bottom_nav_shell/bottom_nav_screen.dart';
import '../modules/competitions/competitions_binding.dart';
import '../modules/competitions/competitions_screen.dart';
import '../modules/funding/funding_binding.dart';
import '../modules/funding/funding_screen.dart';
import '../modules/government/government_binding.dart';
import '../modules/government/government_screen.dart';
import '../modules/home/home_binding.dart';
import '../modules/home/home_screen.dart';
import '../modules/incubation/incubation_binding.dart';
import '../modules/incubation/incubation_screen.dart';
import '../modules/news/news_binding.dart';
import '../modules/news/news_screen.dart';
import '../modules/profile/profile_binding.dart';
import '../modules/profile/profile_screen.dart';
import '../modules/splash/splash_binding.dart';
import '../modules/splash/splash_screen.dart';

import '../modules/onboarding/onboarding_binding.dart';
import '../modules/onboarding/onboarding_screen.dart';
import '../modules/auth/auth_binding.dart';
import '../modules/auth/login_screen.dart';
import '../modules/universities/universities_binding.dart';
import '../modules/universities/universities_screen.dart';
import 'app_routes.dart';

class AppPages {
  static final routes = [
    GetPage(
      name: AppRoutes.bottomNav,
      page: () => const BottomNavScreen(),
      binding: BottomNavBinding(),
    ),
    GetPage(
      name: AppRoutes.splash,
      page: () => const SplashScreen(),
      binding: SplashBinding(),
    ),

    GetPage(
      name: AppRoutes.onboarding,
      page: () => const OnboardingScreen(),
      binding: OnboardingBinding(),
    ),
    GetPage(
      name: AppRoutes.login,
      page: () => const LoginScreen(),
      binding: AuthBinding(),
    ),
    GetPage(
      name: AppRoutes.home,
      page: () => const HomeScreen(),
      binding: HomeBinding(),
    ),
    GetPage(
      name: AppRoutes.universities,
      page: () => const UniversitiesScreen(),
      binding: UniversitiesBinding(),
    ),
    GetPage(
      name: AppRoutes.incubation,
      page: () => const IncubationScreen(),
      binding: IncubationBinding(),
    ),
    GetPage(
      name: AppRoutes.competitions,
      page: () => const CompetitionsScreen(),
      binding: CompetitionsBinding(),
    ),
    GetPage(
      name: AppRoutes.funding,
      page: () => const FundingScreen(),
      binding: FundingBinding(),
    ),
    GetPage(
      name: AppRoutes.government,
      page: () => const GovernmentScreen(),
      binding: GovernmentBinding(),
    ),
    GetPage(
      name: AppRoutes.news,
      page: () => const NewsScreen(),
      binding: NewsBinding(),
    ),
    GetPage(
      name: AppRoutes.profile,
      page: () => const ProfileScreen(),
      binding: ProfileBinding(),
    ),
  ];
}