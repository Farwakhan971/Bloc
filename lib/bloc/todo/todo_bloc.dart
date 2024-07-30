import 'package:bloc/bloc.dart';
import 'package:bloc_state_management/bloc/todo/todo_event.dart';
import 'package:bloc_state_management/bloc/todo/todo_state.dart';
class TodoBloc extends Bloc<TodoEvent, TodoState>{
  final List<String> todo = [];
  TodoBloc(): super(TodoState()){
    on<AddList> (_AddList);   
  }
  void _AddList(AddList event, Emitter<TodoState> emit){
    todo.add(event.task!);
    emit(state.copyWith(todolist: List.from(todo)));
  }
 
}
