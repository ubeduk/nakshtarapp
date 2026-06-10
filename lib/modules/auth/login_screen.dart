import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:lottie/lottie.dart';

import '../../core/theme/app_colors.dart';
import '../../core/constants/app_strings.dart';

import 'auth_controller.dart';

class LoginScreen extends GetView<AuthController> {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {

    final phoneController =
    TextEditingController();

    return Scaffold(
      body: Stack(
        children: [

          /// Animated Background
          Container(
            decoration: const BoxDecoration(
              gradient: LinearGradient(
                begin: Alignment.topLeft,
                end: Alignment.bottomRight,
                colors: [
                  AppColors.primary,
                  AppColors.secondary,
                ],
              ),
            ),
          ),

          /// Floating Blur Circles
          Positioned(
            top: -80,
            left: -50,
            child: Container(
              width: 220,
              height: 220,
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                color: AppColors.accent
                    .withOpacity(.10),
              ),
            ),
          ),

          Positioned(
            bottom: -100,
            right: -50,
            child: Container(
              width: 260,
              height: 260,
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                color: AppColors.accent
                    .withOpacity(.08),
              ),
            ),
          ),

          SafeArea(
            child: SingleChildScrollView(
              padding:
              const EdgeInsets.all(24),
              child: Column(
                children: [

                  const SizedBox(height: 20),

                  /// Drone Animation
                  Lottie.asset(
                    "assets/lottie/drone.json",
                    height: 260,
                  ),

                  const SizedBox(height: 20),

                  const Text(
                    AppStrings.appName,
                    style: TextStyle(
                      fontSize: 34,
                      fontWeight:
                      FontWeight.bold,
                      color: Colors.white,
                    ),
                  ),

                  const SizedBox(height: 10),

                  const Text(
                    "Welcome to India's Drone Innovation Ecosystem",
                    textAlign:
                    TextAlign.center,
                    style: TextStyle(
                      color:
                      Colors.white70,
                    ),
                  ),

                  const SizedBox(height: 40),

                  /// Glass Card
                  ClipRRect(
                    borderRadius:
                    BorderRadius.circular(
                      30,
                    ),
                    child: BackdropFilter(
                      filter:
                      ImageFilter.blur(
                        sigmaX: 20,
                        sigmaY: 20,
                      ),
                      child: Container(
                        padding:
                        const EdgeInsets
                            .all(24),
                        decoration:
                        BoxDecoration(
                          color: Colors.white
                              .withOpacity(
                              .12),
                          borderRadius:
                          BorderRadius
                              .circular(
                            30,
                          ),
                          border:
                          Border.all(
                            color:
                            Colors.white24,
                          ),
                        ),
                        child: Column(
                          children: [

                            const Text(
                              "Login",
                              style:
                              TextStyle(
                                fontSize:
                                24,
                                fontWeight:
                                FontWeight
                                    .bold,
                                color: Colors
                                    .white,
                              ),
                            ),

                            const SizedBox(
                                height: 20),

                            /// Phone
                            TextField(
                              controller:
                              phoneController,
                              keyboardType:
                              TextInputType
                                  .phone,
                              style:
                              const TextStyle(
                                color: Colors
                                    .white,
                              ),
                              decoration:
                              InputDecoration(
                                filled: true,
                                fillColor: Colors
                                    .white
                                    .withOpacity(
                                    .08),
                                hintText:
                                "Enter Mobile Number",
                                hintStyle:
                                const TextStyle(
                                  color: Colors
                                      .white54,
                                ),
                                border:
                                OutlineInputBorder(
                                  borderRadius:
                                  BorderRadius
                                      .circular(
                                      16),
                                ),
                              ),
                            ),

                            const SizedBox(
                                height: 20),

                            /// OTP Login
                            SizedBox(
                              width:
                              double.infinity,
                              height: 55,
                              child:
                              ElevatedButton(
                                onPressed: () {
                                  controller
                                      .loginWithOtp(
                                    phoneController
                                        .text,
                                  );
                                },
                                child: const Text(
                                  "Continue with OTP",
                                ),
                              ),
                            ),

                            const SizedBox(
                                height: 16),

                            Row(
                              children: [

                                Expanded(
                                  child:
                                  Divider(
                                    color: Colors
                                        .white24,
                                  ),
                                ),

                                const Padding(
                                  padding:
                                  EdgeInsets
                                      .symmetric(
                                    horizontal:
                                    10,
                                  ),
                                  child: Text(
                                    "OR",
                                    style:
                                    TextStyle(
                                      color: Colors
                                          .white70,
                                    ),
                                  ),
                                ),

                                Expanded(
                                  child:
                                  Divider(
                                    color: Colors
                                        .white24,
                                  ),
                                ),
                              ],
                            ),

                            const SizedBox(
                                height: 16),

                            /// Google Login
                            SizedBox(
                              width:
                              double.infinity,
                              height: 55,
                              child:
                              OutlinedButton.icon(
                                onPressed:
                                controller
                                    .signInWithGoogle,
                                icon:
                                const Icon(
                                  Icons.g_mobiledata,
                                  size: 30,
                                ),
                                label:
                                const Text(
                                  "Continue with Google",
                                ),
                              ),
                            ),

                            const SizedBox(
                                height: 12),

                            /// Apple Login
                            SizedBox(
                              width:
                              double.infinity,
                              height: 55,
                              child:
                              OutlinedButton.icon(
                                onPressed:
                                controller
                                    .signInWithApple,
                                icon:
                                const Icon(
                                  Icons.apple,
                                ),
                                label:
                                const Text(
                                  "Continue with Apple",
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),

                  const SizedBox(height: 40),
                ],
              ),
            ),
          ),

          /// Loading Overlay
          Obx(
                () => controller
                .isLoading.value
                ? Container(
              color:
              Colors.black45,
              child: const Center(
                child:
                CircularProgressIndicator(),
              ),
            )
                : const SizedBox(),
          ),
        ],
      ),
    );
  }
}