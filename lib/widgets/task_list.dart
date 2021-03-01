import 'package:flutter/material.dart';
import 'task_tile.dart';
import 'package:provider/provider.dart';
import '../models/task_data.dart';

class TasksList extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Consumer<TaskData>(
      builder: (context, taskData, child) {
        return ListView.builder(itemBuilder: (context ,index) {
          return TaskTile(
            name: taskData.tasks[index].name,
            isDone: taskData.tasks[index].isDone,
            chceckBoxCallback: (checkState){
              Provider.of<TaskData>(context, listen: false).isDone(index);
            },
            callbackLongPress: (){
              Provider.of<TaskData>(context, listen: false).deleteTask(index);
            },
          );
        },
          itemCount: taskData.taskCount,
        );
      },
    );
  }
}