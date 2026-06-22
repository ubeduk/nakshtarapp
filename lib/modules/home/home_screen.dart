import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;

    return Scaffold(
      backgroundColor: const Color(0xffF5F7FA),
      // body: SingleChildScrollView(
      //   child: Column(
      //     children: [
      //
      //       /// HEADER
      //       Container(
      //         padding: const EdgeInsets.all(18),
      //         decoration: const BoxDecoration(
      //           gradient: LinearGradient(
      //             colors: [
      //               Color(0xff082B7A),
      //               Color(0xff0A4DB3),
      //             ],
      //             begin: Alignment.topLeft,
      //             end: Alignment.bottomRight,
      //           ),
      //           borderRadius: BorderRadius.vertical(
      //             bottom: Radius.circular(30),
      //           ),
      //         ),
      //         child: SafeArea(
      //           child: Column(
      //             children: [
      //
      //               /// TOP BAR
      //               Row(
      //                 children: [
      //
      //                   Expanded(
      //                     child: Column(
      //                       crossAxisAlignment:
      //                       CrossAxisAlignment.start,
      //                       children: const [
      //
      //                         Text(
      //                           "Good Morning 👋",
      //                           style: TextStyle(
      //                             color: Colors.white70,
      //                             fontSize: 12,
      //                           ),
      //                         ),
      //
      //                         SizedBox(height: 5),
      //
      //                         Text(
      //                           "Ubed",
      //                           style: TextStyle(
      //                             color: Colors.white,
      //                             fontSize: 24,
      //                             fontWeight: FontWeight.bold,
      //                           ),
      //                         ),
      //
      //                         SizedBox(height: 4),
      //
      //                         Row(
      //                           children: [
      //                             Icon(
      //                               Icons.location_on,
      //                               size: 14,
      //                               color: Colors.white70,
      //                             ),
      //                             SizedBox(width: 4),
      //                             Text(
      //                               "New Delhi, India",
      //                               style: TextStyle(
      //                                 color: Colors.white70,
      //                                 fontSize: 12,
      //                               ),
      //                             ),
      //                           ],
      //                         )
      //                       ],
      //                     ),
      //                   ),
      //
      //                   IconButton(
      //                     onPressed: () {},
      //                     icon: const Icon(
      //                       Icons.notifications_none,
      //                       color: Colors.white,
      //                     ),
      //                   ),
      //
      //                   const CircleAvatar(
      //                     radius: 24,
      //                     backgroundImage: NetworkImage(
      //                       "https://i.pravatar.cc/150",
      //                     ),
      //                   )
      //                 ],
      //               ),
      //
      //               const SizedBox(height: 20),
      //
      //               /// SEARCH
      //               Container(
      //                 height: 55,
      //                 padding:
      //                 const EdgeInsets.symmetric(horizontal: 15),
      //                 decoration: BoxDecoration(
      //                   color: Colors.white.withOpacity(.15),
      //                   borderRadius: BorderRadius.circular(15),
      //                 ),
      //                 child: const Row(
      //                   children: [
      //
      //                     Icon(
      //                       Icons.search,
      //                       color: Colors.white70,
      //                     ),
      //
      //                     SizedBox(width: 10),
      //
      //                     Expanded(
      //                       child: Text(
      //                         "Search funding, universities...",
      //                         style: TextStyle(
      //                           color: Colors.white70,
      //                         ),
      //                       ),
      //                     ),
      //                   ],
      //                 ),
      //               ),
      //
      //               const SizedBox(height: 18),
      //
      //               /// DRONE BANNER
      //               Container(
      //                 height: 150,
      //                 width: double.infinity,
      //                 decoration: BoxDecoration(
      //                   borderRadius:
      //                   BorderRadius.circular(20),
      //                   image: const DecorationImage(
      //                     image: NetworkImage(
      //                       "https://images.unsplash.com/photo-1473968512647-3e447244af8f",
      //                     ),
      //                     fit: BoxFit.cover,
      //                   ),
      //                 ),
      //                 child: Container(
      //                   padding: const EdgeInsets.all(20),
      //                   decoration: BoxDecoration(
      //                     borderRadius:
      //                     BorderRadius.circular(20),
      //                     gradient: LinearGradient(
      //                       colors: [
      //                         Colors.black.withOpacity(.5),
      //                         Colors.transparent,
      //                       ],
      //                     ),
      //                   ),
      //                   child: Column(
      //                     crossAxisAlignment:
      //                     CrossAxisAlignment.start,
      //                     children: [
      //
      //                       const Text(
      //                         "India Drone Mission",
      //                         style: TextStyle(
      //                           color: Colors.white,
      //                           fontSize: 22,
      //                           fontWeight: FontWeight.bold,
      //                         ),
      //                       ),
      //
      //                       const Text(
      //                         "Empowering Innovation",
      //                         style: TextStyle(
      //                           color: Colors.white,
      //                         ),
      //                       ),
      //
      //                       const Spacer(),
      //
      //                       ElevatedButton(
      //                         onPressed: () {},
      //                         child:
      //                         const Text("Explore Now"),
      //                       )
      //                     ],
      //                   ),
      //                 ),
      //               ),
      //
      //               const SizedBox(height: 18),
      //
      //               /// STATS
      //               Row(
      //                 children: [
      //                   statCard("150+", "Universities"),
      //                   statCard("80+", "Programs"),
      //                   statCard("30+", "Competitions"),
      //                   statCard("120+", "Incubators"),
      //                 ],
      //               ),
      //             ],
      //           ),
      //         ),
      //       ),
      //
      //       const SizedBox(height: 20),
      //
      //       /// QUICK ACCESS
      //       sectionTitle("Quick Access"),
      //
      //       Padding(
      //         padding:
      //         const EdgeInsets.symmetric(horizontal: 15),
      //         child: GridView.count(
      //           shrinkWrap: true,
      //           physics:
      //           const NeverScrollableScrollPhysics(),
      //           crossAxisCount: 4,
      //           childAspectRatio: .9,
      //           children: const [
      //
      //             QuickItem(Icons.school, "Universities"),
      //             QuickItem(Icons.business, "Incubation"),
      //             QuickItem(Icons.emoji_events, "Competition"),
      //             QuickItem(Icons.currency_rupee, "Funding"),
      //
      //             QuickItem(Icons.account_balance, "Govt"),
      //             QuickItem(Icons.article, "News"),
      //             QuickItem(Icons.smart_toy, "AI"),
      //             QuickItem(Icons.badge, "Certificates"),
      //           ],
      //         ),
      //       ),
      //
      //       const SizedBox(height: 20),
      //
      //       /// AI TOOLS
      //       sectionTitle("AI Tools"),
      //
      //       Padding(
      //         padding:
      //         const EdgeInsets.symmetric(horizontal: 15),
      //         child: Column(
      //           children: [
      //
      //             aiCard(
      //               "Drone Assistant",
      //               "Ask anything about drones",
      //             ),
      //
      //             aiCard(
      //               "Startup Advisor",
      //               "Get AI advice for startups",
      //             ),
      //
      //             aiCard(
      //               "Career Planner",
      //               "Build your roadmap",
      //             ),
      //
      //             aiCard(
      //               "Pitch Deck Builder",
      //               "Create investor deck",
      //             ),
      //           ],
      //         ),
      //       ),
      //
      //       const SizedBox(height: 20),
      //
      //       /// TRENDING
      //       sectionTitle("Trending Now"),
      //
      //       Padding(
      //         padding: const EdgeInsets.all(15),
      //         child: Container(
      //           height: 180,
      //           width: double.infinity,
      //           decoration: BoxDecoration(
      //             borderRadius:
      //             BorderRadius.circular(20),
      //             image: const DecorationImage(
      //               image: NetworkImage(
      //                 "https://images.unsplash.com/photo-1473968512647-3e447244af8f",
      //               ),
      //               fit: BoxFit.cover,
      //             ),
      //           ),
      //         ),
      //       ),
      //     ],
      //   ),
      // ),
        body: CustomScrollView(
          physics: const BouncingScrollPhysics(),
          slivers: [

            SliverAppBar(
              expandedHeight: 340,
              pinned: true,
              stretch: true,
              elevation: 0,
              backgroundColor: const Color(0xff082B7A),

              flexibleSpace: LayoutBuilder(
                builder: (context, constraints) {

                  final height =
                      constraints.biggest.height;

                  final progress =
                  ((height - kToolbarHeight) / 280)
                      .clamp(0.0, 1.0);

                  return FlexibleSpaceBar(
                    collapseMode:
                    CollapseMode.parallax,

                    stretchModes: const [
                      StretchMode.zoomBackground,
                      StretchMode.blurBackground,
                    ],

                    title: AnimatedOpacity(
                      duration:
                      const Duration(milliseconds: 200),
                      opacity: progress < .4 ? 1 : 0,
                      child: const Text(
                        "DroneNakshatra",
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),

                    background: Container(
                      decoration: const BoxDecoration(
                        gradient: LinearGradient(
                          begin: Alignment.topLeft,
                          end: Alignment.bottomRight,
                          colors: [
                            Color(0xff082B7A),
                            Color(0xff0A4DB3),
                          ],
                        ),
                      ),

                      child: SafeArea(
                        child: Padding(
                          padding:
                          const EdgeInsets.all(18),
                          child: Column(
                            children: [

                              /// USER INFO
                              AnimatedOpacity(
                                duration:
                                const Duration(
                                  milliseconds: 300,
                                ),
                                opacity: progress,
                                child: Row(
                                  children: [

                                    Expanded(
                                      child: Column(
                                        crossAxisAlignment:
                                        CrossAxisAlignment
                                            .start,
                                        children: const [

                                          Text(
                                            "Good Morning 👋",
                                            style: TextStyle(
                                              color:
                                              Colors.white70,
                                            ),
                                          ),

                                          SizedBox(height: 6),

                                          Text(
                                            "Ubed",
                                            style: TextStyle(
                                              color:
                                              Colors.white,
                                              fontSize: 28,
                                              fontWeight:
                                              FontWeight.bold,
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),

                                    const CircleAvatar(
                                      radius: 24,
                                      backgroundImage:
                                      NetworkImage(
                                        "https://i.pravatar.cc/150",
                                      ),
                                    ),
                                  ],
                                ),
                              ),

                              const SizedBox(height: 20),

                              /// SEARCH
                              AnimatedContainer(
                                duration:
                                const Duration(
                                  milliseconds: 250,
                                ),

                                height: 55,

                                decoration:
                                BoxDecoration(
                                  color: Colors.white
                                      .withOpacity(.15),
                                  borderRadius:
                                  BorderRadius.circular(
                                      15),
                                ),

                                child: const Row(
                                  children: [

                                    SizedBox(width: 15),

                                    Icon(
                                      Icons.search,
                                      color:
                                      Colors.white70,
                                    ),

                                    SizedBox(width: 10),

                                    Text(
                                      "Search funding, universities...",
                                      style: TextStyle(
                                        color:
                                        Colors.white70,
                                      ),
                                    ),
                                  ],
                                ),
                              ),

                              const SizedBox(height: 18),

                              /// BANNER
                              Expanded(
                                child:
                                Transform.scale(
                                  scale:
                                  .9 + (progress * .1),

                                  child:
                                  AnimatedOpacity(
                                    duration:
                                    const Duration(
                                      milliseconds:
                                      250,
                                    ),

                                    opacity: progress,

                                    child: Container(
                                      width:
                                      double.infinity,

                                      decoration:
                                      BoxDecoration(
                                        borderRadius:
                                        BorderRadius.circular(
                                            20),

                                        image:
                                        const DecorationImage(
                                          image:
                                          NetworkImage(
                                            "https://images.unsplash.com/photo-1473968512647-3e447244af8f",
                                          ),
                                          fit:
                                          BoxFit.cover,
                                        ),
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                  );
                },
              ),
            ),

            SliverToBoxAdapter(
              child: Column(
                children: [

                  /// MOVE ALL YOUR EXISTING
                  /// QUICK ACCESS
                  /// AI TOOLS
                  /// TRENDING NEWS
                  /// BELOW HERE

                  const SizedBox(height: 20),
                ],
              ),
            ),
          ],
        )
    );
  }

  Widget statCard(String value, String title) {
    return Expanded(
      child: Container(
        margin: const EdgeInsets.symmetric(horizontal: 4),
        padding: const EdgeInsets.symmetric(vertical: 12),
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(15),
        ),
        child: Column(
          children: [
            Text(
              value,
              style: const TextStyle(
                color: Color(0xff0A4DB3),
                fontWeight: FontWeight.bold,
              ),
            ),
            Text(
              title,
              style: const TextStyle(fontSize: 11),
            ),
          ],
        ),
      ),
    );
  }

  Widget sectionTitle(String title) {
    return Padding(
      padding: const EdgeInsets.symmetric(
        horizontal: 15,
        vertical: 10,
      ),
      child: Row(
        children: [
          Text(
            title,
            style: const TextStyle(
              fontSize: 18,
              fontWeight: FontWeight.bold,
            ),
          ),
          const Spacer(),
          const Text(
            "View All",
            style: TextStyle(
              color: Colors.blue,
            ),
          )
        ],
      ),
    );
  }

  Widget aiCard(String title, String subtitle) {
    return Container(
      margin: const EdgeInsets.only(bottom: 12),
      padding: const EdgeInsets.all(15),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(15),
      ),
      child: Row(
        children: [
          const Icon(Icons.smart_toy),
          const SizedBox(width: 10),
          Expanded(
            child: Column(
              crossAxisAlignment:
              CrossAxisAlignment.start,
              children: [
                Text(title),
                Text(
                  subtitle,
                  style: const TextStyle(
                    color: Colors.grey,
                  ),
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}

class QuickItem extends StatelessWidget {
  final IconData icon;
  final String title;

  const QuickItem(this.icon, this.title, {super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        CircleAvatar(
          radius: 26,
          backgroundColor:
          const Color(0xff0A4DB3).withOpacity(.1),
          child: Icon(
            icon,
            color: const Color(0xff0A4DB3),
          ),
        ),
        const SizedBox(height: 8),
        Text(
          title,
          textAlign: TextAlign.center,
          style: const TextStyle(fontSize: 11),
        ),
      ],
    );
  }
}