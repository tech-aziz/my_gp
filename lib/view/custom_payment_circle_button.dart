import 'package:flutter/material.dart';

Container circlePayment(IconButton iconButton,Color color){
  return Container(
    height: 40,
    width: 40,
    decoration: BoxDecoration(
      borderRadius: BorderRadius.circular(50),
      color: color
    ),
    child: iconButton,
  );
}