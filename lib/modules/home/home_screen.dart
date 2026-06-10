import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:nakshatr/modules/home/widgets/Aiassistant.dart';
import 'package:nakshatr/modules/home/widgets/compititionfunding.dart';
import 'package:nakshatr/modules/home/widgets/headerhome.dart';
import 'package:nakshatr/modules/home/widgets/herobannerimage.dart';
import 'package:nakshatr/modules/home/widgets/quick%20axction.dart';
import 'package:nakshatr/modules/home/widgets/states.dart';
import 'package:nakshatr/modules/home/widgets/trandingnewssection.dart';

import 'home_controller.dart';

class HomeScreen extends GetView<HomeController> {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xffF7F9FC),

      body: Scaffold(
        backgroundColor: Color(0xffF8F9FB),

        // bottomNavigationBar: CustomBottomNav(),

        // floatingActionButtonLocation:
        // FloatingActionButtonLocation.centerDocked,
        //
        // floatingActionButton: DroneFAB(),

        body: SafeArea(
          child: Column(
            children: [
              HeaderSection(),
              Expanded(
                child: SingleChildScrollView(
                  child: Column(
                    children: [



                      HeroBannerSection(
                        bannerImages: [
                          "assets/images/banner1.png",
                          "assets/images/banner2.png",
                          "assets/images/banner3.png",
                          "assets/images/banner4.png",
                        ],
                      ),

                      StatsSection(),

                      QuickActionsSection(),

                      CompetitionFundingSection(),

                      AiAssistantSection(),

                      TrendingNewsSection(),

                      SizedBox(height: 100),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }


}