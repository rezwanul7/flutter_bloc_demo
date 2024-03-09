import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_bloc_demo/features/counter_number_model/data/number_model.dart';
import 'package:flutter_bloc_demo/features/counter_number_model/presentation/blocs/counter_cubit.dart';

class CounterNumberModelPage extends StatelessWidget {
  const CounterNumberModelPage({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => CounterCubit(const NumberModel(number: 0)),
      child: Scaffold(
        appBar: AppBar(
          title: const Text("Counter Number Model"),
        ),
        body: BlocBuilder<CounterCubit, NumberModel>(
          builder: (context, state) {
            debugPrint("UI update initiated for : $state");
            return Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Text(
                    "Result : $state",
                    style: Theme.of(context).textTheme.headlineSmall,
                  ),
                  const SizedBox(height: 12,),
                  FilledButton(
                    onPressed: () {
                      BlocProvider.of<CounterCubit>(context).increment();
                    },
                    child: const Text('Increase Count'),
                  ),
                ],
              ),
            );
          },
        ),
      ),
    );
  }
}
