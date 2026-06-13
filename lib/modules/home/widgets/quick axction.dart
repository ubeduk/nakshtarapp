import 'package:flutter/material.dart';

class QuickActionsSection extends StatefulWidget {
  const QuickActionsSection({super.key});

  @override
  State<QuickActionsSection> createState() =>
      _QuickActionsSectionState();
}

class _QuickActionsSectionState
    extends State<QuickActionsSection> {

  bool showAll = false;

  @override
  Widget build(BuildContext context) {

    final actions = [

      _ActionData(
        title: "Universities",
        icon: Icons.school_rounded,
        color: const Color(0xff2563EB),
        bg: const Color(0xffEEF4FF),
        onTap: () {},
      ),

      _ActionData(
        title: "Incubation",
        icon: Icons.apartment_rounded,
        color: const Color(0xff14B8A6),
        bg: const Color(0xffECFDF5),
        onTap: () {},
      ),

      _ActionData(
        title: "Competitions",
        icon: Icons.emoji_events_rounded,
        color: const Color(0xff7C3AED),
        bg: const Color(0xffF5F3FF),
        onTap: () {},
      ),

      _ActionData(
        title: "Funding",
        icon: Icons.currency_rupee_rounded,
        color: const Color(0xffF97316),
        bg: const Color(0xffFFF7ED),
        onTap: () {},
      ),

      _ActionData(
        title: "Government",
        icon: Icons.account_balance_rounded,
        color: const Color(0xffEC4899),
        bg: const Color(0xffFDF2F8),
        onTap: () {},
      ),

      _ActionData(
        title: "News",
        icon: Icons.feed_rounded,
        color: const Color(0xff3B82F6),
        bg: const Color(0xffEFF6FF),
        onTap: () {},
      ),

      _ActionData(
        title: "AI Assistant",
        icon: Icons.smart_toy_rounded,
        color: const Color(0xff8B5CF6),
        bg: const Color(0xffF5F3FF),
        onTap: () {},
      ),

      _ActionData(
        title: "Certificates",
        icon: Icons.workspace_premium_rounded,
        color: const Color(0xffF59E0B),
        bg: const Color(0xffFFFBEB),
        onTap: () {},
      ),
    ];

    final visibleActions =
    showAll
        ? actions
        : actions.take(4).toList();

    return LayoutBuilder(

      builder: (context, constraints) {

        int crossAxisCount = 2;

        if (constraints.maxWidth > 1200) {
          crossAxisCount = 6;
        } else if (constraints.maxWidth > 900) {
          crossAxisCount = 5;
        } else if (constraints.maxWidth > 700) {
          crossAxisCount = 4;
        } else if (constraints.maxWidth > 500) {
          crossAxisCount = 3;
        }

        return Padding(

          padding: const EdgeInsets.all(20),

          child: Column(

            crossAxisAlignment:
            CrossAxisAlignment.start,

            children: [

              Row(

                children: [

                  const Text(

                    "Quick Actions",

                    style: TextStyle(

                      fontSize: 24,

                      fontWeight:
                      FontWeight.w800,
                    ),
                  ),

                  const Spacer(),

                  TextButton(

                    onPressed: () {

                      setState(() {

                        showAll =
                        !showAll;
                      });
                    },

                    child: Text(

                      showAll
                          ? "Show Less"
                          : "View All",
                    ),
                  ),
                ],
              ),

              const SizedBox(
                height: 16,
              ),

              AnimatedSize(

                duration:
                const Duration(
                  milliseconds: 300,
                ),

                curve:
                Curves.easeInOut,

                child: GridView.builder(

                  shrinkWrap: true,

                  physics:
                  const NeverScrollableScrollPhysics(),

                  itemCount:
                  visibleActions.length +
                      1,

                  gridDelegate:
                  SliverGridDelegateWithFixedCrossAxisCount(

                    crossAxisCount:
                    crossAxisCount,

                    crossAxisSpacing:
                    16,

                    mainAxisSpacing:
                    16,

                    childAspectRatio:
                    1.15,
                  ),

                  itemBuilder:
                      (context, index) {

                    if (index ==
                        visibleActions
                            .length) {

                      return GestureDetector(

                        onTap: () {

                          setState(() {

                            showAll =
                            !showAll;
                          });
                        },

                        child: Container(

                          decoration:
                          BoxDecoration(

                            color:
                            const Color(
                              0xffF8FAFC,
                            ),

                            borderRadius:
                            BorderRadius.circular(
                              24,
                            ),

                            border:
                            Border.all(

                              color:
                              const Color(
                                0xffE2E8F0,
                              ),
                            ),
                          ),

                          child: Column(

                            mainAxisAlignment:
                            MainAxisAlignment.center,

                            children: [

                              Icon(

                                showAll
                                    ? Icons.expand_less
                                    : Icons.apps,

                                size: 34,

                                color:
                                const Color(
                                  0xff2563EB,
                                ),
                              ),

                              const SizedBox(
                                height: 12,
                              ),

                              Text(

                                showAll
                                    ? "Show Less"
                                    : "View All",

                                style:
                                const TextStyle(

                                  fontSize:
                                  14,

                                  fontWeight:
                                  FontWeight.w700,

                                  color:
                                  Color(
                                    0xff2563EB,
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      );
                    }

                    return _QuickActionCard(
                      item:
                      visibleActions[
                      index],
                    );
                  },
                ),
              ),
            ],
          ),
        );
      },
    );
  }
}

class _ActionData {

  final String title;
  final IconData icon;
  final Color color;
  final Color bg;
  final VoidCallback onTap;

  _ActionData({
    required this.title,
    required this.icon,
    required this.color,
    required this.bg,
    required this.onTap,
  });
}

class _QuickActionCard
    extends StatefulWidget {

  final _ActionData item;

  const _QuickActionCard({
    required this.item,
  });

  @override
  State<_QuickActionCard> createState() =>
      _QuickActionCardState();
}

class _QuickActionCardState
    extends State<_QuickActionCard> {

  bool pressed = false;

  @override
  Widget build(BuildContext context) {

    return GestureDetector(

      onTapDown: (_) {

        setState(() {

          pressed = true;
        });
      },

      onTapUp: (_) {

        setState(() {

          pressed = false;
        });

        widget.item.onTap();
      },

      onTapCancel: () {

        setState(() {

          pressed = false;
        });
      },

      child: AnimatedScale(

        duration:
        const Duration(
          milliseconds: 150,
        ),

        scale:
        pressed ? .95 : 1,

        child: Container(

          decoration:
          BoxDecoration(

            color: Colors.white,

            borderRadius:
            BorderRadius.circular(
              24,
            ),

            border: Border.all(

              color:
              widget.item.color
                  .withOpacity(.15),
            ),

            boxShadow: [

              BoxShadow(

                color:
                widget.item.color
                    .withOpacity(.08),

                blurRadius: 20,

                offset:
                const Offset(
                  0,
                  8,
                ),
              ),
            ],
          ),

          child: Column(

            mainAxisAlignment:
            MainAxisAlignment.center,

            children: [

              Container(

                width: 58,
                height: 58,

                decoration:
                BoxDecoration(

                  shape:
                  BoxShape.circle,

                  color:
                  widget.item.bg,
                ),

                child: Icon(

                  widget.item.icon,

                  color:
                  widget.item.color,

                  size: 30,
                ),
              ),

              const SizedBox(
                height: 12,
              ),

              Padding(

                padding:
                const EdgeInsets.symmetric(
                  horizontal: 8,
                ),

                child: Text(

                  widget.item.title,

                  textAlign:
                  TextAlign.center,

                  maxLines: 2,

                  overflow:
                  TextOverflow.ellipsis,

                  style:
                  const TextStyle(

                    fontSize: 14,

                    fontWeight:
                    FontWeight.w700,
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}