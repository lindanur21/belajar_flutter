import 'package:flutter/material.dart';

class BelajarRow extends StatelessWidget {
  const BelajarRow({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        Text("Ini Isi Row 1"),
        Text("Ini Isi Row 2"),
        Text("Ini Isi Row 3"),
        
      ],
    );
  }
}