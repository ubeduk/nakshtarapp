import 'package:flutter/material.dart';

class TrendingNewsSection extends StatelessWidget {
  const TrendingNewsSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [

        /// SECTION HEADER
        Padding(
          padding: const EdgeInsets.symmetric(
            horizontal: 24,
          ),
          child: Row(
            children: [

              const Text(
                "Trending News",
                style: TextStyle(
                  fontSize: 32,
                  fontWeight: FontWeight.w700,
                  color: Color(0xff111827),
                ),
              ),

              const Spacer(),

              InkWell(
                onTap: () {},
                child: const Row(
                  children: [

                    Text(
                      "View All",
                      style: TextStyle(
                        color: Color(0xff2563EB),
                        fontSize: 18,
                        fontWeight: FontWeight.w600,
                      ),
                    ),

                    SizedBox(width: 4),

                    Icon(
                      Icons.arrow_forward,
                      color: Color(0xff2563EB),
                      size: 20,
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),

        const SizedBox(height: 18),

        SizedBox(
          height: 290,

          child: ListView.separated(
            padding: const EdgeInsets.symmetric(
              horizontal: 24,
            ),

            scrollDirection: Axis.horizontal,

            itemBuilder: (_, index) {

              return const _NewsCard();
            },

            separatorBuilder: (_, __) =>
            const SizedBox(width: 18),

            itemCount: 5,
          ),
        ),
      ],
    );
  }
}
class _NewsCard extends StatelessWidget {
  const _NewsCard();

  @override
  Widget build(BuildContext context) {

    return Container(
      width: 260,

      decoration: BoxDecoration(
        color: Colors.white,

        borderRadius:
        BorderRadius.circular(28),

        border: Border.all(
          color: const Color(
            0xffE5E7EB,
          ),
        ),

        boxShadow: [
          BoxShadow(
            color:
            Colors.black.withOpacity(
              .03,
            ),
            blurRadius: 20,
            offset: const Offset(
              0,
              10,
            ),
          ),
        ],
      ),

      child: Column(
        crossAxisAlignment:
        CrossAxisAlignment.start,

        children: [

          /// IMAGE
          ClipRRect(
            borderRadius:
            const BorderRadius.vertical(
              top: Radius.circular(28),
            ),

            child: Stack(
              children: [

                Image.network(
                  "https://images.unsplash.com/photo-1473968512647-3e447244af8f",
                  height: 150,
                  width: double.infinity,
                  fit: BoxFit.cover,
                ),

                Positioned(
                  left: 12,
                  top: 12,
                  child: Container(
                    padding:
                    const EdgeInsets
                        .symmetric(
                      horizontal: 10,
                      vertical: 6,
                    ),

                    decoration:
                    BoxDecoration(
                      color: Colors.white,
                      borderRadius:
                      BorderRadius
                          .circular(
                          30),
                    ),

                    child: const Text(
                      "DRONE NEWS",
                      style: TextStyle(
                        fontSize: 11,
                        color:
                        Color(
                          0xff2563EB,
                        ),
                        fontWeight:
                        FontWeight
                            .bold,
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),

          Expanded(
            child: Padding(
              padding:
              const EdgeInsets.all(
                  16),
              child: Column(
                crossAxisAlignment:
                CrossAxisAlignment
                    .start,

                children: [

                  const Text(
                    "India's Drone Industry Hits New Milestone in 2026",
                    maxLines: 2,
                    overflow:
                    TextOverflow
                        .ellipsis,
                    style: TextStyle(
                      fontSize: 18,
                      height: 1.3,
                      fontWeight:
                      FontWeight
                          .bold,
                      color:
                      Color(
                        0xff111827,
                      ),
                    ),
                  ),

                  const SizedBox(
                    height: 10,
                  ),

                  const Text(
                    "The drone ecosystem continues to grow with government support and startup innovation.",
                    maxLines: 3,
                    overflow:
                    TextOverflow
                        .ellipsis,
                    style: TextStyle(
                      fontSize: 14,
                      color:
                      Color(
                        0xff64748B,
                      ),
                      height: 1.5,
                    ),
                  ),

                  const Spacer(),

                  Row(
                    children: [

                      const Icon(
                        Icons.access_time,
                        size: 16,
                        color:
                        Color(
                          0xff94A3B8,
                        ),
                      ),

                      const SizedBox(
                          width: 6),

                      const Text(
                        "2 Hours Ago",
                        style:
                        TextStyle(
                          color:
                          Color(
                            0xff94A3B8,
                          ),
                        ),
                      ),

                      const Spacer(),

                      Container(
                        padding:
                        const EdgeInsets
                            .symmetric(
                          horizontal: 12,
                          vertical: 7,
                        ),

                        decoration:
                        BoxDecoration(
                          color:
                          const Color(
                            0xffEEF4FF,
                          ),
                          borderRadius:
                          BorderRadius
                              .circular(
                              30),
                        ),

                        child:
                        const Row(
                          children: [

                            Text(
                              "Read",
                              style:
                              TextStyle(
                                color:
                                Color(
                                  0xff2563EB,
                                ),
                                fontWeight:
                                FontWeight
                                    .w600,
                              ),
                            ),

                            SizedBox(
                                width: 4),

                            Icon(
                              Icons
                                  .arrow_forward,
                              size: 14,
                              color:
                              Color(
                                0xff2563EB,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}