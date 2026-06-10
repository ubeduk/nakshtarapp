import 'package:flutter/material.dart';

class CompetitionFundingSection extends StatelessWidget {
  const CompetitionFundingSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(
        horizontal: 24,
      ),
      child: Row(
        children: [

          Expanded(
            child: _CompetitionCard(),
          ),

          const SizedBox(width: 16),

          Expanded(
            child: _FundingCard(),
          ),
        ],
      ),
    );
  }
}
class _CompetitionCard extends StatelessWidget {
  const _CompetitionCard();

  @override
  Widget build(BuildContext context) {

    return Container(
      height: 260,

      padding: const EdgeInsets.all(20),

      decoration: BoxDecoration(
        borderRadius:
        BorderRadius.circular(28),

        gradient: const LinearGradient(
          begin: Alignment.topLeft,
          end: Alignment.bottomRight,
          colors: [
            Color(0xff8B5CF6),
            Color(0xff6366F1),
          ],
        ),

        boxShadow: [
          BoxShadow(
            color:
            const Color(0xff8B5CF6)
                .withOpacity(.25),
            blurRadius: 25,
            offset: const Offset(
              0,
              12,
            ),
          ),
        ],
      ),

      child: Column(
        crossAxisAlignment:
        CrossAxisAlignment.start,
        children: [

          Container(
            width: 52,
            height: 52,

            decoration:
            BoxDecoration(
              color: Colors.white24,
              borderRadius:
              BorderRadius.circular(
                  16),
            ),

            child: const Icon(
              Icons.emoji_events,
              color: Colors.white,
              size: 28,
            ),
          ),

          const SizedBox(height: 20),

          const Text(
            "Upcoming\nCompetition",
            style: TextStyle(
              color: Colors.white,
              fontSize: 22,
              height: 1.2,
              fontWeight:
              FontWeight.bold,
            ),
          ),

          const SizedBox(height: 12),

          const Text(
            "National Drone Championship",
            maxLines: 2,
            overflow:
            TextOverflow.ellipsis,
            style: TextStyle(
              color: Colors.white70,
              fontSize: 15,
            ),
          ),

          const Spacer(),

          Container(
            padding:
            const EdgeInsets.symmetric(
              horizontal: 12,
              vertical: 8,
            ),
            decoration:
            BoxDecoration(
              color: Colors.white24,
              borderRadius:
              BorderRadius.circular(
                  30),
            ),
            child: const Row(
              mainAxisSize:
              MainAxisSize.min,
              children: [

                Icon(
                  Icons.schedule,
                  size: 16,
                  color: Colors.white,
                ),

                SizedBox(width: 6),

                Text(
                  "14 Days Left",
                  style: TextStyle(
                    color: Colors.white,
                    fontWeight:
                    FontWeight.w600,
                  ),
                ),
              ],
            ),
          ),

          const SizedBox(height: 16),

          Container(
            height: 46,
            decoration:
            BoxDecoration(
              color: Colors.white,
              borderRadius:
              BorderRadius.circular(
                  14),
            ),
            child: const Center(
              child: Text(
                "Register Now",
                style: TextStyle(
                  color:
                  Color(0xff6366F1),
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
class _FundingCard extends StatelessWidget {
  const _FundingCard();

  @override
  Widget build(BuildContext context) {

    return Container(
      height: 260,

      padding: const EdgeInsets.all(20),

      decoration: BoxDecoration(
        borderRadius:
        BorderRadius.circular(28),

        gradient: const LinearGradient(
          begin: Alignment.topLeft,
          end: Alignment.bottomRight,
          colors: [
            Color(0xff10B981),
            Color(0xff34D399),
          ],
        ),

        boxShadow: [
          BoxShadow(
            color:
            const Color(0xff10B981)
                .withOpacity(.25),
            blurRadius: 25,
            offset: const Offset(
              0,
              12,
            ),
          ),
        ],
      ),

      child: Column(
        crossAxisAlignment:
        CrossAxisAlignment.start,
        children: [

          Container(
            width: 52,
            height: 52,

            decoration:
            BoxDecoration(
              color: Colors.white24,
              borderRadius:
              BorderRadius.circular(
                  16),
            ),

            child: const Icon(
              Icons.currency_rupee,
              color: Colors.white,
              size: 28,
            ),
          ),

          const SizedBox(height: 20),

          const Text(
            "Latest\nFunding Alert",
            style: TextStyle(
              color: Colors.white,
              fontSize: 22,
              height: 1.2,
              fontWeight:
              FontWeight.bold,
            ),
          ),

          const SizedBox(height: 12),

          const Text(
            "Startup India Seed Fund",
            maxLines: 2,
            overflow:
            TextOverflow.ellipsis,
            style: TextStyle(
              color: Colors.white70,
              fontSize: 15,
            ),
          ),

          const Spacer(),

          const Text(
            "₹25 Lakhs",
            style: TextStyle(
              color: Colors.white,
              fontWeight:
              FontWeight.bold,
              fontSize: 28,
            ),
          ),

          const SizedBox(height: 16),

          Container(
            height: 46,
            decoration:
            BoxDecoration(
              color: Colors.white,
              borderRadius:
              BorderRadius.circular(
                  14),
            ),
            child: const Center(
              child: Text(
                "Apply Now",
                style: TextStyle(
                  color:
                  Color(0xff10B981),
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