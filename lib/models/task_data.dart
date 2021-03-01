import 'dart:collection';
import 'package:flutter/foundation.dart';
import 'task.dart';

class TaskData extends ChangeNotifier {
  List<Task> _tasks = [
    Task(name: 'buy milk'),
    Task(name: 'buy bread'),
    Task(name: 'buy eggs'),
  ];

  int get taskCount => _tasks.length;
  UnmodifiableListView get tasks => UnmodifiableListView(_tasks);

  void addTask(String taskName){
    _tasks.add(Task(name: taskName));
    notifyListeners();
  }

  void isDone(int index){
    _tasks[index].toggleDone();
    notifyListeners();
  }

  void deleteTask(int index){
    _tasks.removeAt(index);
    notifyListeners();
  }
}