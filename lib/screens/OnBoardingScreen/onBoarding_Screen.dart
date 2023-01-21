import 'package:flutter/material.dart';
import 'package:front_task/components/defaultButton.dart';

class OnBoardingScreen extends StatefulWidget {
  const OnBoardingScreen({super.key});

  @override
  State<OnBoardingScreen> createState() => _OnBoardingScreenState();
}

class _OnBoardingScreenState extends State<OnBoardingScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 30),
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Image.asset('assets/images/todo_color.png'),
              const SizedBox(
                height: 20,
              ),
              const Text(
                "It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. The point of using Lorem Ipsum is that it has a more-or-less normal distribution of letters, as opposed to using 'Content here, content",
                maxLines: 2,
                style: TextStyle(color: Colors.grey),
              ),
              const SizedBox(
                height: 40,
              ),
              defaultButton(
                  onTab: () {
                    Navigator.pushNamedAndRemoveUntil(
                        context, 'home', (route) => false);
                  },
                  message: "Get Started",
                  width: 200),
              const SizedBox(
                height: 80,
              ),
              Row(
                children: [
                  Expanded(child: Image.asset('assets/images/girl.png')),
                  Expanded(child: Image.asset('assets/images/girl.png')),
                  Expanded(child: Image.asset('assets/images/girl.png')),
                ],
              ),
              Container(
                padding: const EdgeInsets.all(10),
                decoration: BoxDecoration(
                    color: const Color(0xffFFFCE3),
                    borderRadius: BorderRadius.circular(20)),
                child: ListTile(
                  isThreeLine: true,
                  title: const Text(
                    "Download todo App",
                    style: TextStyle(
                        color: Colors.grey,
                        fontWeight: FontWeight.w500,
                        decoration: TextDecoration.lineThrough),
                  ),
                  trailing: const Icon(Icons.menu),
                  subtitle: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      SizedBox(
                        height: 5,
                      ),
                      Text(
                        "the first step for better life",
                        style: TextStyle(
                            color: Colors.grey,
                            decoration: TextDecoration.lineThrough),
                      ),
                      SizedBox(
                        height: 20,
                      ),
                      Row(
                        children: [
                          CircleAvatar(
                            backgroundColor: Colors.redAccent,
                            radius: 12,
                          ),
                          SizedBox(
                            width: 10,
                          ),
                          CircleAvatar(
                            backgroundColor: Colors.greenAccent,
                            radius: 12,
                          ),
                        ],
                      )
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
