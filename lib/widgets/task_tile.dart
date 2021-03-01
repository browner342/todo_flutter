import 'package:flutter/material.dart';

class TaskTile extends StatelessWidget {
  TaskTile({this.name, this.isDone = false, this.chceckBoxCallback, this.callbackLongPress});
  final bool isDone;
  final String name;
  final Function chceckBoxCallback;
  final Function callbackLongPress;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onLongPress: callbackLongPress,
      child: CheckboxListTile(
        title: Text(
          name,
          style: TextStyle(
            decoration: isDone?TextDecoration.lineThrough:null,
          ),
        ),
        value: isDone,
        onChanged: chceckBoxCallback,

      ),
    );
  }
}