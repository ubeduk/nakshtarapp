import 'package:flutter/material.dart';

import 'funding_controller.dart';

class FundingDetailScreen
    extends StatelessWidget {

  final FundingDataModel funding;

  const FundingDetailScreen({
    super.key,
    required this.funding,
  });

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      appBar: AppBar(
        title: Text(
          funding.title,
        ),
      ),

      body: SingleChildScrollView(
        padding:
        const EdgeInsets.all(20),
        child: Column(
          crossAxisAlignment:
          CrossAxisAlignment
              .start,
          children: [

            Container(
              width:
              double.infinity,
              padding:
              const EdgeInsets
                  .all(25),
              decoration:
              BoxDecoration(
                gradient:
                const LinearGradient(
                  colors: [
                    Color(
                        0xff0D1B2A),
                    Color(
                        0xff1B263B),
                  ],
                ),
                borderRadius:
                BorderRadius
                    .circular(
                    24),
              ),
              child: Column(
                children: [

                  const Icon(
                    Icons
                        .currency_rupee,
                    color:
                    Colors.white,
                    size: 50,
                  ),

                  const SizedBox(
                      height: 10),

                  Text(
                    funding.amount,
                    style:
                    const TextStyle(
                      color: Colors
                          .white,
                      fontSize: 32,
                      fontWeight:
                      FontWeight
                          .bold,
                    ),
                  ),
                ],
              ),
            ),

            const SizedBox(
                height: 25),

            const Text(
              "Description",
              style: TextStyle(
                fontSize: 22,
                fontWeight:
                FontWeight.bold,
              ),
            ),

            const SizedBox(
                height: 10),

            Text(
              funding.description,
            ),

            const SizedBox(
                height: 25),

            const Text(
              "Eligibility",
              style: TextStyle(
                fontSize: 22,
                fontWeight:
                FontWeight.bold,
              ),
            ),

            const SizedBox(
                height: 10),

            Text(
              funding.eligibility,
            ),

            const SizedBox(
                height: 25),

            const Text(
              "Important Details",
              style: TextStyle(
                fontSize: 22,
                fontWeight:
                FontWeight.bold,
              ),
            ),

            const SizedBox(
                height: 15),

            ListTile(
              leading: const Icon(
                Icons.calendar_today,
              ),
              title:
              const Text("Deadline"),
              subtitle:
              Text(funding.deadline),
            ),

            ListTile(
              leading: const Icon(
                Icons.business,
              ),
              title:
              const Text("Provider"),
              subtitle:
              Text(funding.provider),
            ),

            const SizedBox(
                height: 25),

            SizedBox(
              width:
              double.infinity,
              height: 55,
              child:
              ElevatedButton(
                onPressed: () {

                  ScaffoldMessenger
                      .of(
                      context)
                      .showSnackBar(
                    const SnackBar(
                      content: Text(
                        "Application Submitted",
                      ),
                    ),
                  );
                },
                child: const Text(
                  "Apply Now",
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}