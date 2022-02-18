import 'package:flutter/material.dart';
import 'package:todolist/models/task_data.dart';
import 'package:todolist/widget/task_list.dart';
import 'package:provider/provider.dart';

class TasksList extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Consumer<TaskData>(
      builder: (context, taskData, child) =>  ListView.builder(
          itemCount: taskData.tasks.length,
          itemBuilder: (context, index) => TaskTile(
            isChecked: taskData.tasks[index].isDone,
            taskTitle: taskData.tasks[index].name,
            checkBoxChange: (newValue) {
              taskData.updateTask(taskData.tasks[index]);
            },
            listTileDelete: (){
              taskData.deleteTask(taskData.tasks[index]);
            },
          )),

    );

  }
}
