import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:todoey/models/task.dart';

class TaskTile extends StatelessWidget {

  final bool isChecked;
  final String taskTitle;
  final Function(bool?) checkboxCallBack;
  final Function() removeCallBack;
  TaskTile({required this.taskTitle,required this.isChecked,required this.checkboxCallBack,required this.removeCallBack});

  @override
  Widget build(BuildContext context) {
    return ListTile(
      onLongPress: removeCallBack,
      title: Text(
        taskTitle,
        style: TextStyle(
          decoration: isChecked ? TextDecoration.lineThrough : null,
        ),
      ),
      trailing: Checkbox(
        activeColor: Colors.lightBlueAccent,
        value: isChecked,
        onChanged: checkboxCallBack,
      ),
    );
  }
}


