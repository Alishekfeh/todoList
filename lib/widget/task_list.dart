import 'package:flutter/material.dart';

class TaskTile extends StatelessWidget {
  final bool isChecked;
  final String taskTitle;
  final void Function(bool) checkBoxChange;
  final Function() listTileDelete;

  const TaskTile(
      {Key key,
      @required this.isChecked,
      @required this.taskTitle,
      @required this.checkBoxChange,
      @required this.listTileDelete})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListTile(
        title: Text(
          taskTitle,
          style: TextStyle(
            decoration: isChecked ? TextDecoration.lineThrough : null,
          ),
        ),
        trailing: Checkbox(
          activeColor: Colors.teal[400],
          value: isChecked,
          onChanged: checkBoxChange,
          //  onChanged:callChange

        ),
        onLongPress: listTileDelete,
    );
  }
}
