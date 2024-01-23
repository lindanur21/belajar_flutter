import 'package:flutter/material.dart';

class Latihan2 extends StatelessWidget {
  const Latihan2({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        Container(
          width: double.infinity,
          height: 300,
          margin: EdgeInsets.all(30),
          padding: EdgeInsets.all(10),
          decoration: BoxDecoration(
            color: Colors.blueGrey,
            borderRadius: BorderRadius.circular(10),
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Icon(
                    Icons.favorite,
                    color: Colors.pink,
                    size: 60.0,
                    semanticLabel: 'Text to announce in accessibility modes',
                  ),
                  Text("Ini adalah column 1"),
                ],
              ),
              Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                   Icon(
                    Icons.audiotrack,
                    color: Colors.green,
                    size: 60.0,
                  ),
                  Text("Ini adalah column 2"),
                ],
              ),
              Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Icon(
                    Icons.beach_access,
                    color: Colors.blue,
                    size: 60.0,
                  ),
                  Text("Ini adalah column 3"),
                ],
              ),
            ],
          ),
        )
      ],
    );
  }
}
