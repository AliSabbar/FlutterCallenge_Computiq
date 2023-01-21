import 'package:flutter/material.dart';
import 'package:front_task/style/colors.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  bool isSelected = false;

  animateMe() async {
    await Future.delayed(const Duration(seconds: 1), (() {
      isSelected = true;
      setState(() {});
    }));
  }

  @override
  void initState() {
    animateMe();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xffFFF9DE),
      body: Center(
        child: AnimatedDefaultTextStyle(
          onEnd: () {
            Navigator.pushNamedAndRemoveUntil(
                context, 'onBoarding', (route) => false);
          },
          duration: const Duration(seconds: 2),
          style: isSelected
              ? TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 40,
                  decoration: TextDecoration.lineThrough,
                  color: text)
              : const TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 32,
                  color: Colors.black),
          child: const Text(
            "todo",
          ),
        ),
      ),
    );
  }
}
