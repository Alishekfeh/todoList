import 'package:flutter/material.dart';
import 'package:todolist/models/task.dart';
class TaskData extends ChangeNotifier{
  List<Task> tasks = [
    Task(name: 'go Shopping'),
    Task(name: 'buy car'),
    Task(name: 'read book'),
  ];

  void addTask(String newTaskTile){
    tasks.add(Task(name: newTaskTile));
    notifyListeners();
  }
  void updateTask(Task task){
    task.doneChange();
    notifyListeners();
  }
  void deleteTask(Task task){
    tasks.remove(task);
    notifyListeners();
  }
}