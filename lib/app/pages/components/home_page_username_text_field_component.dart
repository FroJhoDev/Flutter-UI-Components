import 'package:flutter/material.dart';

class HomePageUsernameTextFieldComponent extends StatelessWidget {
  const HomePageUsernameTextFieldComponent({super.key});

  @override
  Widget build(BuildContext context) {
    return const TextField(
      decoration: InputDecoration(
        hintText: 'Username',
        hintStyle: TextStyle(color: Colors.white),
        border: OutlineInputBorder(
          borderSide: BorderSide.none,
        ),
        contentPadding: EdgeInsets.only(top: 40.0),
        prefixIcon: Icon(
          Icons.person_outline,
          color: Colors.white,
        ),
      ),
    );
  }
}
