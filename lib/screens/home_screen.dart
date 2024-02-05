import 'package:belajar/screens/list_screen.dart';
import 'package:belajar/screens/second_screen.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue,
        title: Text("Home"),
      ),
      body: Container(
        height: double.infinity,
        width: double.infinity,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => ListWisataScreen(),
                  ),
                );
              },
              child: Text("Laut Indonesia"),
            ),
            SizedBox(height: 18),
            GestureDetector(
              onTap: () {
                Navigator.pushNamed(context, 'third');
              },
              child: Container(
                color: Colors.blue,
                child: Text("Third Screen"),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
