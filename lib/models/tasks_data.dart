import 'package:flutter/material.dart';
import 'package:todoey_flutter/models/tasks.dart';

class TaskData extends ChangeNotifier {
  List<Task> tasks = [
    Task(name: 'Buy milk'),
    Task(name: 'Buy egg'),
    // Task(name: 'Buy bread'),
  ];
}
