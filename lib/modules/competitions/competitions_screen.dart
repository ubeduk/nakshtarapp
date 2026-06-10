import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../core/theme/app_colors.dart';

import 'competition_detail_screen.dart';
import 'competitions_controller.dart';

class CompetitionsScreen
    extends GetView<CompetitionsController> {

  const CompetitionsScreen({
    super.key,
  });

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      backgroundColor:
      AppColors.background,

      appBar: AppBar(
        title:
        const Text("Competitions"),
      ),

      body: Obx(
            () => ListView.builder(
          padding:
          const EdgeInsets.all(16),
          itemCount:
          controller.competitions.length,
          itemBuilder:
              (_, index) {

            final competition =
            controller
                .competitions[index];

            return GestureDetector(
              onTap: () {

                Get.to(
                      () =>
                      CompetitionDetailScreen(
                        competition:
                        competition,
                      ),
                );
              },
              child: Container(
                margin:
                const EdgeInsets.only(
                  bottom: 20,
                ),
                decoration:
                BoxDecoration(
                  color:
                  Colors.white,
                  borderRadius:
                  BorderRadius.circular(
                      24),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.black
                          .withOpacity(.05),
                      blurRadius: 10,
                    ),
                  ],
                ),
                child: Column(
                  children: [

                    Hero(
                      tag: competition.id,
                      child: ClipRRect(
                        borderRadius:
                        const BorderRadius
                            .vertical(
                          top:
                          Radius.circular(
                              24),
                        ),
                        child:
                        Image.network(
                          competition.image,
                          height: 220,
                          width:
                          double.infinity,
                          fit:
                          BoxFit.cover,
                        ),
                      ),
                    ),

                    Padding(
                      padding:
                      const EdgeInsets
                          .all(16),
                      child: Column(
                        crossAxisAlignment:
                        CrossAxisAlignment
                            .start,
                        children: [

                          Text(
                            competition.title,
                            style:
                            const TextStyle(
                              fontSize:
                              22,
                              fontWeight:
                              FontWeight
                                  .bold,
                            ),
                          ),

                          const SizedBox(
                              height: 10),

                          Text(
                            competition.organizer,
                          ),

                          const SizedBox(
                              height: 10),

                          Container(
                            padding:
                            const EdgeInsets
                                .symmetric(
                              horizontal:
                              14,
                              vertical: 6,
                            ),
                            decoration:
                            BoxDecoration(
                              color:
                              Colors.amber,
                              borderRadius:
                              BorderRadius
                                  .circular(
                                  30),
                            ),
                            child: Text(
                              competition
                                  .prize,
                              style:
                              const TextStyle(
                                fontWeight:
                                FontWeight
                                    .bold,
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            );
          },
        ),
      ),
    );
  }
}