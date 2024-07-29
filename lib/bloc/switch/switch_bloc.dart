import 'package:bloc/bloc.dart';
import 'package:bloc_state_management/bloc/switch/switch_events.dart';
import 'package:bloc_state_management/bloc/switch/switch_states.dart';

class SwitchBloc extends Bloc<SwitchEvents, SwitchStates> {
  SwitchBloc() : super(SwitchStates()) {
    on<DisableOrEnableNotification>(_disableOrEnable);
  }

  void _disableOrEnable(DisableOrEnableNotification event, Emitter<SwitchStates> emit) {
    emit(state.copyWith(isSwitch: !state.isSwicth));
  }
}
