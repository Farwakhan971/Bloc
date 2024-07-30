import 'package:image_picker/image_picker.dart';

class ImagePickerUtils{
  ImagePicker imagePicker = ImagePicker();

  Future<XFile?> camera() async{
    final XFile? file = await imagePicker.pickImage(source: ImageSource.camera);
    return file;
  }

  Future<XFile?> gallery() async{
    final XFile? file = await imagePicker.pickImage(source: ImageSource.gallery);
    return file;
  }
}