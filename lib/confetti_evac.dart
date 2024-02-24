library confetti_evac;

import 'package:eval_annotation/eval_annotation.dart';
import 'package:flutter/material.dart';

@RuntimeOverride('#myapp_main_scaffold_1')
Widget scaffoldUpdate(BuildContext context) {
  return const CounterSample();
}

class CounterSample extends StatefulWidget {
  const CounterSample({super.key});

  @override
  State<CounterSample> createState() => _CounterSampleState();
}

class _CounterSampleState extends State<CounterSample> {
  int counter = 0;
  incrementCounter() {
    counter++;
    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Time counter"),
        backgroundColor: Colors.indigo,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            const Text(
              'You have added this many seconds:',
            ),
            Text(
              '$counter',
              style: Theme.of(context).textTheme.headlineMedium,
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: incrementCounter,
        tooltip: 'Increment',
        child: const Icon(Icons.access_time_filled),
      ),
    );
  }
}
