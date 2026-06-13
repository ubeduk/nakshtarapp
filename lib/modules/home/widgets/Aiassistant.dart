// import 'package:flutter/material.dart';
//
// class AiAssistantSection extends StatelessWidget {
//   const AiAssistantSection({super.key});
//
//   @override
//   Widget build(BuildContext context) {
//     return Container(
//       margin: const EdgeInsets.symmetric(
//         horizontal: 24,
//       ),
//
//       height: 240,
//
//       decoration: BoxDecoration(
//         borderRadius: BorderRadius.circular(32),
//
//         gradient: const LinearGradient(
//           begin: Alignment.topLeft,
//           end: Alignment.bottomRight,
//           colors: [
//             Color(0xff4F46E5),
//             Color(0xff7C3AED),
//           ],
//         ),
//
//         boxShadow: [
//           BoxShadow(
//             color: const Color(0xff7C3AED)
//                 .withOpacity(.25),
//             blurRadius: 25,
//             offset: const Offset(
//               0,
//               12,
//             ),
//           ),
//         ],
//       ),
//
//       child: Stack(
//         children: [
//
//           /// Background Glow
//           Positioned(
//             top: -40,
//             right: -30,
//             child: Container(
//               height: 180,
//               width: 180,
//               decoration: BoxDecoration(
//                 shape: BoxShape.circle,
//                 color: Colors.white
//                     .withOpacity(.08),
//               ),
//             ),
//           ),
//
//           Positioned(
//             bottom: -60,
//             left: -40,
//             child: Container(
//               height: 160,
//               width: 160,
//               decoration: BoxDecoration(
//                 shape: BoxShape.circle,
//                 color: Colors.white
//                     .withOpacity(.05),
//               ),
//             ),
//           ),
//
//           Padding(
//             padding: const EdgeInsets.all(24),
//             child: Row(
//               children: [
//
//                 /// LEFT CONTENT
//                 Expanded(
//                   child: Column(
//                     crossAxisAlignment:
//                     CrossAxisAlignment
//                         .start,
//
//                     mainAxisAlignment:
//                     MainAxisAlignment
//                         .center,
//
//                     children: [
//
//                       Container(
//                         padding:
//                         const EdgeInsets
//                             .symmetric(
//                           horizontal: 12,
//                           vertical: 8,
//                         ),
//                         decoration:
//                         BoxDecoration(
//                           color: Colors.white
//                               .withOpacity(
//                               .15),
//                           borderRadius:
//                           BorderRadius
//                               .circular(
//                               30),
//                         ),
//                         child: const Row(
//                           mainAxisSize:
//                           MainAxisSize
//                               .min,
//                           children: [
//
//                             Icon(
//                               Icons
//                                   .smart_toy,
//                               color:
//                               Colors.white,
//                               size: 18,
//                             ),
//
//                             SizedBox(
//                                 width: 6),
//
//                             Text(
//                               "AI POWERED",
//                               style:
//                               TextStyle(
//                                 color:
//                                 Colors.white,
//                                 fontSize:
//                                 12,
//                                 fontWeight:
//                                 FontWeight
//                                     .w600,
//                               ),
//                             ),
//                           ],
//                         ),
//                       ),
//
//                       const SizedBox(
//                         height: 18,
//                       ),
//
//                       const Text(
//                         "Drone AI\nAssistant",
//                         style: TextStyle(
//                           color:
//                           Colors.white,
//                           fontSize: 34,
//                           height: 1.1,
//                           fontWeight:
//                           FontWeight
//                               .bold,
//                         ),
//                       ),
//
//                       const SizedBox(
//                         height: 12,
//                       ),
//
//                       const Text(
//                         "Ask anything about funding, drone technology, startups, careers and competitions.",
//                         style: TextStyle(
//                           color:
//                           Colors.white70,
//                           fontSize: 15,
//                           height: 1.5,
//                         ),
//                       ),
//
//                       const SizedBox(
//                         height: 22,
//                       ),
//
//                       Container(
//                         height: 50,
//                         width: 160,
//
//                         decoration:
//                         BoxDecoration(
//                           color:
//                           Colors.white,
//                           borderRadius:
//                           BorderRadius
//                               .circular(
//                               16),
//                         ),
//
//                         child: const Center(
//                           child: Text(
//                             "Ask AI Now",
//                             style:
//                             TextStyle(
//                               color:
//                               Color(
//                                 0xff4F46E5,
//                               ),
//                               fontWeight:
//                               FontWeight
//                                   .bold,
//                               fontSize:
//                               16,
//                             ),
//                           ),
//                         ),
//                       ),
//                     ],
//                   ),
//                 ),
//
//                 /// ROBOT IMAGE
//                 Expanded(
//                   child: Center(
//                     child: Image.asset(
//                       "assets/images/ai_robot.png",
//                       height: 180,
//                     ),
//                   ),
//                 ),
//               ],
//             ),
//           ),
//         ],
//       ),
//     );
//   }
// }