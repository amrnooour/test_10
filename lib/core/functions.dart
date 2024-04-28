import 'dart:io';

import 'package:image_picker/image_picker.dart';
import 'package:device_info_plus/device_info_plus.dart';
import 'package:permission_handler/permission_handler.dart';

Future<File?> cameraPicker() async {
  var image = await ImagePicker().pickImage(source: ImageSource.camera);
  if (image != null) {
    return File(image.path);
  }
  return null;
}

Future<File?> galleryPicker() async {
  PermissionStatus status;
  if (Platform.isAndroid) {
    final andriodInfo = await DeviceInfoPlugin().androidInfo;
    if (andriodInfo.version.sdkInt <= 32) {
      status = await Permission.storage.request();
    } else {
      status = await Permission.phone.request();
    }
    if (status.isGranted) {
      var image = await ImagePicker().pickImage(source: ImageSource.gallery);
      if (image != null) {
        return File(image.path);
      }
    }
  }
  return null;
}
