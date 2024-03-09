import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_bloc_demo/features/calculator/presentation/blocs/calculator/calculator_events.dart';
import 'package:flutter_bloc_demo/features/calculator/presentation/blocs/calculator/calculator_states.dart';

class CalculatorBloc extends Bloc<CalculatorEvent, CalculatorState> {
  CalculatorBloc() : super(CalculatorInitialState()) {
    on<CalculatorAdditionEvent>((event, emit) async {
      try {
        var number1 = double.parse(event.number1);
        var number2 = double.parse(event.number2);
        emit(CalculatorResultState(result: number1 + number2));
      } on FormatException catch (e) {
        emit(CalculatorErrorState(errorMessage: "Invalid Input"));
      }
    });
    on<CalculatorSubtractionEvent>((event, emit) async {
      try {
        var number1 = double.parse(event.number1);
        var number2 = double.parse(event.number2);
        emit(CalculatorResultState(result: number1 - number2));
      } on Exception catch (e) {
        emit(CalculatorErrorState(errorMessage: "Invalid Input"));
      }
    });
    on<CalculatorMultiplicationEvent>((event, emit) async {
      try {
        var number1 = double.parse(event.number1);
        var number2 = double.parse(event.number2);
        emit(CalculatorResultState(result: number1 * number2));
      } on Exception catch (e) {
        emit(CalculatorErrorState(errorMessage: "Invalid Input"));
      }
    });
    on<CalculatorDivisionEvent>((event, emit) async {
      try {
        var number1 = double.parse(event.number1);
        var number2 = double.parse(event.number2);
        emit(CalculatorResultState(result: number1 / number2));
      } on Exception catch (e) {
        emit(CalculatorErrorState(errorMessage: "Invalid Input"));
      }
    });
  }
}
