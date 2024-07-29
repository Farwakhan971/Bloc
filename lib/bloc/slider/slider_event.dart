import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';

abstract class SliderEvent extends Equatable{
  const SliderEvent();
  @override
  List<Object?> get props => [];
}
class SliderMove extends SliderEvent{
  double? slider;
  SliderMove({required this.slider});
}