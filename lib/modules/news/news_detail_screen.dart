import 'package:flutter/material.dart';

import 'news_controller.dart';

class NewsDetailScreen
    extends StatefulWidget {

  final NewsArticle article;

  const NewsDetailScreen({
    super.key,
    required this.article,
  });

  @override
  State<NewsDetailScreen>
  createState() =>
      _NewsDetailScreenState();
}

class _NewsDetailScreenState
    extends State<NewsDetailScreen> {

  double progress = 0;

  final ScrollController
  scrollController =
  ScrollController();

  @override
  void initState() {
    super.initState();

    scrollController
        .addListener(() {

      final max =
          scrollController
              .position
              .maxScrollExtent;

      final current =
          scrollController
              .offset;

      setState(() {
        progress =
            current / max;
      });
    });
  }

  @override
  Widget build(BuildContext context) {

    return Scaffold(

      body: Stack(
        children: [

          SingleChildScrollView(
            controller:
            scrollController,
            child: Column(
              children: [

                Hero(
                  tag:
                  widget.article.id,
                  child:
                  Image.network(
                    widget
                        .article.image,
                    height: 320,
                    width:
                    double.infinity,
                    fit:
                    BoxFit.cover,
                  ),
                ),

                Padding(
                  padding:
                  const EdgeInsets
                      .all(20),
                  child: Column(
                    crossAxisAlignment:
                    CrossAxisAlignment
                        .start,
                    children: [

                      Text(
                        widget
                            .article.title,
                        style:
                        const TextStyle(
                          fontSize:
                          28,
                          fontWeight:
                          FontWeight
                              .bold,
                        ),
                      ),

                      const SizedBox(
                          height:
                          10),

                      Text(
                        "${widget.article.author} • ${widget.article.date}",
                      ),

                      const SizedBox(
                          height:
                          20),

                      Text(
                        widget.article
                            .description *
                            10,
                        style:
                        const TextStyle(
                          height:
                          1.7,
                        ),
                      ),

                      const SizedBox(
                          height:
                          30),

                      const Text(
                        "Related Articles",
                        style:
                        TextStyle(
                          fontSize:
                          22,
                          fontWeight:
                          FontWeight
                              .bold,
                        ),
                      ),

                      const SizedBox(
                          height:
                          15),

                      ListTile(
                        leading:
                        const Icon(
                          Icons.article,
                        ),
                        title:
                        const Text(
                          "AI Drone Research Program Launch",
                        ),
                      ),

                      ListTile(
                        leading:
                        const Icon(
                          Icons.article,
                        ),
                        title:
                        const Text(
                          "Drone Startup Secures Funding",
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),

          Positioned(
            top: 0,
            left: 0,
            right: 0,
            child:
            LinearProgressIndicator(
              value: progress,
            ),
          ),

          Positioned(
            right: 20,
            bottom: 20,
            child: Column(
              children: [

                FloatingActionButton(
                  heroTag:
                  "bookmark",
                  onPressed: () {},
                  child:
                  const Icon(
                    Icons.bookmark,
                  ),
                ),

                const SizedBox(
                    height: 10),

                FloatingActionButton(
                  heroTag:
                  "share",
                  onPressed: () {},
                  child:
                  const Icon(
                    Icons.share,
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}