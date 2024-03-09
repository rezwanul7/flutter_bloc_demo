import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_bloc_demo/features/counter_two_screen/presentation/blocs/counter_cubit.dart';

class CounterResultWidget extends StatelessWidget {
  const CounterResultWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<CounterCubit, int>(
      builder: (context, state) {
        return Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Text(
              "Result : $state",
              style: Theme.of(context).textTheme.headlineSmall,
            ),
            const SizedBox(
              height: 12,
            ),
            const Divider(
              thickness: 2,
            )
          ],
        );
      },
    );
  }
}
