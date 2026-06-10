import 'package:flutter/material.dart';

import '../../data/models/models.dart';

class UniversityDetailScreen
    extends StatelessWidget {

  final UniversityModel university;

  const UniversityDetailScreen({
    super.key,
    required this.university,
  });

  @override
  Widget build(BuildContext context) {

    return DefaultTabController(
      length: 5,
      child: Scaffold(

        body: CustomScrollView(
          slivers: [

            SliverAppBar(
              expandedHeight: 280,
              pinned: true,

              flexibleSpace:
              FlexibleSpaceBar(
                title: Text(
                  university.name,
                ),

                background: Hero(
                  tag: university.id,
                  child: Image.network(
                    university.image,
                    fit: BoxFit.cover,
                  ),
                ),
              ),
            ),

            SliverToBoxAdapter(
              child: Column(
                children: [

                  const TabBar(
                    isScrollable: true,
                    tabs: [

                      Tab(
                          text:
                          "Overview"),

                      Tab(
                          text:
                          "Courses"),

                      Tab(
                          text:
                          "Labs"),

                      Tab(
                          text:
                          "Placements"),

                      Tab(
                          text:
                          "Projects"),
                    ],
                  ),

                  SizedBox(
                    height: 500,
                    child: TabBarView(
                      children: [

                        _Section(
                          title:
                          university
                              .description,
                        ),

                        const _Section(
                          title:
                          "Drone Engineering Program",
                        ),

                        const _Section(
                          title:
                          "AI Drone Research Labs",
                        ),

                        const _Section(
                          title:
                          "Top Placements Available",
                        ),

                        const _Section(
                          title:
                          "Industry Drone Projects",
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class _Section
    extends StatelessWidget {

  final String title;

  const _Section({
    required this.title,
  });

  @override
  Widget build(BuildContext context) {

    return Padding(
      padding:
      const EdgeInsets.all(20),
      child: Text(
        title,
        style:
        const TextStyle(
          fontSize: 16,
        ),
      ),
    );
  }
}