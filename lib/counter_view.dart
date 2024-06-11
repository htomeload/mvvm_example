import 'package:flutter/material.dart';
import 'package:mvvm_example/counter_models.dart';
import 'package:mvvm_example/counter_viewmodel.dart';

class CounterView extends StatefulWidget {
  const CounterView({super.key});

  @override
  State<CounterView> createState() => _CounterViewState();
}

class _CounterViewState extends State<CounterView> {
  final CounterViewmodel viewmodel = CounterViewmodel(CounterModels());

  @override
  void initState() {
    super.initState();
    viewmodel.onCounterChanged = () => setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("MVVM"),
      ),
      body: Center(
        child: Text(
          viewmodel.counter.toString(),
          style: const TextStyle(fontSize: 40.0),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: viewmodel.increment,
        child: const Icon(Icons.add),
      ),
    );
  }
}
