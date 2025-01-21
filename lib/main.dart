import 'package:flutter/material.dart';
import "./gradient_color.dart";

void main() {
  runApp(
    const MaterialApp(
      home: Scaffold(
        body: MyGradient(
            Color.fromARGB(255, 26, 2, 80), Color.fromARGB(255, 155, 39, 10)),
      ),
    ),
  );
}
