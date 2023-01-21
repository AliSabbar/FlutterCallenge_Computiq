import 'package:flutter/material.dart';

import '../style/colors.dart';

Widget defaultButton({
  required VoidCallback onTab,
  double width = 348.93,
  double hight = 48,
  required String message,
}){
  return MaterialButton(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(15.0),
      ),
      onPressed: onTab,
      textColor: Colors.white,
      color: text,
      minWidth: width,
      height: hight,
      child:  Text(
        message,
        style:const TextStyle(fontWeight: FontWeight.w600, fontSize: 18),
        textAlign: TextAlign.center,
      ),
    );
}
