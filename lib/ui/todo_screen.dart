import 'package:bloc_state_management/bloc/todo/todo_bloc.dart';
import 'package:bloc_state_management/bloc/todo/todo_event.dart';
import 'package:bloc_state_management/bloc/todo/todo_state.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
class TodoScreen extends StatefulWidget {
  const TodoScreen({super.key});
  @override
  State<TodoScreen> createState() => _TodoScreenState();
}
class _TodoScreenState extends State<TodoScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: BlocBuilder<TodoBloc, TodoState>(

  builder: (context, state) {
    if(state.todolist.isEmpty){
      return Center(child: Text('No Task is found', style: TextStyle(fontSize: 20),));
    }
    else if(state.todolist.isNotEmpty){
      return ListView.builder(
        itemCount: state.todolist.length,
        itemBuilder: (context, index) {
          return ListTile(title: Text(state.todolist[index]),
            trailing: const Icon(Icons.delete),
          );},
      );
    }
    else{
      return Container();
    }
  },
),
      floatingActionButton: FloatingActionButton(
        onPressed: (){
          for(int i = 0; i<10; i++){
            context.read<TodoBloc>().add(AddList(task: 'task $i'));
          }

        },
        child: const Icon(Icons.add),
      ),
    );
  }
}
