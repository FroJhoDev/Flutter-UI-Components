import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';

class HomePageAnimatedLogoComponent extends StatelessWidget {
  const HomePageAnimatedLogoComponent({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: MediaQuery.of(context).size.width,
      height: MediaQuery.of(context).size.height * 0.4,
      child: Lottie.asset('assets/lottie/reading_a_book.json',
          fit: BoxFit.contain, alignment: Alignment.center),
    );
  }
}
