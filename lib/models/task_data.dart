import 'dart:collection';
import 'package:flutter/foundation.dart';
import 'task.dart';

class TaskData extends ChangeNotifier {
  /**
   * Keeps informations about all tasks.
   *
   *    List<Task> _tasks - list of tasks
   *
   * Methods
   *    int get taskCount - amount of tasks
   *    UnmodifiableListView get tasks - allows to look at list, without making changes
   *    void addTask(String taskName) - allowing to add tasks to the list
   *    void isDone - changing the state of task
   *    void deleteTask - deleting task from list
   */
  List<Task> _tasks = [
    Task(name: 'buy milk'),
    Task(name: 'buy bread'),
    Task(name: 'buy eggs'),
  ];

  // Get amount of tasks
  int get taskCount => _tasks.length;

  // Allows to look at list, without making changes
  UnmodifiableListView get tasks => UnmodifiableListView(_tasks);

  void addTask(String taskName){
    // Adding task to task list
    _tasks.add(Task(name: taskName));
    notifyListeners();
  }

  void isDone(int index){
    _tasks[index].toggleDone();
    notifyListeners();
  }

  void deleteTask(int index){
    // Remove task
    _tasks.removeAt(index);
    notifyListeners();
  }
}