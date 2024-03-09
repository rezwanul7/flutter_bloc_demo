abstract class CalculatorEvent {
  final String number1;
  final String number2;

  CalculatorEvent({required this.number1, required this.number2});
}

class CalculatorAdditionEvent extends CalculatorEvent {
  CalculatorAdditionEvent({required super.number1, required super.number2});
}

class CalculatorSubtractionEvent extends CalculatorEvent {
  CalculatorSubtractionEvent({required super.number1, required super.number2});
}

class CalculatorMultiplicationEvent extends CalculatorEvent {
  CalculatorMultiplicationEvent(
      {required super.number1, required super.number2});
}

class CalculatorDivisionEvent extends CalculatorEvent {
  CalculatorDivisionEvent({required super.number1, required super.number2});
}
