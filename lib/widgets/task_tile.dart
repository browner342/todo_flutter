import 'package:flutter/material.dart';

class TaskTile extends StatelessWidget {
  /**
   * Represents one separated task tile with name and checkbox.
   * When checkbox is checked text is crossed.
   * If task tile is pressed longer it is deleted.
   */
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