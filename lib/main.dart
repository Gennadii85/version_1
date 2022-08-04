import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:version_1/provider.dart';

void main() {
  runApp(ChangeNotifierProvider(
    create: (_) => Data(),
    child: const MyApp(),
  ));
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
            Text('${context.watch<Data>().age}'),
            IconButton(
              icon: const Icon(Icons.add),
              onPressed: () {
                context.read<Data>().inctement();
              },
            ),
            IconButton(
              icon: const Icon(Icons.remove_circle),
              onPressed: () {
                context.read<Data>().dicrement();
              },
            ),
            
             Text('${context.watch<Data>().pover}'),
            IconButton(
              icon: const Icon(Icons.remove),
              onPressed: () {
                context.read<Data>().todolistTwo();
              },
            ),
          ],
        ),
      )),
    );
  }
}
