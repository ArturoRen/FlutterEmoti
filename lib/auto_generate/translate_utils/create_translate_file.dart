import 'dart:io';

void translateMain() async {
  List<String> fileNameList = [];
  //获取当前语言文件夹的语言
  final directory = Directory('lib/translate/lang');
  final files = directory.listSync();
  File? defaultFile;
  if (files.isNotEmpty) {
    if (files.first is File) {
      defaultFile = files.first as File?;
    }
  }
  for (var file in files) {
    if (file is File) {
      String fileName =
          file.path.split(Platform.pathSeparator).last.split('.').first;
      fileNameList.add(fileName);
    }
  }


  final file = File('lib/translate/translations.dart');
  final lines = await file.readAsLines();
  final regex = RegExp(r"Locale\('(\w+)','(\w+)'\)");
  for (int i = 0; i < lines.length; i++) {
    String line = lines[i];
    final match = regex.firstMatch(line);
    if (match != null) {
      final language = match.group(1);
      final region = match.group(2);
      final result = "$language" "_" "$region";
      if (!fileNameList.contains(result) && defaultFile != null) {
        //当前语言是新加的，添加一份
        File file =
            File('${directory.path}${Platform.pathSeparator}$result.dart');
        file.createSync(recursive: true);
        print("创建$result.dart文件成功");
        var sourceLines = defaultFile.readAsLinesSync();
        String defaultLangKeys =
            "${defaultFile.path.split(Platform.pathSeparator).last.split('.').first}Keys";
        //写入内容
        for (var sourceLine in sourceLines) {
          //文件key
          String langKey = '${result.replaceAll('_', '')}Keys';
          if (sourceLine.contains(defaultLangKeys)) {
            sourceLine.replaceAll(defaultLangKeys, langKey);
          }
          file.writeAsStringSync('$sourceLine\n', mode: FileMode.append);
        }
        print("国际化翻译字段写入$result.dart文件成功");
        fileNameList.add(result);
      } else {
        print("$result.dart已经存在");
      }
    }
  }
}
