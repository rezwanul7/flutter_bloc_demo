import 'package:flutter/material.dart';
import 'package:flutter_bloc_demo/features/calculator/presentation/pages/calculator_page.dart';
import 'package:flutter_bloc_demo/features/counter/presentation/pages/counter_page.dart';
import 'package:flutter_bloc_demo/features/counter_number_model/presentation/pages/counter_number_model_page.dart';
import 'package:flutter_bloc_demo/features/counter_two_screen/presentation/pages/counter_page.dart';

class HomePage extends StatelessWidget {
  final String title;

  const HomePage({super.key, required this.title});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(title),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            FilledButton(
              onPressed: () {
                Navigator.of(context).push(
                  MaterialPageRoute(
                    builder: (context) => const CounterPage(),
                  ),
                );
              },
              child: const Text('Counter Demo'),
            ),
            FilledButton(
              onPressed: () {
                Navigator.of(context).push(
                  MaterialPageRoute(
                    builder: (context) => const CounterNumberModelPage(),
                  ),
                );
              },
              child: const Text('Counter Number Model Demo'),
            ),
            FilledButton(
              onPressed: () {
                Navigator.of(context).push(
                  MaterialPageRoute(
                    builder: (context) => const CalculatorPage(),
                  ),
                );
              },
              child: const Text('Calculator Demo'),
            ),
            FilledButton(
              onPressed: () {
                Navigator.of(context).push(
                  MaterialPageRoute(
                    builder: (context) => const CounterTwoScreenPage(),
                  ),
                );
              },
              child: const Text('Counter MultiScreen'),
            ),
          ],
        ),
      ),
    );
  }
}
