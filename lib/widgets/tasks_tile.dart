import 'package:flutter/material.dart';

class TaskTile extends StatefulWidget {
  @override
  _TaskTileState createState() => _TaskTileState();
}

class _TaskTileState extends State<TaskTile> {
  bool isChecked = true;

  void checkBoxStateFunc(bool checkBox) {
    setState(() {
      isChecked = checkBox;
    });
  }

  @override
  Widget build(BuildContext context) {
    return ListTile(
      title: Text(
        'This is a task',
        style: TextStyle(
            decoration: isChecked ? TextDecoration.lineThrough : null),
      ),
      trailing: CheckedBox(isChecked, checkBoxStateFunc),
    );
  }
}

class CheckedBox extends StatelessWidget {
  final bool checkboxState;
  final Function checkBoxStateFunc;
  CheckedBox(this.checkboxState, this.checkBoxStateFunc);

  @override
  Widget build(BuildContext context) {
    return Checkbox(
      value: checkboxState,
      onChanged: checkBoxStateFunc,
    );
  }
}
