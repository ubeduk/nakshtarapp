import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../core/theme/app_colors.dart';

import 'government_controller.dart';
import 'government_detail_screen.dart';

class GovernmentScreen
    extends GetView<GovernmentController> {

  const GovernmentScreen({
    super.key,
  });

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      backgroundColor:
      AppColors.background,

      appBar: AppBar(
        title:
        const Text("Government Updates"),
      ),

      body: Column(
        children: [

          Padding(
            padding:
            const EdgeInsets.all(16),
            child: TextField(
              onChanged:
              controller.search,
              decoration:
              InputDecoration(
                hintText:
                "Search Updates",
                prefixIcon:
                const Icon(
                  Icons.search,
                ),
                border:
                OutlineInputBorder(
                  borderRadius:
                  BorderRadius.circular(
                      16),
                ),
              ),
            ),
          ),

          Expanded(
            child: Obx(
                  () => ListView.builder(
                itemCount: controller
                    .filteredUpdates.length,
                padding:
                const EdgeInsets.all(
                    16),
                itemBuilder:
                    (_, index) {

                  final update =
                  controller
                      .filteredUpdates[
                  index];

                  return GestureDetector(
                    onTap: () {

                      Get.to(
                            () =>
                            GovernmentDetailScreen(
                              update:
                              update,
                            ),
                      );
                    },
                    child: Row(
                      crossAxisAlignment:
                      CrossAxisAlignment
                          .start,
                      children: [

                        Column(
                          children: [

                            Container(
                              width: 18,
                              height: 18,
                              decoration:
                              const BoxDecoration(
                                color: Colors
                                    .blue,
                                shape: BoxShape
                                    .circle,
                              ),
                            ),

                            Container(
                              width: 2,
                              height: 120,
                              color: Colors
                                  .blue,
                            ),
                          ],
                        ),

                        const SizedBox(
                            width: 15),

                        Expanded(
                          child: Container(
                            margin:
                            const EdgeInsets
                                .only(
                              bottom: 20,
                            ),
                            padding:
                            const EdgeInsets
                                .all(
                                18),
                            decoration:
                            BoxDecoration(
                              color: Colors
                                  .white,
                              borderRadius:
                              BorderRadius.circular(
                                  20),
                            ),
                            child: Column(
                              crossAxisAlignment:
                              CrossAxisAlignment
                                  .start,
                              children: [

                                Text(
                                  update.title,
                                  style:
                                  const TextStyle(
                                    fontSize:
                                    18,
                                    fontWeight:
                                    FontWeight.bold,
                                  ),
                                ),

                                const SizedBox(
                                    height:
                                    8),

                                Text(
                                  update.department,
                                ),

                                const SizedBox(
                                    height:
                                    8),

                                Text(
                                  update.date,
                                ),
                              ],
                            ),
                          ),
                        ),
                      ],
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
}