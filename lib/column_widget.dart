import 'package:flutter/material.dart';

class BelajarColumn extends StatelessWidget {
  const BelajarColumn({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        Text("Ini Isi Column 1"),
        Text("Ini Isi Column 2"),
        Text("Ini Isi Column 3"),
        FlutterLogo(size: 64),
      ],
    );
  }
}
