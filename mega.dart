import 'package:flutter/material.dart';
import 'dart:math';

class MegaSenaApp extends StatefulWidget {
  const MegaSenaApp({Key? key}) : super(key: key);

  @override
  State<MegaSenaApp> createState() => _MegaSenaAppState();
}

class _MegaSenaAppState extends State<MegaSenaApp> {
  List<int> numbers = [];

  void generateRandomNumbers() {
    Set<int> uniqueNumbers = Set();

    while (uniqueNumbers.length < 6) {
      int number = Random().nextInt(60) + 1;
      uniqueNumbers.add(number);
    }

    setState(() {
      numbers = uniqueNumbers.toList();
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('App Sorteio MegaSena'),
        backgroundColor: Colors.green,
      ),
      body: Container(
        height: double.infinity,
        decoration: BoxDecoration(
          border: Border.all(
            width: 10,
            color: Colors.green,
          ),
        ),
        child: Center(
          child: SingleChildScrollView(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisSize: MainAxisSize.max,
              children: [
                Container(
                  child: Image.asset(
                    'images/logo.png',
                    width: 365,
                  ),
                ),
                const SizedBox(height: 20),
                Text(
                  '$numbers',
                  style: const TextStyle(
                    fontSize: 26,
                    color: Colors.yellow,
                  ),
                ),
                const SizedBox(height: 20),
                ElevatedButton(
                  onPressed: generateRandomNumbers,
                  child: Text(
                    'Sortear!',
                    style: TextStyle(color: Colors.white),
                  ),
                  style: ElevatedButton.styleFrom(
                    foregroundColor: Colors.white,
                    backgroundColor: Colors.green,
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
