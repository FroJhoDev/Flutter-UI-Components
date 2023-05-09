import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';
import 'dart:ui';

class HomePage extends StatelessWidget {
  HomePage({super.key});

  final ValueNotifier<bool> isPasswordVisible = ValueNotifier(false);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black87,
      body: SingleChildScrollView(
        child: Stack(
          children: [
            Lottie.asset(
              'assets/lottie/bubbles.json',
              fit: BoxFit.cover,
              height: MediaQuery.of(context).size.height,
            ),
            Positioned.fill(
              child: BackdropFilter(
                filter: ImageFilter.blur(sigmaX: 20.0, sigmaY: 20.0),
                child: const SizedBox(),
              ),
            ),
            Positioned(
              top: 0,
              right: 0,
              child: SafeArea(
                child: Column(
                  children: [
                    SizedBox(
                      width: MediaQuery.of(context).size.width,
                      height: MediaQuery.of(context).size.height * 0.4,
                      child: Lottie.asset('assets/lottie/reading_a_book.json',
                          fit: BoxFit.contain, alignment: Alignment.center),
                    ),
                    const Text(
                      'Hello Again!',
                      style: TextStyle(color: Colors.white, fontSize: 30.0),
                    ),
                    const SizedBox(height: 10.0),
                    const Text('Welcome back you\'ve been missed!',
                        style:
                            TextStyle(color: Colors.white38, fontSize: 12.0)),
                    const SizedBox(height: 10.0),
                    Container(
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
                          const TextField(
                            style: TextStyle(color: Colors.white),
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
                          ),
                          Divider(
                            color: Colors.white.withOpacity(0.5),
                          ),
                          ValueListenableBuilder(
                            valueListenable: isPasswordVisible,
                            builder: (_, valeu, __) {
                              return TextField(
                                style: const TextStyle(color: Colors.white),
                                obscureText: !isPasswordVisible.value,
                                decoration: InputDecoration(
                                  hintText: 'Password',
                                  hintStyle:
                                      const TextStyle(color: Colors.white),
                                  border: const OutlineInputBorder(
                                    borderSide: BorderSide.none,
                                  ),
                                  contentPadding:
                                      const EdgeInsets.only(top: 40.0),
                                  prefixIcon: const Icon(
                                    Icons.lock_outline,
                                    color: Colors.white,
                                  ),
                                  suffixIcon: InkWell(
                                    onTap: () {
                                      isPasswordVisible.value =
                                          !isPasswordVisible.value;
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
                          ),
                        ],
                      ),
                    ),
                    const SizedBox(height: 10.0),
                    SizedBox(
                      width: MediaQuery.of(context).size.width * 0.75,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: const [
                          Text(
                            'Recovery password',
                            textAlign: TextAlign.right,
                            style:
                                TextStyle(color: Colors.white, fontSize: 12.0),
                          ),
                        ],
                      ),
                    ),
                    const SizedBox(height: 10.0),
                    SizedBox(
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
                    ),
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
