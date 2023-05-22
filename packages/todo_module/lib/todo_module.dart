library todo_module;

import 'package:hive_flutter/hive_flutter.dart';
import 'package:todo_module/todo_model.dart';

/// A Calculator.
class TodoModule {

  static Future<void> initial() async {
    await Hive.initFlutter();
    Hive.registerAdapter(TodoAdapter());
  }
}
