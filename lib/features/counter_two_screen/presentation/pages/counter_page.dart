import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_bloc_demo/features/counter_two_screen/presentation/blocs/counter_cubit.dart';
import 'package:flutter_bloc_demo/features/counter_two_screen/presentation/widgets/counter_button_widget.dart';
import 'package:flutter_bloc_demo/features/counter_two_screen/presentation/widgets/counter_result_widget.dart';

class CounterTwoScreenPage extends StatelessWidget {
  const CounterTwoScreenPage({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => CounterCubit(0),
      child: Scaffold(
        appBar: AppBar(
          title: const Text("Counter"),
        ),
        body: const Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            CounterResultWidget(),
            CounterResultWidget(),
            CounterButtonWidget()
          ],
        ),
      ),
    );
  }
}
