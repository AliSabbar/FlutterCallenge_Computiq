import 'package:flutter/material.dart';

Widget todoItem() {
  return Container(
    padding:const EdgeInsets.all(10),
    decoration: BoxDecoration(
        color: const Color(0xffFFFCE3),
        borderRadius: BorderRadius.circular(20)),
    child: ListTile(
      isThreeLine: true,
      title: const Text(
        "The First Task Title",
        style: TextStyle(fontWeight: FontWeight.bold),
      ),
      trailing: IconButton(onPressed: () {}, icon: const Icon(Icons.menu)),
      subtitle: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const SizedBox(
            height: 15,
          ),
          const Text(
            "It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. The point of using Lorem Ipsum is that it has a more-or-less normal distribution of letters, as opposed to using 'Content here, content",
            maxLines: 2,
          ),
          const SizedBox(
            height: 30,
          ),
          Row(
            children: const [
              CircleAvatar(
                radius: 12,
                backgroundColor: Colors.greenAccent,
              ),
              SizedBox(
                width: 10,
              ),
              CircleAvatar(
                radius: 12,
                backgroundColor: Colors.redAccent,
              ),
              SizedBox(
                width: 10,
              ),
              CircleAvatar(
                radius: 12,
                backgroundColor: Colors.blueAccent,
              ),
            ],
          ),
        ],
      ),
    ),
  );
}
