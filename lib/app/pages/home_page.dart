import 'package:flutter/material.dart';

import 'components/home_page_animated_background_component.dart';
import 'components/home_page_blur_effect_component.dart';
import 'components/home_page_animated_logo_component.dart';
import 'components/home_page_header_texts_component.dart';
import 'components/home_page_form_container_component.dart';
import 'components/home_page_login_button_component.dart';
import 'components/home_page_recovery_passsword_component.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black87,
      body: SingleChildScrollView(
        child: Stack(
          children: [
            const HomePageAnimatedBackgroundComponent(),
            const HomePageBlurEffectComponent(),
            Positioned(
              top: 0,
              right: 0,
              child: SafeArea(
                child: Column(
                  children: const [
                    HomePageAnimatedLogoComponent(),
                    HomePageHeaderTextsComponent(),
                    SizedBox(height: 10.0),
                    HomePageFormContainerComponent(),
                    SizedBox(height: 10.0),
                    HomePageRecoveryPassswordComponent(),
                    SizedBox(height: 10.0),
                    HomePageLoginButtonComponent(),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
