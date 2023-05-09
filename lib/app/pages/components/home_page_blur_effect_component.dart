import 'dart:ui';
import 'package:flutter/material.dart';

class HomePageBlurEffectComponent extends StatelessWidget {
  const HomePageBlurEffectComponent({super.key});

  @override
  Widget build(BuildContext context) {
    return Positioned.fill(
      child: BackdropFilter(
        filter: ImageFilter.blur(sigmaX: 20.0, sigmaY: 20.0),
        child: const SizedBox(),
      ),
    );
  }
}
