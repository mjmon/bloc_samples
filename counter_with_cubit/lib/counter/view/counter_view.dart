import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../counter.dart';

class CounterView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Center(
        child: BlocBuilder<CounterCubit, int>(
          builder: (context, state) {
            return Text('$state', style: Theme.of(context).textTheme.headline2);
          },
        ),
      ),
      floatingActionButton: Column(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          FloatingActionButton(
            child: Icon(Icons.add),
            onPressed: () => context.bloc<CounterCubit>().increment(),
          ),
          SizedBox(height: 10),
          FloatingActionButton(
            child: Icon(Icons.remove),
            onPressed: () => context.bloc<CounterCubit>().decrement(),
          ),
        ],
      ),
    );
  }
}
