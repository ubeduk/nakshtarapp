import 'package:flutter/material.dart';

class HeaderSection extends StatelessWidget {
  const HeaderSection({super.key});

  @override
  Widget build(BuildContext context) {

    final width = MediaQuery.of(context).size.width;

    final isSmall = width < 360;

    final greetingFont = isSmall ? 14.0 : 17.0;
    final nameFont = isSmall ? 34.0 : width * 0.11;
    final subtitleFont = isSmall ? 13.0 : 17.0;

    final notificationSize = isSmall ? 52.0 : 62.0;
    final profileSize = isSmall ? 62.0 : 72.0;

    return Padding(
      padding: EdgeInsets.symmetric(
        horizontal: width * .05,
        vertical: 16,
      ),
      child: Row(
        crossAxisAlignment:
        CrossAxisAlignment.start,
        children: [

          /// LEFT SIDE
          Expanded(
            child: Column(
              crossAxisAlignment:
              CrossAxisAlignment.start,
              children: [

                Text(
                  "Good Morning 👋",
                  style: TextStyle(
                    fontSize: 12,
                    fontWeight:
                    FontWeight.w500,
                    color:
                    const Color(
                      0xff64748B,
                    ),
                  ),
                ),

                const SizedBox(height: 6),

                Text(
                  "Ubed",
                  maxLines: 1,
                  overflow:
                  TextOverflow.ellipsis,
                  style: TextStyle(
                    fontSize: 15,
                    height: 1,
                    fontWeight:
                    FontWeight.w800,
                    color:
                    const Color(
                      0xff0F172A,
                    ),
                  ),
                ),

                const SizedBox(height: 8),

                Text(
                  "Welcome to DroneNakshatra",
                  maxLines: 2,
                  overflow:
                  TextOverflow.ellipsis,
                  style: TextStyle(
                    fontSize: 12,
                    color:
                    const Color(
                      0xff64748B,
                    ),
                    fontWeight:
                    FontWeight.w400,
                  ),
                ),
              ],
            ),
          ),

          SizedBox(width: width * .03),

          /// RIGHT SIDE
          Row(
            children: [

              /// Notification
              Stack(
                clipBehavior:
                Clip.none,
                children: [

                  Container(
                    width:
                    20,
                    height:
                    30,
                    decoration:
                    BoxDecoration(
                      color:
                      Colors.white,
                      shape:
                      BoxShape.circle,
                      border:
                      Border.all(
                        color:
                        const Color(
                          0xffE5E7EB,
                        ),
                      ),
                      boxShadow: [
                        BoxShadow(
                          color: Colors
                              .black
                              .withOpacity(
                              .04),
                          blurRadius: 20,
                          offset:
                          const Offset(
                            0,
                            8,
                          ),
                        ),
                      ],
                    ),
                    child: Icon(
                      Icons
                          .notifications_none_rounded,
                      size: 30,
                      color:
                      const Color(
                        0xff0F172A,
                      ),
                    ),
                  ),

                  Positioned(
                    right: -8,
                    top: 2,
                    child: Container(
                      width: 15,
                      height: 15,
                      decoration:
                      const BoxDecoration(
                        color:
                        Color(
                          0xffEF4444,
                        ),
                        shape:
                        BoxShape.circle,
                      ),
                      child:
                      const Center(
                        child: Text(
                          "3",
                          style:
                          TextStyle(
                            color:
                            Colors
                                .white,
                            fontWeight:
                            FontWeight
                                .bold,
                            fontSize:
                            10,
                          ),
                        ),
                      ),
                    ),
                  ),
                ],
              ),

              SizedBox(
                width: width * .03,
              ),

              /// Profile
              Stack(
                clipBehavior:
                Clip.none,
                children: [

                  Container(
                    width: profileSize,
                    height: profileSize,
                    decoration:
                    BoxDecoration(
                      shape:
                      BoxShape.circle,
                      border:
                      Border.all(
                        color:
                        const Color(
                          0xffD1D5DB,
                        ),
                        width: 2,
                      ),
                    ),
                    child:
                    ClipOval(
                      child:
                      Image.network(
                        "https://i.pravatar.cc/300",
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),

                  Positioned(
                    right: 3,
                    bottom: 3,
                    child: Container(
                      width: isSmall
                          ? 18
                          : 22,
                      height: isSmall
                          ? 18
                          : 22,
                      decoration:
                      BoxDecoration(
                        color:
                        const Color(
                          0xff22C55E,
                        ),
                        shape:
                        BoxShape.circle,
                        border:
                        Border.all(
                          color:
                          Colors.white,
                          width: 3,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ],
      ),
    );
  }
}