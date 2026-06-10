import 'dart:async';

import 'package:confetti/confetti.dart';
import 'package:flutter/material.dart';

import 'competitions_controller.dart';

class CompetitionDetailScreen
    extends StatefulWidget {

  final CompetitionData competition;

  const CompetitionDetailScreen({
    super.key,
    required this.competition,
  });

  @override
  State<CompetitionDetailScreen>
  createState() =>
      _CompetitionDetailScreenState();
}

class _CompetitionDetailScreenState
    extends State<
        CompetitionDetailScreen> {

  late Duration remaining;

  Timer? timer;

  late ConfettiController
  confettiController;

  @override
  void initState() {
    super.initState();

    confettiController =
        ConfettiController(
          duration:
          const Duration(seconds: 3),
        );

    calculateTime();

    timer = Timer.periodic(
      const Duration(seconds: 1),
          (_) => calculateTime(),
    );
  }

  void calculateTime() {

    final difference =
    widget.competition.eventDate
        .difference(
      DateTime.now(),
    );

    setState(() {
      remaining = difference;
    });
  }

  @override
  void dispose() {

    timer?.cancel();

    confettiController.dispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {

    return Scaffold(

      body: Stack(
        children: [

          CustomScrollView(
            slivers: [

              SliverAppBar(
                expandedHeight: 300,
                pinned: true,

                flexibleSpace:
                FlexibleSpaceBar(
                  title: Text(
                    widget.competition
                        .title,
                  ),

                  background: Hero(
                    tag: widget
                        .competition.id,
                    child:
                    Image.network(
                      widget
                          .competition
                          .image,
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
              ),

              SliverToBoxAdapter(
                child: Padding(
                  padding:
                  const EdgeInsets
                      .all(20),
                  child: Column(
                    crossAxisAlignment:
                    CrossAxisAlignment
                        .start,
                    children: [

                      Text(
                        widget.competition
                            .description,
                        style:
                        const TextStyle(
                          fontSize: 16,
                        ),
                      ),

                      const SizedBox(
                          height: 25),

                      const Text(
                        "Prize Pool",
                        style:
                        TextStyle(
                          fontSize: 22,
                          fontWeight:
                          FontWeight
                              .bold,
                        ),
                      ),

                      const SizedBox(
                          height: 10),

                      Container(
                        width:
                        double.infinity,
                        padding:
                        const EdgeInsets
                            .all(20),
                        decoration:
                        BoxDecoration(
                          color: Colors
                              .amber
                              .shade100,
                          borderRadius:
                          BorderRadius
                              .circular(
                              20),
                        ),
                        child: Text(
                          widget
                              .competition
                              .prize,
                          style:
                          const TextStyle(
                            fontSize:
                            28,
                            fontWeight:
                            FontWeight
                                .bold,
                          ),
                        ),
                      ),

                      const SizedBox(
                          height: 25),

                      const Text(
                        "Countdown",
                        style:
                        TextStyle(
                          fontSize: 22,
                          fontWeight:
                          FontWeight
                              .bold,
                        ),
                      ),

                      const SizedBox(
                          height: 15),

                      Container(
                        padding:
                        const EdgeInsets
                            .all(18),
                        decoration:
                        BoxDecoration(
                          color: Colors
                              .blue
                              .shade50,
                          borderRadius:
                          BorderRadius
                              .circular(
                              20),
                        ),
                        child: Text(
                          "${remaining.inDays} Days",
                          style:
                          const TextStyle(
                            fontSize:
                            24,
                            fontWeight:
                            FontWeight
                                .bold,
                          ),
                        ),
                      ),

                      const SizedBox(
                          height: 25),

                      const Text(
                        "Event Timeline",
                        style:
                        TextStyle(
                          fontSize: 22,
                          fontWeight:
                          FontWeight
                              .bold,
                        ),
                      ),

                      const SizedBox(
                          height: 15),

                      const _Timeline(
                        title:
                        "Registration Open",
                      ),

                      const _Timeline(
                        title:
                        "Idea Submission",
                      ),

                      const _Timeline(
                        title:
                        "Prototype Demo",
                      ),

                      const _Timeline(
                        title:
                        "Final Competition",
                      ),

                      const _Timeline(
                        title:
                        "Winner Announcement",
                      ),

                      const SizedBox(
                          height: 30),

                      SizedBox(
                        width:
                        double.infinity,
                        height: 55,
                        child:
                        ElevatedButton(
                          onPressed: () {

                            confettiController
                                .play();

                            ScaffoldMessenger
                                .of(
                                context)
                                .showSnackBar(
                              const SnackBar(
                                content: Text(
                                  "Successfully Registered!",
                                ),
                              ),
                            );
                          },
                          child:
                          const Text(
                            "Register Now",
                          ),
                        ),
                      ),

                      const SizedBox(
                          height: 40),
                    ],
                  ),
                ),
              ),
            ],
          ),

          Align(
            alignment:
            Alignment.topCenter,
            child: ConfettiWidget(
              confettiController:
              confettiController,
              blastDirectionality:
              BlastDirectionality
                  .explosive,
            ),
          ),
        ],
      ),
    );
  }
}

class _Timeline
    extends StatelessWidget {

  final String title;

  const _Timeline({
    required this.title,
  });

  @override
  Widget build(BuildContext context) {

    return Row(
      children: [

        Column(
          children: [

            Container(
              width: 14,
              height: 14,
              decoration:
              const BoxDecoration(
                shape:
                BoxShape.circle,
                color: Colors.blue,
              ),
            ),

            Container(
              width: 2,
              height: 40,
              color: Colors.blue,
            ),
          ],
        ),

        const SizedBox(width: 12),

        Text(
          title,
          style:
          const TextStyle(
            fontSize: 16,
          ),
        ),
      ],
    );
  }
}