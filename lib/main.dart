import 'package:flutter/material.dart';
import 'dart:math';

void main() {
  return runApp(
    MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.grey,
        appBar: AppBar(
          title: const Text('今日の晩飯'),
          backgroundColor: Colors.redAccent,
        ),
        body: const FoodPage(),
      ),
    ),
  );
}

class FoodPage extends StatefulWidget {
  const FoodPage({Key? key}) : super(key: key);

  @override
  State<FoodPage> createState() => _FoodPageState();
}

class _FoodPageState extends State<FoodPage> {
  int FoodNumber = 3;

  @override
  Widget build(BuildContext context) {
    return Center(
      child: TextButton(
        onPressed: () {
          setState(() {
            FoodNumber = Random().nextInt(5) + 1;
          });
        },
        child: Image.asset('images/food$FoodNumber.png'),
      ),
    );
  }
}
