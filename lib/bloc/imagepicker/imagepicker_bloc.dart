import 'package:bloc/bloc.dart';
import 'package:bloc_state_management/bloc/imagepicker/imagepicker_event.dart';
import 'package:bloc_state_management/utils/imagepicker_utils.dart';
import 'package:image_picker/image_picker.dart';
import 'imagepicker_state.dart';

class ImagepickerBloc extends Bloc<ImagePickerEvent, ImagepickerState>{
  ImagePickerUtils imagePickerUtils = ImagePickerUtils();
  ImagepickerBloc(this.imagePickerUtils) :super(ImagepickerState()){
    on<ImageFromGallery>(_galleryImage);
    on<ImageFromCamera>(_cameraImage);
  }
  void _cameraImage (ImageFromCamera event, Emitter<ImagepickerState> emit) async{
    final XFile? file = await imagePickerUtils.camera();
    emit(state.copyWith(file: file));
  }
  void _galleryImage(ImageFromGallery event, Emitter<ImagepickerState> emit) async{
    final XFile? file = await imagePickerUtils.gallery();
    emit(state.copyWith(file: file));
  }
}