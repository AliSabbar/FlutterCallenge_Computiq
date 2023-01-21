import 'package:flutter/material.dart';
import 'package:front_task/screens/AddTodoScreen/add_todo_screen.dart';
import 'package:front_task/screens/HomeScreen/home_Screen.dart';
import 'package:front_task/screens/OnBoardingScreen/onBoarding_Screen.dart';
import 'package:front_task/screens/SplashScreen/splash_screen.dart';
import 'package:front_task/style/themes.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Todo Task',
      debugShowCheckedModeBanner: false,
      theme: lightTheme,
      routes: {
        'onBoarding': (context) => const OnBoardingScreen(),
        'home':(context) => const HomeScreen(),
        'addItem':(context) => const AddTodoScreen(),
      },
      home: const SplashScreen(),
    );
  }
}
