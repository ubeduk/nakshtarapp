import 'package:flutter/material.dart';

import 'incubation_controller.dart';

class IncubationDetailScreen
    extends StatelessWidget {

  final IncubationCenter center;

  const IncubationDetailScreen({
    super.key,
    required this.center,
  });

  @override
  Widget build(BuildContext context) {

    return Scaffold(

      body: CustomScrollView(
        slivers: [

          SliverAppBar(
            expandedHeight: 280,
            pinned: true,

            flexibleSpace:
            FlexibleSpaceBar(
              title:
              Text(center.name),

              background: Hero(
                tag: center.id,
                child: Image.network(
                  center.image,
                  fit: BoxFit.cover,
                ),
              ),
            ),
          ),

          SliverToBoxAdapter(
            child: Padding(
              padding:
              const EdgeInsets.all(
                  20),
              child: Column(
                crossAxisAlignment:
                CrossAxisAlignment
                    .start,
                children: [

                  Text(
                    center.description,
                    style:
                    const TextStyle(
                      fontSize: 16,
                    ),
                  ),

                  const SizedBox(
                      height: 25),

                  const Text(
                    "Benefits",
                    style:
                    TextStyle(
                      fontSize: 22,
                      fontWeight:
                      FontWeight.bold,
                    ),
                  ),

                  const SizedBox(
                      height: 15),

                  _BenefitTile(
                    icon:
                    Icons.payments,
                    title:
                    "Funding Support",
                  ),

                  _BenefitTile(
                    icon:
                    Icons.people,
                    title:
                    "Mentorship",
                  ),

                  _BenefitTile(
                    icon:
                    Icons.business,
                    title:
                    "Business Network",
                  ),

                  _BenefitTile(
                    icon:
                    Icons.school,
                    title:
                    "Training Programs",
                  ),

                  const SizedBox(
                      height: 25),

                  const Text(
                    "Startup Growth Timeline",
                    style:
                    TextStyle(
                      fontSize: 22,
                      fontWeight:
                      FontWeight.bold,
                    ),
                  ),

                  const SizedBox(
                      height: 15),

                  _TimelineStep(
                    title:
                    "Application",
                  ),

                  _TimelineStep(
                    title:
                    "Screening",
                  ),

                  _TimelineStep(
                    title:
                    "Mentorship",
                  ),

                  _TimelineStep(
                    title:
                    "Funding",
                  ),

                  _TimelineStep(
                    title:
                    "Growth & Scaling",
                  ),

                  const SizedBox(
                      height: 30),

                  SizedBox(
                    width:
                    double.infinity,
                    height: 55,
                    child:
                    ElevatedButton(
                      onPressed:
                          () {},

                      child: const Text(
                        "Apply Now",
                      ),
                    ),
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

class _BenefitTile
    extends StatelessWidget {

  final IconData icon;

  final String title;

  const _BenefitTile({
    required this.icon,
    required this.title,
  });

  @override
  Widget build(BuildContext context) {

    return Card(
      margin:
      const EdgeInsets.only(
          bottom: 12),
      child: ListTile(
        leading: Icon(icon),
        title: Text(title),
      ),
    );
  }
}

class _TimelineStep
    extends StatelessWidget {

  final String title;

  const _TimelineStep({
    required this.title,
  });

  @override
  Widget build(BuildContext context) {

    return Row(
      crossAxisAlignment:
      CrossAxisAlignment.start,
      children: [

        Column(
          children: [

            Container(
              width: 16,
              height: 16,
              decoration:
              const BoxDecoration(
                color: Colors.blue,
                shape:
                BoxShape.circle,
              ),
            ),

            Container(
              width: 2,
              height: 50,
              color: Colors.blue,
            ),
          ],
        ),

        const SizedBox(width: 15),

        Padding(
          padding:
          const EdgeInsets.only(
              top: 2),
          child: Text(
            title,
            style:
            const TextStyle(
              fontSize: 16,
            ),
          ),
        ),
      ],
    );
  }
}