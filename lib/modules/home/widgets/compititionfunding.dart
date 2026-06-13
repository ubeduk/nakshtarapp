import 'package:flutter/material.dart';

class CompetitionFundingSection extends StatelessWidget {
  const CompetitionFundingSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16),
      child: Column(
        children: [

          const FeaturedCompetitionCard(),

          const SizedBox(height: 16),

          Row(
            children: [

              Expanded(
                child: FundingCard(),
              ),

              const SizedBox(width: 12),

              Expanded(
                child: OpportunitiesCard(),
              ),
            ],
          ),
        ],
      ),
    );
  }
}

class FeaturedCompetitionCard extends StatelessWidget {
  const FeaturedCompetitionCard({super.key});

  @override
  Widget build(BuildContext context) {

    final isMobile =
        MediaQuery.of(context).size.width < 600;

    return Container(

      width: double.infinity,

      padding: const EdgeInsets.all(20),

      decoration: BoxDecoration(

        borderRadius:
        BorderRadius.circular(30),

        gradient:
        const LinearGradient(

          begin: Alignment.topLeft,

          end: Alignment.bottomRight,

          colors: [

            Color(0xff4F46E5),

            Color(0xff7C3AED),
          ],
        ),

        boxShadow: [

          BoxShadow(

            color:
            Colors.deepPurple
                .withOpacity(.25),

            blurRadius: 25,

            offset:
            const Offset(
              0,
              12,
            ),
          ),
        ],
      ),

      child: Column(

        crossAxisAlignment:
        CrossAxisAlignment.start,

        mainAxisSize:
        MainAxisSize.min,

        children: [

          Container(

            padding:
            const EdgeInsets.symmetric(

              horizontal: 12,

              vertical: 8,
            ),

            decoration:
            BoxDecoration(

              color:
              Colors.white24,

              borderRadius:
              BorderRadius.circular(
                30,
              ),
            ),

            child: const Row(

              mainAxisSize:
              MainAxisSize.min,

              children: [

                Icon(
                  Icons.emoji_events,
                  color:
                  Colors.amber,
                  size: 16,
                ),

                SizedBox(width: 8),

                Text(

                  "FEATURED",

                  style: TextStyle(

                    color:
                    Colors.white,

                    fontSize: 12,

                    fontWeight:
                    FontWeight.bold,
                  ),
                ),
              ],
            ),
          ),

          const SizedBox(height: 20),

          Text(

            "National Drone\nChampionship",

            style: TextStyle(

              color:
              Colors.white,

              fontSize:
              isMobile
                  ? 18
                  : 28,

              height: 1.1,

              fontWeight:
              FontWeight.bold,
            ),
          ),

          const SizedBox(height: 12),

          Text(

            "Compete with innovators and showcase your ideas.",

            style: TextStyle(

              color:
              Colors.white70,

              fontSize:
              isMobile
                  ? 12
                  : 14,
            ),
          ),

          const SizedBox(height: 20),

          Container(

            width: double.infinity,

            padding:
            const EdgeInsets.symmetric(

              horizontal: 12,

              vertical: 10,
            ),

            decoration:
            BoxDecoration(

              color:
              Colors.white12,

              borderRadius:
              BorderRadius.circular(
                16,
              ),
            ),

            child: const Row(

              children: [

                Icon(
                  Icons.schedule,
                  color:
                  Colors.white,
                  size: 16,
                ),

                SizedBox(width: 8),

                Text(

                  "14 Days Left",

                  style: TextStyle(

                    color:
                    Colors.white,

                    fontWeight:
                    FontWeight.bold,
                  ),
                ),
              ],
            ),
          ),

          const SizedBox(height: 16),

          SizedBox(

            width: double.infinity,

            height: 48,

            child:
            ElevatedButton(

              style:
              ElevatedButton.styleFrom(

                backgroundColor:
                Colors.white,

                foregroundColor:
                const Color(
                  0xff4F46E5,
                ),

                elevation: 0,

                shape:
                RoundedRectangleBorder(

                  borderRadius:
                  BorderRadius.circular(
                    14,
                  ),
                ),
              ),

              onPressed: () {},

              child: const Row(

                mainAxisAlignment:
                MainAxisAlignment.center,

                children: [

                  Text(

                    "Register Now",

                    style: TextStyle(

                      fontWeight:
                      FontWeight.bold,
                    ),
                  ),

                  SizedBox(width: 8),

                  Icon(
                    Icons.arrow_forward,
                    size: 18,
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

class FundingCard extends StatelessWidget {
  const FundingCard({super.key});

  @override
  Widget build(BuildContext context) {

    return Container(

      height: 180,

      padding:
      const EdgeInsets.all(14),

      decoration: BoxDecoration(

        color: Colors.white,

        borderRadius:
        BorderRadius.circular(
          20,
        ),

        boxShadow: [

          BoxShadow(

            color:
            Colors.green
                .withOpacity(.08),

            blurRadius: 15,
          ),
        ],
      ),

      child: Column(

        crossAxisAlignment:
        CrossAxisAlignment.start,

        children: [

          const Icon(

            Icons.currency_rupee,

            color:
            Colors.green,

            size: 28,
          ),

          const SizedBox(height: 8),

          const Text(

            "Funding Alert",

            style: TextStyle(

              fontSize: 12,

              color:
              Colors.green,

              fontWeight:
              FontWeight.w600,
            ),
          ),

          const SizedBox(height: 8),

          const Expanded(

            child: Text(

              "Startup India\nSeed Fund",

              maxLines: 2,

              overflow:
              TextOverflow
                  .ellipsis,

              style: TextStyle(

                fontSize: 18,

                fontWeight:
                FontWeight.bold,
              ),
            ),
          ),

          Container(

            width:
            double.infinity,

            padding:
            const EdgeInsets.symmetric(
              vertical: 8,
            ),

            decoration:
            BoxDecoration(

              color:
              Colors.green
                  .shade50,

              borderRadius:
              BorderRadius.circular(
                10,
              ),
            ),

            child:
            const Center(

              child: Text(

                "₹25 Lakhs",

                style: TextStyle(

                  fontSize: 14,

                  color:
                  Colors.green,

                  fontWeight:
                  FontWeight.bold,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class OpportunitiesCard extends StatelessWidget {
  const OpportunitiesCard({super.key});

  @override
  Widget build(BuildContext context) {

    return Container(

      height: 180,

      padding:
      const EdgeInsets.all(14),

      decoration: BoxDecoration(

        color: Colors.white,

        borderRadius:
        BorderRadius.circular(
          20,
        ),

        boxShadow: [

          BoxShadow(

            color:
            Colors.orange
                .withOpacity(.08),

            blurRadius: 15,
          ),
        ],
      ),

      child: Column(

        crossAxisAlignment:
        CrossAxisAlignment.start,

        children: [

          const Icon(

            Icons.workspaces,

            color:
            Colors.orange,

            size: 28,
          ),

          const SizedBox(height: 8),

          const Text(

            "Opportunities",

            style: TextStyle(

              fontSize: 12,

              color:
              Colors.orange,

              fontWeight:
              FontWeight.w600,
            ),
          ),

          const SizedBox(height: 8),

          const Expanded(

            child: Text(

              "50+\nPrograms",

              maxLines: 2,

              overflow:
              TextOverflow
                  .ellipsis,

              style: TextStyle(

                fontSize: 18,

                fontWeight:
                FontWeight.bold,
              ),
            ),
          ),

          Container(

            width:
            double.infinity,

            padding:
            const EdgeInsets.symmetric(
              vertical: 8,
            ),

            decoration:
            BoxDecoration(

              color:
              Colors.orange
                  .shade50,

              borderRadius:
              BorderRadius.circular(
                10,
              ),
            ),

            child:
            const Center(

              child: Text(

                "Explore",

                style: TextStyle(

                  fontSize: 14,

                  color:
                  Colors.orange,

                  fontWeight:
                  FontWeight.bold,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}