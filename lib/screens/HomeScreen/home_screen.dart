import 'package:flutter/material.dart';
import 'package:front_task/components/categoryItem.dart';
import 'package:front_task/components/todoItem.dart';
import 'package:front_task/style/colors.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  List<String> categoryNames = ['work', 'study', 'entertainment', 'family'];
  List<Color> categoryColor = [
    Colors.blueAccent,
    Colors.greenAccent,
    Colors.pinkAccent,
    Colors.yellowAccent
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "todo",
          style:
              TextStyle(color: text, fontWeight: FontWeight.bold, fontSize: 30),
        ),
        actions: [
          Padding(
            padding: const EdgeInsets.only(bottom: 10),
            child: IconButton(
                onPressed: () {
                  Navigator.pushNamed(context, 'addItem');
                },
                icon: Icon(
                  Icons.add,
                  size: 35,
                  color: text,
                )),
          ),
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20),
        child: Column(
          children: [
            Expanded(
              child: ListView.separated(
                physics: const BouncingScrollPhysics(),
                scrollDirection: Axis.horizontal,
                itemCount: categoryNames.length,
                separatorBuilder: (BuildContext context, int index) {
                  return const SizedBox(
                    width: 15,
                  );
                },
                itemBuilder: (BuildContext context, int index) {
                  return categoryItem(
                      categoryName: categoryNames[index],
                      categoryColor: categoryColor[index]);
                },
              ),
            ),
            Expanded(
              flex: 5,
              child: ListView.separated(
                physics: const BouncingScrollPhysics(),
                scrollDirection: Axis.vertical,
                itemCount: 10,
                separatorBuilder: (BuildContext context, int index) {
                  return const SizedBox(
                    height: 50,
                  );
                },
                itemBuilder: (BuildContext context, int index) {
                  return todoItem();
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
