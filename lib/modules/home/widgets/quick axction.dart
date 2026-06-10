import 'package:flutter/material.dart';

class QuickActionsSection extends StatelessWidget {
  const QuickActionsSection({super.key});

  @override
  Widget build(BuildContext context) {
    final actions = [

      {
        "title": "Universities",
        "icon": Icons.school_rounded,
        "color": const Color(0xff2563EB),
        "bg": const Color(0xffEEF4FF),
      },

      {
        "title": "Incubation",
        "icon": Icons.apartment_rounded,
        "color": const Color(0xff14B8A6),
        "bg": const Color(0xffECFDF5),
      },

      {
        "title": "Competitions",
        "icon": Icons.emoji_events_rounded,
        "color": const Color(0xff7C3AED),
        "bg": const Color(0xffF5F3FF),
      },

      {
        "title": "Funding",
        "icon": Icons.currency_rupee_rounded,
        "color": const Color(0xffF97316),
        "bg": const Color(0xffFFF7ED),
      },

      {
        "title": "Government",
        "icon": Icons.account_balance_rounded,
        "color": const Color(0xffEC4899),
        "bg": const Color(0xffFDF2F8),
      },

      {
        "title": "News",
        "icon": Icons.feed_rounded,
        "color": const Color(0xff3B82F6),
        "bg": const Color(0xffEFF6FF),
      },

      {
        "title": "AI Assistant",
        "icon": Icons.smart_toy_rounded,
        "color": const Color(0xff7C3AED),
        "bg": const Color(0xffF5F3FF),
      },

      {
        "title": "Certificates",
        "icon": Icons.workspace_premium_rounded,
        "color": const Color(0xffF59E0B),
        "bg": const Color(0xffFFFBEB),
      },
    ];

    return Column(
      children: [

        Padding(
          padding: const EdgeInsets.symmetric(
            horizontal: 24,
          ),
          child: Row(
            children: [

              const Text(
                "Quick Actions",
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
          height: 140,
          child: ListView.separated(
            padding: const EdgeInsets.symmetric(
              horizontal: 24,
            ),
            scrollDirection: Axis.horizontal,

            itemBuilder: (_, index) {

              final item =
              actions[index];

              return _QuickActionCard(
                title:
                item["title"] as String,

                icon:
                item["icon"] as IconData,

                color:
                item["color"] as Color,

                bg:
                item["bg"] as Color,
              );
            },

            separatorBuilder:
                (_, __) =>
            const SizedBox(
              width: 14,
            ),

            itemCount:
            actions.length,
          ),
        ),
      ],
    );
  }
}
class _QuickActionCard
    extends StatelessWidget {

  final String title;
  final IconData icon;

  final Color color;
  final Color bg;

  const _QuickActionCard({
    required this.title,
    required this.icon,
    required this.color,
    required this.bg,
  });

  @override
  Widget build(BuildContext context) {

    return InkWell(
      borderRadius:
      BorderRadius.circular(
          24),
      onTap: () {},

      child: Container(
        width: 120,

        decoration: BoxDecoration(
          color: Colors.white,

          borderRadius:
          BorderRadius.circular(
              24),

          border: Border.all(
            color: const Color(
              0xffE5E7EB,
            ),
          ),

          boxShadow: [
            BoxShadow(
              color: Colors.black
                  .withOpacity(.03),
              blurRadius: 20,
              offset:
              const Offset(
                0,
                10,
              ),
            ),
          ],
        ),

        child: Column(
          mainAxisAlignment:
          MainAxisAlignment.center,
          children: [

            Container(
              width: 62,
              height: 62,

              decoration:
              BoxDecoration(
                shape:
                BoxShape.circle,
                color: bg,
              ),

              child: Icon(
                icon,
                color: color,
                size: 32,
              ),
            ),

            const SizedBox(
              height: 14,
            ),

            Padding(
              padding:
              const EdgeInsets
                  .symmetric(
                horizontal: 8,
              ),
              child: Text(
                title,
                textAlign:
                TextAlign.center,
                maxLines: 2,

                style:
                const TextStyle(
                  fontSize: 15,
                  fontWeight:
                  FontWeight.w600,
                  color:
                  Color(
                    0xff111827,
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}