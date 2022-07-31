import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
          body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            const Text('increment'),
            IconButton(
              icon: const Icon(Icons.add),
              onPressed: () {},
            ),
            const Text('dicrement'),
            IconButton(
              icon: const Icon(Icons.remove),
              onPressed: () {},
            ),
          ],
        ),
      )),
    );
  }
}
