import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_bloc_demo/features/calculator/presentation/blocs/calculator/calculator_bloc.dart';
import 'package:flutter_bloc_demo/features/calculator/presentation/blocs/calculator/calculator_states.dart';

class CalculatorResult extends StatelessWidget {
  const CalculatorResult({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<CalculatorBloc, CalculatorState>(
      builder: (context, state) {
        if (state is CalculatorInitialState) {
          return Column(
            children: [
              Center(
                child: Text(
                  "Instruction: Enter Number 1, Number 2 and then click add.",
                  style: Theme.of(context).textTheme.bodyMedium,
                ),
              ),
            ],
          );
        } else if (state is CalculatorResultState) {
          return Text(
            "Result : ${state.result}",
            style: Theme.of(context).textTheme.headlineMedium,
          );
        } else if (state is CalculatorErrorState) {
          return Text(
            state.errorMessage,
            style: Theme.of(context)
                .textTheme
                .bodyLarge
                ?.copyWith(color: Theme.of(context).colorScheme.error),
          );
        }
        return const Center(child: Text("Unknown State"));
      },
    );
  }
}
