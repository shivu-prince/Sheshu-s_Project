import 'package:animated_splash_screen/animated_splash_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:lottie/lottie.dart';
import 'package:text_to_sql/pages/my_home_pages.dart';

void main() {
  SystemChrome.setSystemUIOverlayStyle(const SystemUiOverlayStyle(
    statusBarColor: Colors.transparent,
    systemNavigationBarColor: Color.fromARGB(255, 48, 47, 47),
    systemNavigationBarDividerColor: Color.fromARGB(255, 48, 47, 47),
  ));

  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: AnimatedSplashScreen(
        splashIconSize: MediaQuery.of(context).size.width * 0.5,
        duration: 2000,
        backgroundColor: const Color.fromARGB(255, 48, 47, 47),
        nextScreen: const MyHomePage(),
        splash: Center(
          child: SizedBox(
            child: Lottie.asset(
              'assets/loading.json',
            ),
          ),
        ),
      ),
    );
  }
}
