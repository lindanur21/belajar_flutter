import 'package:flutter/material.dart';

// container adalah wadah untuk menampung widget lain
class BelajarContainer extends StatelessWidget {
  const BelajarContainer({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: double.infinity,
      // margin: EdgeInsets.all(10),
      // padding: EdgeInsets.all(10),
      decoration: BoxDecoration(
        // color: Colors.blueGrey,
        gradient: LinearGradient(colors: [Colors.cyanAccent, Colors.greenAccent]
        ),
        // borderRadius: BorderRadius.circular(10),
      ),
      child: Container(
        width: 200,
        height: 200,
        margin: EdgeInsets.all(30),
        padding: EdgeInsets.all(10),
        decoration: BoxDecoration(
          // color: Colors.blueGrey,
          gradient:
              LinearGradient(colors: [Colors.pinkAccent, Colors.indigoAccent]),
          borderRadius: BorderRadius.circular(10),
        ),
        child: Container(
          width: 200,
          height: 200,
          margin: EdgeInsets.all(40),
          padding: EdgeInsets.all(10),
          decoration: BoxDecoration(
            // color: Colors.blueGrey,
            gradient: LinearGradient(
                colors: [Colors.cyanAccent, Colors.greenAccent]),
            borderRadius: BorderRadius.circular(10),
          ),
          child: Container(
            width: 200,
            height: 200,
            margin: EdgeInsets.all(30),
            padding: EdgeInsets.all(10),
            decoration: BoxDecoration(
              image: DecorationImage(
                  image: NetworkImage(
                    "https://asset.kompas.com/crops/fYTbDvQm6-4aktSbHz1FJkvCT3c=/0x0:612x408/750x500/data/photo/2023/08/19/64e054b9610d6.jpeg",
                  ),
                  fit: BoxFit.fill),
              // color: Colors.blueGrey,
              // gradient: LinearGradient(
              //     colors: [Colors.cyanAccent, Colors.greenAccent]),
              borderRadius: BorderRadius.circular(10),
            ),
          ),
        ),
      ),
    );
  }
}