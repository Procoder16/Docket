import 'package:flutter/material.dart';

class TaskTile extends StatelessWidget {
  final bool isChecked;
  final String taskTitle;
  final Function checkboxCallback;
  final Function onLongPressCallback;

  TaskTile(
      {this.isChecked,
      this.taskTitle,
      this.checkboxCallback,
      this.onLongPressCallback});

  @override
  Widget build(BuildContext context) {
    return ListTile(
      onLongPress: onLongPressCallback,
      title: Text(
        taskTitle,
        style: TextStyle(
            color: Colors.white,
            decoration: isChecked ? (TextDecoration.lineThrough) : null,
            decorationColor: Color(0xFFFE8268),
            decorationThickness: 3.0,
            fontSize: 20.0,
            fontWeight: FontWeight.bold),
      ),
      trailing: Theme(
        data: ThemeData(unselectedWidgetColor: Colors.white),
        child: Checkbox(
          hoverColor: Colors.white,
          activeColor: Color(0xFFFE8268),
          value: isChecked,
          onChanged: checkboxCallback,
        ),
      ),
    );
  }
}
