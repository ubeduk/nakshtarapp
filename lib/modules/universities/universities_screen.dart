import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:animate_do/animate_do.dart';
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
      backgroundColor: AppColors.background,

      body: Column(
        children: [

          const UniversityHeader(),
SizedBox(height: 15,),
          /// SEARCH BAR
          Column(
            children: [

              /// SEARCH BAR
              Container(
                margin: const EdgeInsets.symmetric(
                  horizontal: 16,
                ),
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius:
                  BorderRadius.circular(20),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.black.withOpacity(.05),
                      blurRadius: 20,
                      offset: const Offset(0, 8),
                    ),
                  ],
                ),
                child: TextField(
                  onChanged:
                  controller.searchUniversity,
                  decoration: InputDecoration(
                    hintText:
                    "Search Universities, Labs, Courses...",
                    prefixIcon: const Icon(
                      Icons.search_rounded,
                      color: Color(0xff2563EB),
                    ),

                    suffixIcon: InkWell(
                      onTap: () {
                        controller.showFilters.toggle();
                      },
                      child: Container(
                        margin:
                        const EdgeInsets.all(10),
                        decoration: BoxDecoration(
                          color:
                          const Color(0xff2563EB),
                          borderRadius:
                          BorderRadius.circular(
                            10,
                          ),
                        ),
                        child: Obx(
                              () => Icon(
                            controller.showFilters.value
                                ? Icons.close_rounded
                                : Icons.tune_rounded,
                            color: Colors.white,
                            size: 20,
                          ),
                        ),
                      ),
                    ),

                    border: OutlineInputBorder(
                      borderRadius:
                      BorderRadius.circular(20),
                      borderSide:
                      BorderSide.none,
                    ),
                  ),
                ),
              ),

              /// EXPANDABLE FILTERS
              Obx(
                    () => AnimatedSize(
                  duration:
                  const Duration(milliseconds: 300),
                  curve: Curves.easeInOut,

                  child: controller.showFilters.value
                      ? Container(
                    height: 55,
                    margin:
                    const EdgeInsets.only(
                      top: 12,
                    ),

                    child: ListView.builder(
                      padding:
                      const EdgeInsets.symmetric(
                        horizontal: 16,
                      ),
                      scrollDirection:
                      Axis.horizontal,
                      itemCount:
                      controller.filters.length,
                      itemBuilder:
                          (_, index) {

                        final filter =
                        controller
                            .filters[index];

                        return Obx(() {

                          final selected =
                              controller
                                  .selectedFilter
                                  .value ==
                                  filter;

                          return GestureDetector(
                            onTap: () {
                              controller
                                  .filterUniversity(
                                filter,
                              );
                            },

                            child:
                            AnimatedContainer(
                              duration:
                              const Duration(
                                milliseconds:
                                250,
                              ),

                              margin:
                              const EdgeInsets.only(
                                right: 10,
                              ),

                              padding:
                              const EdgeInsets.symmetric(
                                horizontal:
                                18,
                              ),

                              decoration:
                              BoxDecoration(
                                color: selected
                                    ? const Color(
                                    0xff2563EB)
                                    : Colors.white,

                                borderRadius:
                                BorderRadius.circular(
                                  30,
                                ),
                              ),

                              child: Center(
                                child: Text(
                                  filter,
                                  style:
                                  TextStyle(
                                    color: selected
                                        ? Colors.white
                                        : Colors.black87,
                                  ),
                                ),
                              ),
                            ),
                          );
                        });
                      },
                    ),
                  )
                      : const SizedBox.shrink(),
                ),
              ),
            ],
          ),



          const SizedBox(height: 12),

          Expanded(
            child: Obx(
                  () {

                if (controller.isLoading.value) {
                  return const Center(
                    child:
                    CircularProgressIndicator(),
                  );
                }

                if (controller
                    .filteredUniversities
                    .isEmpty) {
                  return const Center(
                    child: Column(
                      mainAxisAlignment:
                      MainAxisAlignment.center,
                      children: [

                        Icon(
                          Icons.school_outlined,
                          size: 80,
                          color: Colors.grey,
                        ),

                        SizedBox(height: 12),

                        Text(
                          "No Universities Found",
                          style: TextStyle(
                            fontSize: 18,
                            fontWeight:
                            FontWeight.bold,
                          ),
                        ),
                      ],
                    ),
                  );
                }

                return ListView.builder(
                  padding:
                  const EdgeInsets.only(
                    bottom: 20,
                  ),
                  itemCount: controller
                      .filteredUniversities
                      .length,
                  itemBuilder: (_, index) {

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
class UniversityHeader extends StatelessWidget {
  const UniversityHeader({super.key});

  @override
  Widget build(BuildContext context) {
    return FadeInDown(
      duration: const Duration(
        milliseconds: 800,
      ),
      child: Container(
        width: double.infinity,
        padding: const EdgeInsets.fromLTRB(
          20,
          60,
          20,
          25,
        ),
        decoration: const BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topLeft,
            end: Alignment.bottomRight,
            colors: [
              Color(0xff0F172A),
              Color(0xff2563EB),
            ],
          ),
          borderRadius: BorderRadius.only(
            bottomLeft: Radius.circular(30),
            bottomRight: Radius.circular(30),
          ),
        ),
        child: Column(
          crossAxisAlignment:
          CrossAxisAlignment.start,
          children: [

            /// TOP ROW
            Row(
              children: [

                ZoomIn(
                  duration: const Duration(
                    milliseconds: 900,
                  ),
                  child: Container(
                    width: 52,
                    height: 52,
                    decoration: BoxDecoration(
                      color: Colors.white12,
                      borderRadius:
                      BorderRadius.circular(
                        15,
                      ),
                    ),
                    child: const Icon(
                      Icons.school_rounded,
                      color: Colors.white,
                    ),
                  ),
                ),

                const Spacer(),

                ZoomIn(
                  delay: const Duration(
                    milliseconds: 300,
                  ),
                  child: Container(
                    width: 46,
                    height: 46,
                    decoration: BoxDecoration(
                      color: Colors.white12,
                      borderRadius:
                      BorderRadius.circular(
                        14,
                      ),
                    ),
                    child: const Icon(
                      Icons.notifications_none,
                      color: Colors.white,
                    ),
                  ),
                ),
              ],
            ),

            const SizedBox(height: 25),

            FadeInLeft(
              delay: const Duration(
                milliseconds: 200,
              ),
              child: const Text(
                "Universities",
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 30,
                  fontWeight:
                  FontWeight.w800,
                ),
              ),
            ),

            const SizedBox(height: 8),

            FadeInLeft(
              delay: const Duration(
                milliseconds: 400,
              ),
              child: const Text(
                "Explore Drone Programs & Labs",
                style: TextStyle(
                  color: Colors.white70,
                  fontSize: 14,
                ),
              ),
            ),

            const SizedBox(height: 22),

            Row(
              children: [

                Expanded(
                  child: BounceInUp(
                    delay: const Duration(
                      milliseconds: 500,
                    ),
                    child: _statCard(
                      "120+",
                      "Universities",
                    ),
                  ),
                ),

                const SizedBox(width: 10),

                Expanded(
                  child: BounceInUp(
                    delay: const Duration(
                      milliseconds: 650,
                    ),
                    child: _statCard(
                      "45+",
                      "Labs",
                    ),
                  ),
                ),

                const SizedBox(width: 10),

                Expanded(
                  child: BounceInUp(
                    delay: const Duration(
                      milliseconds: 800,
                    ),
                    child: _statCard(
                      "30+",
                      "Incubators",
                    ),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }

  static Widget _statCard(
      String value,
      String title,
      ) {
    return Container(
      padding:
      const EdgeInsets.symmetric(
        vertical: 12,
      ),
      decoration: BoxDecoration(
        color: Colors.white12,
        borderRadius:
        BorderRadius.circular(16),
      ),
      child: Column(
        children: [

          Text(
            value,
            style: const TextStyle(
              color: Colors.white,
              fontWeight:
              FontWeight.bold,
              fontSize: 18,
            ),
          ),

          const SizedBox(height: 4),

          Text(
            title,
            style: const TextStyle(
              color: Colors.white70,
              fontSize: 11,
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