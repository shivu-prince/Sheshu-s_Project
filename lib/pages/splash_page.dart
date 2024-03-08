import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';

class SplashPage extends StatelessWidget {
  const SplashPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 48, 47, 47),
      body: Center(
        child: Lottie.asset(
          'assets/loading.json',
        ),
      ),
    );
  }
}
