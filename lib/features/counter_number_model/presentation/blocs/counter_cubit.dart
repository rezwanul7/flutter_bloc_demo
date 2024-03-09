import 'package:flutter/cupertino.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_bloc_demo/features/counter_number_model/data/number_model.dart';

class CounterCubit extends Cubit<NumberModel> {
  int clicked = 0;

  CounterCubit(super.initialState);

  void increment() {
    clicked++;
    debugPrint("Increment Button Clicked $clicked times");

    int currentNumber = state.number;
    if (clicked % 3 == 0) {
      currentNumber++;
    }

    emit(NumberModel(number: currentNumber));
  }
}
