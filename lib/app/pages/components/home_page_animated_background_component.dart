import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';

class HomePageAnimatedBackgroundComponent extends StatelessWidget {
  const HomePageAnimatedBackgroundComponent({super.key});

  @override
  Widget build(BuildContext context) {
    return Lottie.asset(
      'assets/lottie/bubbles.json',
      fit: BoxFit.cover,
      height: MediaQuery.of(context).size.height,
    );
  }
}
