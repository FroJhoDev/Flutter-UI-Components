import 'package:flutter/material.dart';

class HomePageLoginButtonComponent extends StatelessWidget {
  const HomePageLoginButtonComponent({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: MediaQuery.of(context).size.width * 0.8,
      child: ElevatedButton(
        onPressed: () {
          // do something
        },
        style: ElevatedButton.styleFrom(
          padding: const EdgeInsets.all(0.0),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(10.0),
          ),
          elevation: 10.0,
          shadowColor: Colors.purple,
        ),
        child: Ink(
          decoration: BoxDecoration(
            gradient: const LinearGradient(
              colors: [
                Colors.purple,
                Colors.pinkAccent,
              ],
              begin: Alignment.centerLeft,
              end: Alignment.centerRight,
            ),
            borderRadius: BorderRadius.circular(10.0),
          ),
          child: Container(
            constraints: const BoxConstraints(minHeight: 40.0),
            alignment: Alignment.center,
            child: const Text('Log In'),
          ),
        ),
      ),
    );
  }
}
