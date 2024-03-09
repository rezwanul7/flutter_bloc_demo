import 'package:equatable/equatable.dart';

class NumberModel extends Equatable{
  final int number;

  const NumberModel({required this.number});

  @override
  String toString() {
    return 'NumberModel{number: $number}';
  }

  @override
  List<Object?> get props => [number];
}
