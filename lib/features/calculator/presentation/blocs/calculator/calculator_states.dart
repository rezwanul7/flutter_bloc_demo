import 'package:equatable/equatable.dart';

abstract class CalculatorState extends Equatable {
  List<Object?> get props => [];
}

class CalculatorInitialState extends CalculatorState {}

class CalculatorResultState extends CalculatorState {
  final double result;

  CalculatorResultState({required this.result});

  List<Object?> get props => [result];
}

class CalculatorErrorState extends CalculatorState {
  final String errorMessage;

  CalculatorErrorState({required this.errorMessage});

  List<Object?> get props => [errorMessage];
}
