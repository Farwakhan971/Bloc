import 'package:bloc/bloc.dart';
import 'package:bloc_state_management/bloc/slider/slider_event.dart';
import 'package:bloc_state_management/bloc/slider/slider_state.dart';

class SliderBloc extends Bloc<SliderEvent, SliderState>{
  SliderBloc() : super(SliderState()){
    on<SliderMove> (_Slidermove);}
  void _Slidermove(SliderMove event, Emitter<SliderState> emit) {
    emit(state.copyWith(sliderValue: event.slider));
  }
}
