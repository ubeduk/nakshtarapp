import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../core/theme/app_colors.dart';
import '../../data/models/models.dart';

import 'universities_controller.dart';
import 'university_detail_screen.dart';

class UniversitiesScreen
    extends GetView<UniversitiesController> {

  const UniversitiesScreen({
    super.key,
  });

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      backgroundColor:
      AppColors.background,

      appBar: AppBar(
        title: const Text(
          "Partner Universities",
        ),
      ),

      body: Column(
        children: [

          Padding(
            padding:
            const EdgeInsets.all(16),
            child: TextField(
              onChanged:
              controller.searchUniversity,
              decoration:
              InputDecoration(
                hintText:
                "Search University",
                prefixIcon:
                const Icon(
                  Icons.search,
                ),
                border:
                OutlineInputBorder(
                  borderRadius:
                  BorderRadius.circular(
                      15),
                ),
              ),
            ),
          ),

          SizedBox(
            height: 45,
            child: ListView.builder(
              scrollDirection:
              Axis.horizontal,
              itemCount:
              controller.filters.length,
              itemBuilder:
                  (_, index) {

                final filter =
                controller
                    .filters[index];

                return Obx(
                      () => GestureDetector(
                    onTap: () {
                      controller
                          .filterUniversity(
                        filter,
                      );
                    },
                    child: Container(
                      margin:
                      const EdgeInsets
                          .symmetric(
                        horizontal: 8,
                      ),
                      padding:
                      const EdgeInsets
                          .symmetric(
                        horizontal: 18,
                      ),
                      decoration:
                      BoxDecoration(
                        color: controller
                            .selectedFilter
                            .value ==
                            filter
                            ? AppColors
                            .accent
                            : Colors.white,
                        borderRadius:
                        BorderRadius
                            .circular(
                            30),
                      ),
                      child: Center(
                        child: Text(
                          filter,
                        ),
                      ),
                    ),
                  ),
                );
              },
            ),
          ),

          const SizedBox(height: 10),

          Expanded(
            child: Obx(
                  () {

                if (controller
                    .isLoading.value) {
                  return const Center(
                    child:
                    CircularProgressIndicator(),
                  );
                }

                return ListView.builder(
                  itemCount: controller
                      .filteredUniversities
                      .length,
                  itemBuilder:
                      (_, index) {

                    final university =
                    controller
                        .filteredUniversities[
                    index];

                    return _UniversityCard(
                      university:
                      university,
                    );
                  },
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}

class _UniversityCard
    extends StatelessWidget {

  final UniversityModel university;

  const _UniversityCard({
    required this.university,
  });

  @override
  Widget build(BuildContext context) {

    return GestureDetector(
      onTap: () {

        Get.to(
              () =>
              UniversityDetailScreen(
                university:
                university,
              ),
        );
      },
      child: Container(
        margin:
        const EdgeInsets.all(12),
        decoration:
        BoxDecoration(
          color: Colors.white,
          borderRadius:
          BorderRadius.circular(
              20),
        ),
        child: Column(
          children: [

            Hero(
              tag: university.id,
              child: ClipRRect(
                borderRadius:
                const BorderRadius
                    .vertical(
                  top:
                  Radius.circular(
                      20),
                ),
                child: Image.network(
                  university.image,
                  height: 180,
                  width:
                  double.infinity,
                  fit: BoxFit.cover,
                ),
              ),
            ),

            Padding(
              padding:
              const EdgeInsets.all(
                  16),
              child: Column(
                crossAxisAlignment:
                CrossAxisAlignment
                    .start,
                children: [

                  Text(
                    university.name,
                    style:
                    const TextStyle(
                      fontSize: 20,
                      fontWeight:
                      FontWeight
                          .bold,
                    ),
                  ),

                  const SizedBox(
                      height: 5),

                  Text(
                    university.location,
                  ),

                  const SizedBox(
                      height: 10),

                  Text(
                    university.course,
                  ),

                  const SizedBox(
                      height: 10),

                  Container(
                    padding:
                    const EdgeInsets
                        .symmetric(
                      horizontal: 12,
                      vertical: 5,
                    ),
                    decoration:
                    BoxDecoration(
                      color:
                      Colors.blue,
                      borderRadius:
                      BorderRadius
                          .circular(
                          20),
                    ),
                    child: Text(
                      university
                          .ranking,
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
  }
}