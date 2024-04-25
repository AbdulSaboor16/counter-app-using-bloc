import 'package:equatable/equatable.dart';

class CounterState extends Equatable {
  final int counter;

  const CounterState({
    this.counter = 20,
  });

  CounterState copywith({int? counter}) {
    return CounterState(counter: counter ?? this.counter);
  }

  @override
  // TODO: implement props
  List<Object?> get props => [counter];
}
