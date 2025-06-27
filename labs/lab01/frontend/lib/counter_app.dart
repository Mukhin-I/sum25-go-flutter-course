import 'package:flutter/material.dart';

class CounterApp extends StatefulWidget {
  const CounterApp({Key? key}) : super(key: key);

  @override
  State<CounterApp> createState() => _CounterAppState();
}

class _CounterAppState extends State<CounterApp> {
  int _counter = 0;
  bool _showCounter = false;

  void _increment() {
    setState(() {
      _counter++;
    });
  }

  void _decrement() {
    setState(() {
      _counter--;
    });
  }

  void _reset() {
    setState(() {
      _counter = 0;
    });
  }

  // void _revealCounter() {
  //   setState(() {
  //     _showCounter = true;
  //   });
  // }

  @override
Widget build(BuildContext context) {
  return Center(
    child: Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        const Text(
          'Counter value:',
          style: TextStyle(fontSize: 24),
        ),
        Text(
          '$_counter',
          style: const TextStyle(
            fontSize: 48,
            fontWeight: FontWeight.bold,
          ),
        ),
        const SizedBox(height: 20),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            IconButton(
              onPressed: _increment,
              icon: const Icon(Icons.add),
              tooltip: 'Increment',
            ),
            IconButton(
              onPressed: _decrement,
              icon: const Icon(Icons.remove),
              tooltip: 'Decrement',
            ),
            IconButton(
              onPressed: _reset,
              icon: const Icon(Icons.refresh),
              tooltip: 'Reset',
            ),
          ],
        ),
      ],
    ),
  );
}

}
