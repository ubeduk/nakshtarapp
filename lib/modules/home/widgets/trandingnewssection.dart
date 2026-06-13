import 'package:flutter/material.dart';

class TrendingNewsSection extends StatelessWidget {
  const TrendingNewsSection({super.key});

  @override
  Widget build(BuildContext context) {

    final isMobile =
        MediaQuery.of(context).size.width < 600;

    return Column(
      children: [

        Padding(
          padding: const EdgeInsets.symmetric(
            horizontal: 16,
          ),

          child: Row(
            children: [

              const Text(
                "Trending News",
                style: TextStyle(
                  fontSize: 22,
                  fontWeight: FontWeight.w700,
                ),
              ),

              const Spacer(),

              TextButton(
                onPressed: () {},
                child: const Text(
                  "View All",
                ),
              ),
            ],
          ),
        ),

        const SizedBox(height: 12),

        if (isMobile)

          ListView.separated(

            shrinkWrap: true,

            physics:
            const NeverScrollableScrollPhysics(),

            padding:
            const EdgeInsets.symmetric(
              horizontal: 16,
            ),

            itemBuilder: (_, __) =>
            const MobileNewsCard(),

            separatorBuilder: (_, __) =>
            const SizedBox(height: 14),

            itemCount: 5,
          )

        else

          SizedBox(
            height: 290,
            child: ListView.separated(
              padding:
              const EdgeInsets.symmetric(
                horizontal: 24,
              ),
              scrollDirection: Axis.horizontal,
              itemBuilder: (_, __) =>
               Container(),
              separatorBuilder: (_, __) =>
              const SizedBox(width: 18),
              itemCount: 5,
            ),
          ),
      ],
    );
  }
}
class MobileNewsCard extends StatelessWidget {
  const MobileNewsCard({super.key});

  @override
  Widget build(BuildContext context) {

    return Container(

      decoration: BoxDecoration(

        color: Colors.white,

        borderRadius:
        BorderRadius.circular(20),

        boxShadow: [

          BoxShadow(

            color:
            Colors.black.withOpacity(
              .04,
            ),

            blurRadius: 15,
          ),
        ],
      ),

      child: Column(

        crossAxisAlignment:
        CrossAxisAlignment.start,

        children: [

          ClipRRect(

            borderRadius:
            const BorderRadius.vertical(
              top: Radius.circular(20),
            ),

            child: Image.network(

              "https://images.unsplash.com/photo-1473968512647-3e447244af8f",

              height: 180,

              width: double.infinity,

              fit: BoxFit.cover,
            ),
          ),

          Padding(

            padding:
            const EdgeInsets.all(14),

            child: Column(

              crossAxisAlignment:
              CrossAxisAlignment.start,

              children: [

                Container(

                  padding:
                  const EdgeInsets.symmetric(
                    horizontal: 10,
                    vertical: 5,
                  ),

                  decoration:
                  BoxDecoration(

                    color:
                    const Color(
                      0xffEEF4FF,
                    ),

                    borderRadius:
                    BorderRadius.circular(
                      30,
                    ),
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
                      FontWeight.bold,
                    ),
                  ),
                ),

                const SizedBox(height: 12),

                const Text(

                  "India's Drone Industry Hits New Milestone in 2026",

                  maxLines: 2,

                  overflow:
                  TextOverflow.ellipsis,

                  style: TextStyle(

                    fontSize: 18,

                    fontWeight:
                    FontWeight.bold,
                  ),
                ),

                const SizedBox(height: 10),

                const Text(

                  "The drone ecosystem continues to grow with government support and startup innovation.",

                  maxLines: 2,

                  overflow:
                  TextOverflow.ellipsis,

                  style: TextStyle(

                    fontSize: 14,

                    color:
                    Color(
                      0xff64748B,
                    ),
                  ),
                ),

                const SizedBox(height: 14),

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

                    const SizedBox(width: 6),

                    const Text(
                      "2 Hours Ago",
                    ),

                    const Spacer(),

                    TextButton.icon(
                      onPressed: () {},
                      icon: const Icon(
                        Icons.arrow_forward,
                        size: 16,
                      ),
                      label: const Text(
                        "Read",
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
