import 'dart:io';
import 'package:bloc_state_management/bloc/imagepicker/imagepicker_bloc.dart';
import 'package:bloc_state_management/bloc/imagepicker/imagepicker_state.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import '../bloc/imagepicker/imagepicker_event.dart';

class ImagePickerScreen extends StatefulWidget {
  const ImagePickerScreen({super.key});

  @override
  State<ImagePickerScreen> createState() => _ImagePickerScreenState();
}

class _ImagePickerScreenState extends State<ImagePickerScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
         appBar: AppBar(
           title: Text('Image Picker'),
         ),
      body: BlocBuilder<ImagepickerBloc, ImagepickerState>(builder: (context, state) {
        return state.file == null ? InkWell(
          onTap: (){
            context.read<ImagepickerBloc>().add(ImageFromCamera());
          },
          child: CircleAvatar(
            child: Icon(Icons.browse_gallery),
          ),
        ) : Image.file(File(state.file!.path.toString()));
      }),
    );
  }
}
