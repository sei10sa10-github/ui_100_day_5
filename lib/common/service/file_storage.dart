import 'dart:io';

import 'package:injectable/injectable.dart';
import 'package:path_provider/path_provider.dart';

@singleton
class FileStorage {

  Future<String> get _localFilePath async {
    final directory = await getApplicationDocumentsDirectory();
    return directory.path;
  }

  Future<String> read(String fileName) async {
    final path = await _localFilePath;
    final file = File('$path/$fileName');
    return file.readAsString();
  }

  void store(String fileName, String contents) {
    final path = _localFilePath;
    final file = File('$path/$fileName');
    file.writeAsString(contents);
  }
}