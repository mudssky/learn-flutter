// ignore: file_names
import 'package:flutter/material.dart';
import 'package:learn_flutter/models/practice.dart';
import 'package:provider/provider.dart';

import '../logger/index.dart';

class CounterP extends StatelessWidget {
  final String title = "002counter_provider";

  const CounterP({super.key});
  @override
  Widget build(BuildContext context) {
    final practiceModal = context.watch<PracticeModal>();
    return Scaffold(
      appBar: AppBar(
        title: Text(title),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            const Text(
              'You have pushed the button this many times:',
            ),
            Text(
              '${practiceModal.count}',
              style: Theme.of(context).textTheme.headlineMedium,
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          gl.d("add button pressed");
          practiceModal.setCount(practiceModal.count + 1);
        },
        tooltip: 'Increment',
        child: const Icon(Icons.add),
      ), // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}
