import 'package:bloc_state_management/bloc/counter/counter_bloc.dart';
import 'package:bloc_state_management/bloc/imagepicker/imagepicker_bloc.dart';
import 'package:bloc_state_management/bloc/todo/todo_bloc.dart';
import 'package:bloc_state_management/ui/Switch_screen.dart';
import 'package:bloc_state_management/ui/home_screen.dart';
import 'package:bloc_state_management/ui/image_picker.dart';
import 'package:bloc_state_management/ui/slider_Screen.dart';
import 'package:bloc_state_management/ui/todo_screen.dart';
import 'package:bloc_state_management/utils/imagepicker_utils.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'bloc/slider/slider_bloc.dart';
import 'bloc/switch/switch_bloc.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(
          create: (context) => CounterBloc(),
        ),
        BlocProvider(
          create: (context) => SwitchBloc(),
        ),
        BlocProvider(
          create: (context) => SliderBloc(),
        ),
        BlocProvider(
          create: (context) => ImagepickerBloc(ImagePickerUtils()),
        ),
        BlocProvider(
          create: (context) => TodoBloc(),
        ),

      ],
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Flutter Demo',
        theme: ThemeData(
          colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
          useMaterial3: true,
        ),
        home: TodoScreen(),
      ),
    );
  }
}
