import 'package:equatable/equatable.dart';
abstract class ImagePickerEvent extends Equatable{
  const ImagePickerEvent();
  @override
  List<Object?> get props => [];
}
class ImageFromGallery extends ImagePickerEvent{}
class ImageFromCamera extends ImagePickerEvent{}