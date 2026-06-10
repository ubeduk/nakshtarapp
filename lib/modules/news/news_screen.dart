import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../core/theme/app_colors.dart';

import 'news_controller.dart';
import 'news_detail_screen.dart';

class NewsScreen extends GetView<NewsController> {
  const NewsScreen({super.key});

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      backgroundColor:
      AppColors.background,

      appBar: AppBar(
        title:
        const Text("Drone News"),
      ),

      body: Column(
        children: [

          _breakingBanner(),

          _searchField(),

          _categoryFilters(),

          Expanded(
            child: Obx(
                  () => ListView.builder(
                padding:
                const EdgeInsets.all(
                    16),
                itemCount: controller
                    .filteredNews.length,
                itemBuilder:
                    (_, index) {

                  final article =
                  controller
                      .filteredNews[
                  index];

                  return GestureDetector(
                    onTap: () {

                      Get.to(
                            () =>
                            NewsDetailScreen(
                              article:
                              article,
                            ),
                      );
                    },
                    child: Container(
                      margin:
                      const EdgeInsets
                          .only(
                        bottom: 20,
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
                      child: Column(
                        children: [

                          Hero(
                            tag:
                            article.id,
                            child:
                            ClipRRect(
                              borderRadius:
                              const BorderRadius.vertical(
                                top:
                                Radius.circular(
                                    24),
                              ),
                              child:
                              Image.network(
                                article
                                    .image,
                                height:
                                220,
                                width:
                                double.infinity,
                                fit: BoxFit
                                    .cover,
                              ),
                            ),
                          ),

                          Padding(
                            padding:
                            const EdgeInsets
                                .all(
                                18),
                            child:
                            Column(
                              crossAxisAlignment:
                              CrossAxisAlignment.start,
                              children: [

                                Container(
                                  padding:
                                  const EdgeInsets.symmetric(
                                    horizontal:
                                    12,
                                    vertical:
                                    5,
                                  ),
                                  decoration:
                                  BoxDecoration(
                                    color:
                                    Colors.red,
                                    borderRadius:
                                    BorderRadius.circular(
                                        20),
                                  ),
                                  child:
                                  Text(
                                    article.category,
                                    style:
                                    const TextStyle(
                                      color: Colors.white,
                                    ),
                                  ),
                                ),

                                const SizedBox(
                                    height:
                                    12),

                                Text(
                                  article
                                      .title,
                                  style:
                                  const TextStyle(
                                    fontSize:
                                    22,
                                    fontWeight:
                                    FontWeight.bold,
                                  ),
                                ),

                                const SizedBox(
                                    height:
                                    8),

                                Text(
                                  article
                                      .description,
                                  maxLines:
                                  2,
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
          ),
        ],
      ),
    );
  }

  Widget _breakingBanner() {

    return Container(
      margin:
      const EdgeInsets.all(16),
      padding:
      const EdgeInsets.all(14),
      decoration:
      BoxDecoration(
        color:
        Colors.red.shade700,
        borderRadius:
        BorderRadius.circular(
            18),
      ),
      child: const Row(
        children: [

          Icon(
            Icons.flash_on,
            color: Colors.white,
          ),

          SizedBox(width: 10),

          Expanded(
            child: Text(
              "Breaking: National Drone Championship Registration Started",
              style: TextStyle(
                color: Colors.white,
              ),
            ),
          ),
        ],
      ),
    );
  }

  Widget _searchField() {

    return Padding(
      padding:
      const EdgeInsets.symmetric(
        horizontal: 16,
      ),
      child: TextField(
        onChanged:
        controller.searchNews,
        decoration:
        InputDecoration(
          prefixIcon:
          const Icon(
            Icons.search,
          ),
          hintText:
          "Search News...",
        ),
      ),
    );
  }

  Widget _categoryFilters() {

    return SizedBox(
      height: 60,
      child: Obx(
            () => ListView.builder(
          scrollDirection:
          Axis.horizontal,
          itemCount: controller
              .categories.length,
          itemBuilder:
              (_, index) {

            final category =
            controller
                .categories[index];

            return GestureDetector(
              onTap: () {

                controller
                    .filterCategory(
                  category,
                );
              },
              child: Container(
                margin:
                const EdgeInsets
                    .all(10),
                padding:
                const EdgeInsets
                    .symmetric(
                  horizontal: 18,
                ),
                decoration:
                BoxDecoration(
                  color: controller
                      .selectedCategory
                      .value ==
                      category
                      ? AppColors
                      .accent
                      : Colors.white,
                  borderRadius:
                  BorderRadius
                      .circular(
                      25),
                ),
                child: Center(
                  child: Text(
                    category,
                  ),
                ),
              ),
            );
          },
        ),
      ),
    );
  }
}