import 'package:equatable/equatable.dart';
class TodoState extends Equatable{
  List<String> todolist;
  TodoState({this.todolist = const []});
  @override
  List<Object?> get props => [todolist];

  TodoState copyWith ({List<String>? todolist}){
    return TodoState(
      todolist: todolist ?? this.todolist
    );
}
}