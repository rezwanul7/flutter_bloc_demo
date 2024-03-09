import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_bloc_demo/features/calculator/presentation/blocs/calculator/calculator_bloc.dart';
import 'package:flutter_bloc_demo/features/calculator/presentation/blocs/calculator/calculator_events.dart';

class CalculatorForm extends StatelessWidget {
  CalculatorForm({super.key});

  final TextEditingController _number1Controller = TextEditingController();
  final TextEditingController _number2Controller = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: Column(
        children: [
          TextField(
            controller: _number1Controller,
            decoration: const InputDecoration(labelText: 'Enter Number 1'),
            keyboardType: TextInputType.number,
            inputFormatters: <TextInputFormatter>[
              FilteringTextInputFormatter.digitsOnly
            ], // Only numbers can be entered
          ),
          const SizedBox(height: 20),
          TextField(
            controller: _number2Controller,
            decoration: const InputDecoration(labelText: 'Enter Number 2'),
            keyboardType: TextInputType.number,
            inputFormatters: <TextInputFormatter>[
              FilteringTextInputFormatter.digitsOnly
            ],
          ),
          const SizedBox(height: 20),
          FilledButton(
            onPressed: () {
              BlocProvider.of<CalculatorBloc>(context).add(
                  CalculatorAdditionEvent(
                      number1: _number1Controller.text,
                      number2: _number2Controller.text));
            },
            child: const Text('Add'),
          ),
        ],
      ),
    );
  }
}
