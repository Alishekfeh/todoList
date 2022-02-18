import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:todolist/models/task_data.dart';

class AddTaskScreen extends StatelessWidget {
  final Function addTaskCallback;

  AddTaskScreen({Key key, this.addTaskCallback});

  @override
  Widget build(BuildContext context) {
    String newTaskTile;
    return Container(
      padding: EdgeInsets.all(30),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Text(
            'Add Task',
            textAlign: TextAlign.center,
            style: TextStyle(
                fontSize: 30,
                color: Colors.indigo,
                fontWeight: FontWeight.bold),
          ),
          TextField(
            autofocus: true,
            textAlign: TextAlign.center,
            onChanged: (newText) {
              newTaskTile = newText;
            },
          ),
          SizedBox(
            height: 20,
          ),
          TextButton(
            onPressed: () {
              Provider.of<TaskData>(context,listen: false).addTask(newTaskTile);
              Navigator.pop(context);
            },
            child: Text('Add'),
            style: TextButton.styleFrom(
                backgroundColor: Colors.teal[400], primary: Colors.white),
          )
        ],
      ),
    );
  }
}
