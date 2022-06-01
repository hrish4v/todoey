import 'dart:collection';

import 'package:flutter/material.dart';
import 'package:todoey/models/task.dart';

class TaskData extends ChangeNotifier{
  List<Task> _tasks=[
    Task(task: 'Go to the gym'),
  Task(task: 'Buy eggs'),
  ];

  UnmodifiableListView<Task> get tasks{
    return UnmodifiableListView(_tasks);
  }

  int get taskLength{
    return _tasks.length;
  }

  void addTask(String newTask){
    final task=Task(task: newTask);
    _tasks.add(task);
    notifyListeners();
  }

  void updateTask(Task task){
    task.troggleDone();
    notifyListeners();
  }

  void removeTask(Task task){
    _tasks.remove(task);
    notifyListeners();
  }
}