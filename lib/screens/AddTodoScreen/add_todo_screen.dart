import 'package:flutter/material.dart';
import 'package:front_task/components/categoryItem.dart';
import 'package:front_task/components/defaultButton.dart';
import 'package:front_task/components/defaultTextField.dart';
import 'package:front_task/style/colors.dart';

class AddTodoScreen extends StatefulWidget {
  const AddTodoScreen({super.key});

  @override
  State<AddTodoScreen> createState() => _AddTodoScreenState();
}

class _AddTodoScreenState extends State<AddTodoScreen> {
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
        automaticallyImplyLeading: false,
        title: TextButton(
          onPressed: () {
            Navigator.pop(context);
          },
          child: Text(
            'Cancel',
            style: TextStyle(color: text),
          ),
        ),
        actions: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: defaultButton(
              onTab: () {},
              message: "Add",
              width: 100,
            ),
          ),
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const SizedBox(
                height: 20,
              ),
              const Text(
                "Title",
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
              ),
              const SizedBox(
                height: 10,
              ),
              defaultTextField(
                  height: 50,
                  labelText: "Add title ...",
                  controller: TextEditingController(),
                  validator: (s) {}),
              const SizedBox(
                height: 20,
              ),
              const Text(
                "Description",
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
              ),
              const SizedBox(
                height: 10,
              ),
              SizedBox(
                height: 200,
                child: defaultTextField(
                    height: 50,
                    maxLines: 5,
                    labelText: "Add a description ...",
                    controller: TextEditingController(),
                    validator: (s) {}),
              ),
              const SizedBox(
                height: 20,
              ),
              const Text(
                "Tags",
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
              ),
              const SizedBox(
                height: 20,
              ),
              SizedBox(
                child: ListView.separated(
                  shrinkWrap: true,
                  physics: const NeverScrollableScrollPhysics(),
                  itemCount: 4,
                  separatorBuilder: (BuildContext context, int index) {
                    return const SizedBox(
                      height: 20,
                    );
                  },
                  itemBuilder: (BuildContext context, int index) {
                    return categoryItem(
                        categoryName: categoryNames[index],
                        categoryColor: categoryColor[index]);
                  },
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
