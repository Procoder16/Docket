import 'package:flutter/material.dart';

class TasksScreens extends StatelessWidget {
  const TasksScreens({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.lightBlueAccent,
      body: Container(
        padding: EdgeInsets.only(top: 60.0, left: 30.0, bottom: 30.0),
        child: Column(
          children: [
            CircleAvatar(
              radius: 30.0,
              backgroundColor: Colors.white,
              child: Icon(
                Icons.list,
                size: 30.0,
                color: Colors.lightBlueAccent,
              ),
            ),
            Text('Todoey'),
          ],
        ),
      ),
    );
  }
}
