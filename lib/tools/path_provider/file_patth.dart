import 'dart:io';

import 'package:emoti/packages.dart';
import 'package:path_provider/path_provider.dart';

class FilePathSingleton {
  static final FilePathSingleton _instance = FilePathSingleton._internal();

  factory FilePathSingleton() {
    return _instance;
  }
  FilePathSingleton._internal();

  //传入文件，返回保存后的路径
  Future<String?> saveFile(XFile xFile) async {
    try {
      Directory appDocDir = await getApplicationDocumentsDirectory();
      File selectFile = File(xFile.path);
      String saveFilePath =
          appDocDir.path + Platform.pathSeparator + xFile.name;
      File saveFile = File(saveFilePath);
      await selectFile.copy(saveFile.path);
      return saveFilePath;
    } catch (e) {
      return null;
    }
  }

  //传入路径，返回文件信息
  Future<File?> getFile(String filePath) async {
    File localFile = File(filePath);
    if(await localFile.exists()){
      return localFile;
    }else{
      return null;
    }
  }
}
