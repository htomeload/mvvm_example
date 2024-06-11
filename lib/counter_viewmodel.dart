import 'package:mvvm_example/counter_models.dart';

typedef VoidCallback = void Function();

class CounterViewmodel {
  final CounterModels _models;
  VoidCallback? onCounterChanged;

  CounterViewmodel(this._models);

  int get counter => _models.value;

  void increment() {
    _models.value++;
    onCounterChanged?.call();
  }
}
