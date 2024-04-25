import 'package:blocapp/counter/counter_block.dart';
import 'package:blocapp/counter/counter_event.dart';
import 'package:blocapp/counter/counter_state.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class CounterScreen extends StatefulWidget {
  const CounterScreen({super.key});

  @override
  State<CounterScreen> createState() => _CounterScreenState();
}

class _CounterScreenState extends State<CounterScreen> {
  @override
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Counter Example"),
        centerTitle: true,
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          BlocBuilder<CounterBloc, CounterState>(builder: (context, state) {
            return Center(
              child: Text(
                state.counter.toString(),
                style: TextStyle(fontSize: 60),
              ),
            );
          }),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: ElevatedButton(
                    onPressed: () {
                      context.read<CounterBloc>().add(IncrementCounter());
                    },
                    child: Text("Increment")),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: ElevatedButton(
                    onPressed: () {
                      context.read<CounterBloc>().add(DecrementCounter());
                    },
                    child: Text("Decrement")),
              )
            ],
          )
        ],
      ),
    );
  }
}
