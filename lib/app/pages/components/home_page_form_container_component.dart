import 'package:flutter/material.dart';

import 'home_page_password_text_field_component.dart';
import 'home_page_username_text_field_component.dart';

class HomePageFormContainerComponent extends StatelessWidget {
  const HomePageFormContainerComponent({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width * 0.8,
      decoration: BoxDecoration(
        color: Colors.white.withOpacity(0.2),
        borderRadius: BorderRadius.circular(20.0),
        border: Border.all(
          color: Colors.white.withOpacity(0.5),
        ),
      ),
      child: Column(
        children: [
          const HomePageUsernameTextFieldComponent(),
          Divider(
            color: Colors.white.withOpacity(0.5),
          ),
          HomePagePasswordTextFieldComponent(),
        ],
      ),
    );
  }
}
