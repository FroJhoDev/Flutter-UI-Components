import 'package:flutter/material.dart';

class HomePagePasswordTextFieldComponent extends StatelessWidget {
  HomePagePasswordTextFieldComponent({super.key});

  final ValueNotifier<bool> isPasswordVisible = ValueNotifier(false);

  @override
  Widget build(BuildContext context) {
    return ValueListenableBuilder(
      valueListenable: isPasswordVisible,
      builder: (_, valeu, __) {
        return TextField(
          obscureText: !isPasswordVisible.value,
          decoration: InputDecoration(
            hintText: 'Password',
            hintStyle: const TextStyle(color: Colors.white),
            border: const OutlineInputBorder(
              borderSide: BorderSide.none,
            ),
            contentPadding: const EdgeInsets.only(top: 40.0),
            prefixIcon: const Icon(
              Icons.lock_outline,
              color: Colors.white,
            ),
            suffixIcon: InkWell(
              onTap: () {
                isPasswordVisible.value = !isPasswordVisible.value;
              },
              child: Icon(
                isPasswordVisible.value
                    ? Icons.visibility_off_outlined
                    : Icons.visibility_outlined,
                color: Colors.white,
              ),
            ),
          ),
        );
      },
    );
  }
}
