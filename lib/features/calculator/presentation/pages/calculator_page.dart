import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_bloc_demo/features/calculator/presentation/blocs/calculator/calculator_bloc.dart';
import 'package:flutter_bloc_demo/features/calculator/presentation/widgets/calculator_form.dart';
import 'package:flutter_bloc_demo/features/calculator/presentation/widgets/calculator_result.dart';

class CalculatorPage extends StatelessWidget {
  const CalculatorPage({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => CalculatorBloc(),
      child: Scaffold(
        appBar: AppBar(
          title: const Text("Calculator"),
        ),
        body: Column(
          children: [
            CalculatorForm(),
            const CalculatorResult(),
          ],
        ),
      ),
    );
  }
}
