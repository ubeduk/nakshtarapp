import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:percent_indicator/linear_percent_indicator.dart';

import '../../core/theme/app_colors.dart';

import 'funding_controller.dart';
import 'funding_detail_screen.dart';

class FundingScreen
    extends GetView<FundingController> {

  const FundingScreen({super.key});

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      backgroundColor:
      AppColors.background,

      appBar: AppBar(
        title: const Text(
          "Funding Opportunities",
        ),
      ),

      body: Column(
        children: [

          _buildStatistics(),

          Expanded(
            child: Obx(
                  () => ListView.builder(
                padding:
                const EdgeInsets.all(
                    16),
                itemCount: controller
                    .fundingList.length,
                itemBuilder:
                    (_, index) {

                  final funding =
                  controller
                      .fundingList[
                  index];

                  return GestureDetector(
                    onTap: () {

                      Get.to(
                            () =>
                            FundingDetailScreen(
                              funding:
                              funding,
                            ),
                      );
                    },
                    child: Container(
                      margin:
                      const EdgeInsets
                          .only(
                        bottom: 18,
                      ),
                      decoration:
                      BoxDecoration(
                        color:
                        Colors.white,
                        borderRadius:
                        BorderRadius
                            .circular(
                            24),
                      ),
                      child: Padding(
                        padding:
                        const EdgeInsets
                            .all(18),
                        child: Column(
                          crossAxisAlignment:
                          CrossAxisAlignment
                              .start,
                          children: [

                            Row(
                              children: [

                                Container(
                                  padding:
                                  const EdgeInsets
                                      .all(
                                      12),
                                  decoration:
                                  BoxDecoration(
                                    color:
                                    AppColors
                                        .accent,
                                    borderRadius:
                                    BorderRadius.circular(
                                        15),
                                  ),
                                  child:
                                  const Icon(
                                    Icons
                                        .currency_rupee,
                                    color:
                                    Colors.white,
                                  ),
                                ),

                                const SizedBox(
                                    width:
                                    15),

                                Expanded(
                                  child:
                                  Column(
                                    crossAxisAlignment:
                                    CrossAxisAlignment.start,
                                    children: [

                                      Text(
                                        funding
                                            .title,
                                        style:
                                        const TextStyle(
                                          fontSize:
                                          18,
                                          fontWeight:
                                          FontWeight.bold,
                                        ),
                                      ),

                                      Text(
                                        funding.provider,
                                      ),
                                    ],
                                  ),
                                ),
                              ],
                            ),

                            const SizedBox(
                                height:
                                15),

                            Text(
                              funding.amount,
                              style:
                              const TextStyle(
                                fontSize:
                                26,
                                fontWeight:
                                FontWeight
                                    .bold,
                              ),
                            ),

                            const SizedBox(
                                height:
                                12),

                            LinearPercentIndicator(
                              lineHeight:
                              10,
                              percent:
                              funding
                                  .progress,
                              barRadius:
                              const Radius
                                  .circular(
                                  20),
                            ),

                            const SizedBox(
                                height:
                                12),

                            Text(
                              "Deadline: ${funding.deadline}",
                            ),
                          ],
                        ),
                      ),
                    ),
                  );
                },
              ),
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildStatistics() {

    return Container(
      margin:
      const EdgeInsets.all(16),
      padding:
      const EdgeInsets.all(20),
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
            24),
      ),
      child: Row(
        mainAxisAlignment:
        MainAxisAlignment
            .spaceAround,
        children: const [

          _StatItem(
            title: "3",
            subtitle: "Funds",
          ),

          _StatItem(
            title: "₹85L",
            subtitle: "Available",
          ),

          _StatItem(
            title: "2026",
            subtitle: "Active",
          ),
        ],
      ),
    );
  }
}

class _StatItem
    extends StatelessWidget {

  final String title;
  final String subtitle;

  const _StatItem({
    required this.title,
    required this.subtitle,
  });

  @override
  Widget build(BuildContext context) {

    return Column(
      children: [

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
    );
  }
}