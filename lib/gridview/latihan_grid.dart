import 'package:flutter/material.dart';

class LatihanGrid extends StatelessWidget {
  LatihanGrid({super.key});

  final List<String> textList = [
    "A",
    "B",
    "C",
    "D",
    "E",
    "F",
    "G",
    "H",
    "I",
    "J",
    "K",
    "L",
    "M",
    "N",
    "O",
    "P",
    "Q",
    "R",
    "S",
    "T",
    "U",
    "V",
    "W",
    "X",
    "Y",
    "Z"
  ];

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [
          Container(
            height: 500,
            child: GridView.count(
      scrollDirection: Axis.horizontal,
      crossAxisCount: 3,
      children: List.generate(
          26,
          (index) => Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(50),
                ),
                child: Card(
                  color: Colors.amber,
                  child: Center(child: Text(textList[index])),
                ),
              )),
    ),
          ),
          Container(
            child: Column(
              children: List.generate(
          4,
          (index) => Container(
                // decoration: BoxDecoration(
                //   borderRadius: BorderRadius.circular(50),
                // ),
                child: Card(
                  color: Colors.green,
                  margin: EdgeInsets.all(10),
                    child: Center(child: FlutterLogo(size: 200)),
                ),
              ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
