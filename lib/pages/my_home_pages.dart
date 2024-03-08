import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:flutter/material.dart';
import 'package:text_to_sql/const/app_colors.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: const Icon(
          Icons.adobe_outlined,
          size: 40,
        ),
        title: const Text(
          "Fetch Sql data",
          style: TextStyle(fontSize: 22, fontWeight: FontWeight.w700),
        ),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Padding(
            padding: const EdgeInsets.all(20.0),
            child: AnimatedTextKit(
              totalRepeatCount: 1,
              isRepeatingAnimation: false,
              animatedTexts: [
                TypewriterAnimatedText(
                    "Welcome,Write your text to get data from Sql Data Base",
                    textStyle: const TextStyle(fontSize: 30),
                    speed: const Duration(milliseconds: 100))
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(20),
            child: Card(
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: TextFormField(
                  autofocus: false,
                  cursorColor: Colors.black,
                  decoration: const InputDecoration(
                      enabledBorder: UnderlineInputBorder(
                        borderSide: BorderSide(color: Colors.transparent),
                      ),
                      focusedBorder: UnderlineInputBorder(
                        borderSide: BorderSide(color: Colors.black),
                      ),
                      hintText: 'Your Query'),
                ),
              ),
            ),
          ),
          Padding(
              padding: const EdgeInsets.all(20),
              child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10)),
                    backgroundColor: Colors.black),
                onPressed: () {},
                child: const Padding(
                  padding: EdgeInsets.all(10.0),
                  child: Text(
                    "Magic",
                    style:
                        TextStyle(fontSize: 18, color: MyColors.primarycolor),
                  ),
                ),
              ))
        ],
      ),
    );
  }
}
