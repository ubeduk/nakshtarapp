import 'dart:ui';

import 'package:flutter/material.dart';

class GlassCard extends StatelessWidget {

  final Widget child;

  const GlassCard({
    super.key,
    required this.child,
  });

  @override
  Widget build(BuildContext context) {

    return ClipRRect(
      borderRadius:
      BorderRadius.circular(24),
      child: BackdropFilter(
        filter: ImageFilter.blur(
          sigmaX: 20,
          sigmaY: 20,
        ),
        child: Container(
          padding:
          const EdgeInsets.all(16),
          decoration: BoxDecoration(
            color: Colors.white
                .withOpacity(.15),
            borderRadius:
            BorderRadius.circular(24),
            border: Border.all(
              color: Colors.white24,
            ),
          ),
          child: child,
        ),
      ),
    );
  }
}