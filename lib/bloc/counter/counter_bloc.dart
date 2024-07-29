import 'package:bloc/bloc.dart';
import 'package:bloc_state_management/bloc/counter/counter_events.dart';
import 'package:bloc_state_management/bloc/counter/counter_state.dart';

class CounterBloc extends Bloc<CounterEvents, CounterSate>{
  CounterBloc(): super(const CounterSate()){
   on<IncrementCounter>(_increment);
   on<DecrementCounter>(_decrement);
  }
  void _increment (IncrementCounter event, Emitter<CounterSate> emit){
    emit(state.copyWith(counter: state.counter + 1));
  }
  void _decrement (DecrementCounter event, Emitter<CounterSate> emit){
    emit(state.copyWith(counter: state.counter - 1));
  }

}