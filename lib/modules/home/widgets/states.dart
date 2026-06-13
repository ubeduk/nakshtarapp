import 'package:flutter/material.dart';

class StatsSection extends StatelessWidget {
  const StatsSection({super.key});

  @override
  Widget build(BuildContext context) {

    final stats = [

      (
      Icons.school_rounded,
      "120+",
      "Universities",
      const Color(0xff2563EB),
      ),

      (
      Icons.currency_rupee,
      "50+",
      "Funding",
      const Color(0xff22C55E),
      ),

      (
      Icons.emoji_events,
      "25+",
      "Competitions",
      const Color(0xff9333EA),
      ),

      (
      Icons.apartment,
      "100+",
      "Incubators",
      const Color(0xffF97316),
      ),
    ];

    return Padding(
      padding: const EdgeInsets.symmetric(
        horizontal: 20,
        vertical: 20,
      ),

      child: GridView.builder(

        shrinkWrap: true,

        physics:
        const NeverScrollableScrollPhysics(),

        itemCount: stats.length,

        gridDelegate:
        const SliverGridDelegateWithFixedCrossAxisCount(

          crossAxisCount: 2,

          crossAxisSpacing: 14,

          mainAxisSpacing: 14,

          childAspectRatio: 1.1,
        ),

        itemBuilder: (context, index) {

          final item = stats[index];

          return _StatCard(

            icon: item.$1,

            value: item.$2,

            title: item.$3,

            color: item.$4,
          );
        },
      ),
    );
  }
}

class _StatCard extends StatelessWidget {

  final IconData icon;
  final String value;
  final String title;
  final Color color;

  const _StatCard({

    required this.icon,

    required this.value,

    required this.title,

    required this.color,
  });

  @override
  Widget build(BuildContext context) {

    return Container(

      padding: const EdgeInsets.all(18),

      decoration: BoxDecoration(

        color: Colors.white,

        borderRadius:
        BorderRadius.circular(24),

        border: Border.all(
          color: const Color(
            0xffE5E7EB,
          ),
        ),

        boxShadow: [

          BoxShadow(

            color:
            color.withOpacity(.08),

            blurRadius: 20,

            offset:
            const Offset(0, 8),
          ),
        ],
      ),

      child: Column(

        mainAxisAlignment:
        MainAxisAlignment.center,

        children: [

          Container(

            width: 54,
            height: 54,

            decoration:
            BoxDecoration(

              shape:
              BoxShape.circle,

              color:
              color.withOpacity(.12),
            ),

            child: Icon(

              icon,

              color: color,

              size: 25,
            ),
          ),

          const SizedBox(
            height: 14,
          ),

          Text(

            value,

            style:
            const TextStyle(

              fontSize: 20,

              fontWeight:
              FontWeight.w800,

              color:
              Color(0xff111827),
            ),
          ),

          const SizedBox(
            height: 4,
          ),

          Text(

            title,

            textAlign:
            TextAlign.center,

            style:
            const TextStyle(

              fontSize: 13,

              color:
              Color(0xff64748B),

              fontWeight:
              FontWeight.w500,
            ),
          ),
        ],
      ),
    );
  }
}

