import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../core/theme/app_colors.dart';

import 'incubation_controller.dart';
import 'incubation_detail_screen.dart';

class IncubationScreen
    extends GetView<IncubationController> {

  const IncubationScreen({
    super.key,
  });

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      backgroundColor:
      AppColors.background,

      appBar: AppBar(
        title: const Text(
          "Incubation Centers",
        ),
      ),

      body: Obx(
            () => ListView.builder(
          padding:
          const EdgeInsets.all(16),
          itemCount:
          controller.centers.length,
          itemBuilder:
              (_, index) {

            final center =
            controller
                .centers[index];

            return GestureDetector(
              onTap: () {

                Get.to(
                      () =>
                      IncubationDetailScreen(
                        center:
                        center,
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
                          .withOpacity(
                          .05),
                      blurRadius: 10,
                    ),
                  ],
                ),
                child: Column(
                  children: [

                    Hero(
                      tag: center.id,
                      child: ClipRRect(
                        borderRadius:
                        const BorderRadius
                            .vertical(
                          top: Radius
                              .circular(
                              24),
                        ),
                        child:
                        Image.network(
                          center.image,
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
                            center.name,
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
                              height: 6),

                          Text(
                            center.location,
                          ),

                          const SizedBox(
                              height: 10),

                          Container(
                            padding:
                            const EdgeInsets
                                .symmetric(
                              horizontal:
                              12,
                              vertical:
                              5,
                            ),
                            decoration:
                            BoxDecoration(
                              color: AppColors
                                  .accent,
                              borderRadius:
                              BorderRadius
                                  .circular(
                                  30),
                            ),
                            child: Text(
                              center.startups,
                              style:
                              const TextStyle(
                                color: Colors
                                    .white,
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