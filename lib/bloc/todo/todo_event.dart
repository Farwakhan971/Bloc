import 'package:equatable/equatable.dart';

class TodoEvent extends Equatable{
  const TodoEvent();
  @override
  List<Object?> get props => [];
}

class AddList extends TodoEvent{
  String? task;
  AddList({required this.task});
  @override
  List<Object?> get props => [task];

}

class RemoveList extends TodoEvent{
   Object? removeTask;
   RemoveList({this.removeTask});

   @override
   List<Object?> get props => [removeTask];
}
