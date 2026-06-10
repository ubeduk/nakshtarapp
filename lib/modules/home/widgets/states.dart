import 'package:flutter/material.dart';

class StatsSection extends StatelessWidget {
  const StatsSection({super.key});

  @override
  Widget build(BuildContext context) {

    return Container(
      margin: const EdgeInsets.symmetric(
        horizontal: 24,
        vertical: 20,
      ),

      padding: const EdgeInsets.symmetric(
        vertical: 26,
      ),

      decoration: BoxDecoration(
        color: Colors.white,

        borderRadius:
        BorderRadius.circular(30),

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
            blurRadius: 30,
            offset: const Offset(
              0,
              10,
            ),
          ),
        ],
      ),

      child: Row(
        children: const [

          Expanded(
            child: _StatItem(
              icon: Icons.school_rounded,
              iconColor:
              Color(0xff2563EB),
              bgColor:
              Color(0xffEEF4FF),
              value: "120+",
              title: "Universities",
            ),
          ),

          _Divider(),

          Expanded(
            child: _StatItem(
              icon:
              Icons.currency_rupee,
              iconColor:
              Color(0xff22C55E),
              bgColor:
              Color(0xffECFDF3),
              value: "50+",
              title:
              "Funding Programs",
            ),
          ),

          _Divider(),

          Expanded(
            child: _StatItem(
              icon:
              Icons.emoji_events,
              iconColor:
              Color(0xff9333EA),
              bgColor:
              Color(0xffF5F3FF),
              value: "25+",
              title:
              "Competitions",
            ),
          ),

          _Divider(),

          Expanded(
            child: _StatItem(
              icon:
              Icons.apartment,
              iconColor:
              Color(0xffF97316),
              bgColor:
              Color(0xffFFF7ED),
              value: "100+",
              title:
              "Incubators",
            ),
          ),
        ],
      ),
    );
  }

}
class _Divider extends StatelessWidget {
  const _Divider();

  @override
  Widget build(BuildContext context) {

    return Container(
      width: 1,
      height: 90,
      color: const Color(
        0xffE5E7EB,
      ),
    );
  }
}
class _StatItem extends StatelessWidget {

  final IconData icon;
  final Color iconColor;
  final Color bgColor;

  final String value;
  final String title;

  const _StatItem({
    required this.icon,
    required this.iconColor,
    required this.bgColor,
    required this.value,
    required this.title,
  });

  @override
  Widget build(BuildContext context) {

    return Column(
      children: [

        Container(
          width: 58,
          height: 58,

          decoration:
          BoxDecoration(
            shape:
            BoxShape.circle,
            color: bgColor,
          ),

          child: Icon(
            icon,
            size: 30,
            color: iconColor,
          ),
        ),

        const SizedBox(
          height: 16,
        ),

        Text(
          value,
          style: const TextStyle(
            fontSize: 26,
            fontWeight:
            FontWeight.w800,
            color:
            Color(0xff111827),
          ),
        ),

        const SizedBox(
          height: 6,
        ),

        Text(
          title,
          textAlign:
          TextAlign.center,
          style: const TextStyle(
            fontSize: 15,
            color:
            Color(0xff64748B),
            fontWeight:
            FontWeight.w500,
          ),
        ),
      ],
    );
  }
}