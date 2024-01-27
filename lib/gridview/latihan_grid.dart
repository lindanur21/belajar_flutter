import 'package:flutter/material.dart';

class LatihanGrid extends StatelessWidget {
  LatihanGrid({super.key});

  var data = 1;

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
                          child: Center(child: Text("${String.fromCharCode(64+(data++))}")),
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
