import 'package:equatable/equatable.dart';

class CounterSate extends Equatable{
  final int counter;
  const CounterSate({this.counter = 0});

  CounterSate copyWith({int? counter}){
    return CounterSate(
      counter: counter ?? this.counter
    );
  }
  @override
  List<Object?> get props => [counter];

}