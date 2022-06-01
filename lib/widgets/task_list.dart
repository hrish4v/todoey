import 'package:flutter/material.dart';
import 'package:todoey/widgets/task_tile.dart';
import 'package:provider/provider.dart';
import 'package:todoey/models/task_data.dart';

class TaskList extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Consumer<TaskData>(
      builder: (context, taskData, child){
        return ListView.builder(itemBuilder: (context,index){
          return TaskTile(
            taskTitle: taskData.tasks[index].task,     //using Consumer in parent widegt we can use taskData instead of Provider.of<TaskData>(context)
            isChecked: taskData.tasks[index].isDone,
            checkboxCallBack: (checkBoxState){
              taskData.updateTask(taskData.tasks[index]);
            },
            removeCallBack: (){
              taskData.removeTask(taskData.tasks[index]);
            },

          );
        },
          itemCount: taskData.taskLength,
        );
      },
    );
  }
}