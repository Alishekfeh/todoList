import 'package:flutter/material.dart';
import 'package:todolist/models/task_data.dart';
import 'package:todolist/widget/tasks_list.dart';
import 'package:provider/provider.dart';

import 'add_task_screen.dart';
class TaskScreen extends StatelessWidget {



  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,

      floatingActionButton: FloatingActionButton(
        onPressed: (){
          showModalBottomSheet(
            backgroundColor: Colors.white,
              barrierColor: Colors.teal,

              isScrollControlled: true,
              context: context, builder: (context)=>
          SingleChildScrollView(
            child: Padding(
              padding: EdgeInsets.only(
                   bottom: MediaQuery.of(context).size.height/24,
                  // top: MediaQuery.of(context).viewInsets.top
              ),
              child: AddTaskScreen(addTaskCallback:(newTaskTile){
                // setState(() {
                //   tasks.add(Task(name: newTaskTile));
                //   Navigator.pop(context);
                // });

              }),
            ),
          )
          );
        },
        backgroundColor: Colors.indigo[400],
        child: Icon(Icons.add),
      ),
      backgroundColor: Colors.teal[400],
      body: Container(
        padding:const EdgeInsets.only(
          top: 60,
          left: 20,
          right: 20,
          bottom: 80
        ),
        child: Column(
          children: [
            Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Icon(Icons.playlist_add_check,size: 40,color: Colors.white,),
                SizedBox(width: 20,),
                Text("toDayDo",style: TextStyle(
                  color: Colors.white,
                  fontSize: 40,
                  fontWeight: FontWeight.bold
                ),),

              ],
            ),
            Text("${Provider.of<TaskData>(context).tasks.length} tasks",style: TextStyle(
              color: Colors.white,
              fontSize: 18,
            ),),
            SizedBox(height: 20,),
            Expanded(
              child: Container(
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(20),
                ),
                child: TasksList(),
              ),
            )
          ],
        ),
      ),
    );
  }
}

