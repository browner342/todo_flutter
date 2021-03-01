import 'package:flutter/material.dart';
import '../models/task_data.dart';
import 'package:provider/provider.dart';

class AddTaskScreen extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    String newTask;

    return Container(
      // Can't get border radius in other, faster way (as far as parent allows)
      color: Color(0xff757575),
      child: Container(
        padding: EdgeInsets.all(30.0),
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.only(topLeft: Radius.circular(20.0), topRight: Radius.circular(20.0)),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Text(
              'Add Task',
              textAlign: TextAlign.center,
              style: TextStyle(
                color: Colors.lightBlueAccent,
                fontSize: 32.0,
              ),
            ),

            TextField(
              autofocus: true,
              onChanged: (value){
                newTask = value;
              },
            ),
            SizedBox(
              height: 30.0,
            ),
            Container(
              color: Colors.lightBlueAccent,
              child: FlatButton(
                onPressed: (){
                  Provider.of<TaskData>(context, listen: false).addTask(newTask);
                  Navigator.pop(context);
                },
                child: Text(
                  'Add',
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: 20.0
                  ),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
