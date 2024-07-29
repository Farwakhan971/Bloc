import 'package:equatable/equatable.dart';
class SwitchStates extends Equatable{
  bool isSwicth;
  SwitchStates({this.isSwicth = false});
  @override
  List<Object?> get props => [isSwicth];

  SwitchStates copyWith({bool? isSwitch}){
    return SwitchStates(
      isSwicth: isSwitch ?? this.isSwicth,
    );
  }

}