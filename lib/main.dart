import 'package:belajar/column_widget.dart';
import 'package:belajar/container_widget.dart';
import 'package:belajar/gridview/grid_builder.dart';
import 'package:belajar/gridview/grid_count.dart';
import 'package:belajar/gridview/grid_fullscreen.dart';
import 'package:belajar/gridview/latihan_grid.dart';
import 'package:belajar/latihan1_widget.dart';
import 'package:belajar/latihan2_widget.dart';
import 'package:belajar/latihan3_1.dart';
import 'package:belajar/latihan3_widget.dart';
import 'package:belajar/listview/list_builder.dart';
import 'package:belajar/listview/list_separated.dart';
import 'package:belajar/row_column.dart';
import 'package:belajar/row_wigdet.dart';
import 'package:belajar/screens/home_screen.dart';
import 'package:belajar/screens/input_form.dart';
import 'package:belajar/screens/list_screen.dart';
import 'package:belajar/screens/menu_screen.dart';
import 'package:belajar/screens/second_screen.dart';
import 'package:flutter/material.dart';
import 'gridview/grid_basic.dart';
import 'listview/list_basic.dart';

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
      // home: HomeScreen(),
      initialRoute: '/',
      routes: {
        '/': (context) => NavigationMenu(),
        'second': (context) => ListWisataScreen(),
        'third':(context) => BelajarForm()
      },
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
