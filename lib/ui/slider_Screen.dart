import 'package:bloc_state_management/bloc/slider/slider_bloc.dart';
import 'package:bloc_state_management/bloc/slider/slider_event.dart';
import 'package:bloc_state_management/bloc/slider/slider_state.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
class SliderScreen extends StatefulWidget {
  const SliderScreen({super.key});
  @override
  State<SliderScreen> createState() => _SliderScreenState();
}

class _SliderScreenState extends State<SliderScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Bloc'),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          BlocBuilder<SliderBloc, SliderState>(builder: (context, state) {

            return Center(
              child: Container(
                color: Colors.green.withOpacity(state.sliderValue),
                height: 200,
                width: 200,
                child: const Center(child: Text('Slider Container', style: TextStyle(color: Colors.white),)),
              ),
            );
          },),
          const SizedBox(
            height: 10,
          ),
          BlocBuilder<SliderBloc, SliderState>(builder: (context, state) {
             return Slider(value: state.sliderValue, onChanged: (newValue){
               print(newValue);
                  context.read<SliderBloc>().add(SliderMove(slider: newValue));
             });
          },),
        ],
      ),
    );
  }
}
