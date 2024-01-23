import 'package:belajar/column_widget.dart';
import 'package:belajar/container_widget.dart';
import 'package:belajar/latihan1_widget.dart';
import 'package:belajar/latihan2_widget.dart';
import 'package:belajar/latihan3_widget.dart';
import 'package:belajar/row_column.dart';
import 'package:belajar/row_wigdet.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "Ini Project Flutter Pertamaku",
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.black,
          title: Center(child: Text("Belajar Flutter")),
        ),
        body: Latihan3(),
      ),
    );
  }
}

class TextWidget extends StatelessWidget {
  const TextWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Text("Hello Dunia...", style: TextStyle(color: Colors.pink, fontSize: 24, fontWeight: FontWeight.bold),
      ),
    );
  }
}
