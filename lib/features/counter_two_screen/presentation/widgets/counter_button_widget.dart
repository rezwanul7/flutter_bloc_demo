import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_bloc_demo/features/counter_two_screen/presentation/blocs/counter_cubit.dart';

class CounterButtonWidget extends StatelessWidget {
  const CounterButtonWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return FilledButton(
      onPressed: () {
        BlocProvider.of<CounterCubit>(context).increment();
      },
      child: const Text('Increase Count'),
    );
  }
}
