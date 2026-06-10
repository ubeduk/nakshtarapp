import 'package:flutter/material.dart';

import 'government_controller.dart';

class GovernmentDetailScreen
    extends StatelessWidget {

  final GovernmentUpdate update;

  const GovernmentDetailScreen({
    super.key,
    required this.update,
  });

  @override
  Widget build(BuildContext context) {

    return Scaffold(

      appBar: AppBar(
        title: Text(
          update.title,
        ),
      ),

      body: SingleChildScrollView(
        padding:
        const EdgeInsets.all(20),
        child: Column(
          crossAxisAlignment:
          CrossAxisAlignment.start,
          children: [

            Container(
              width:
              double.infinity,
              padding:
              const EdgeInsets.all(
                  24),
              decoration:
              BoxDecoration(
                gradient:
                const LinearGradient(
                  colors: [
                    Color(0xff0D1B2A),
                    Color(0xff1B263B),
                  ],
                ),
                borderRadius:
                BorderRadius.circular(
                    24),
              ),
              child: Column(
                children: [

                  const Icon(
                    Icons.gavel,
                    color:
                    Colors.white,
                    size: 50,
                  ),

                  const SizedBox(
                      height: 12),

                  Text(
                    update.title,
                    textAlign:
                    TextAlign.center,
                    style:
                    const TextStyle(
                      color:
                      Colors.white,
                      fontSize: 22,
                      fontWeight:
                      FontWeight.bold,
                    ),
                  ),
                ],
              ),
            ),

            const SizedBox(
                height: 25),

            const Text(
              "Department",
              style: TextStyle(
                fontSize: 20,
                fontWeight:
                FontWeight.bold,
              ),
            ),

            const SizedBox(
                height: 8),

            Text(
              update.department,
            ),

            const SizedBox(
                height: 25),

            const Text(
              "Description",
              style: TextStyle(
                fontSize: 20,
                fontWeight:
                FontWeight.bold,
              ),
            ),

            const SizedBox(
                height: 8),

            Text(
              update.description,
            ),

            const SizedBox(
                height: 25),

            const Text(
              "Release Date",
              style: TextStyle(
                fontSize: 20,
                fontWeight:
                FontWeight.bold,
              ),
            ),

            const SizedBox(
                height: 8),

            Text(
              update.date,
            ),

            const SizedBox(
                height: 35),

            SizedBox(
              width:
              double.infinity,
              height: 55,
              child:
              ElevatedButton.icon(
                onPressed: () {

                  ScaffoldMessenger
                      .of(
                      context)
                      .showSnackBar(
                    const SnackBar(
                      content: Text(
                        "PDF Download Started",
                      ),
                    ),
                  );
                },
                icon: const Icon(
                  Icons.download,
                ),
                label: const Text(
                  "Download PDF",
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}