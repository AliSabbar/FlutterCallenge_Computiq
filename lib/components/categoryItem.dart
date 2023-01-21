import 'package:flutter/material.dart';

categoryItem({
  required categoryName,
  required categoryColor,
}){
    return Row(
      children: [
        Container(
          width: 25,
          height: 25,
          decoration:  BoxDecoration(
            color: categoryColor,
            shape: BoxShape.circle,
          ),
        ),
      const  SizedBox(
          width: 10,
        ),
        Text(categoryName.toString())
      ],
    );
  }
