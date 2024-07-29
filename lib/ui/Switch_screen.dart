import 'package:bloc_state_management/bloc/switch/switch_bloc.dart';
import 'package:bloc_state_management/bloc/switch/switch_events.dart';
import 'package:bloc_state_management/bloc/switch/switch_states.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
class SwitchScreen extends StatefulWidget {
  const SwitchScreen({super.key});
  @override
  State<SwitchScreen> createState() => _SwitchScreenState();
}
class _SwitchScreenState extends State<SwitchScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text('Switch Screen'),
      ),
      body: Column(
        children: [
          BlocBuilder<SwitchBloc, SwitchStates>(builder: (context, state){
            print('build');
            return Center(child: Switch(value: state.isSwicth, onChanged: (newValue){
                 context.read<SwitchBloc>().add(DisableOrEnableNotification());
            },));
          },),
        ],
      ),
    );
  }
}
