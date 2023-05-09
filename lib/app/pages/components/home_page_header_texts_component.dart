import 'package:flutter/material.dart';

class HomePageHeaderTextsComponent extends StatelessWidget {
  const HomePageHeaderTextsComponent({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: const [
        Text(
          'Hello Again!',
          style: TextStyle(fontSize: 30.0),
        ),
        SizedBox(height: 10.0),
        Text(
          'Welcome back you\'ve been missed!',
          style: TextStyle(color: Colors.white38, fontSize: 12.0),
        ),
      ],
    );
  }
}
