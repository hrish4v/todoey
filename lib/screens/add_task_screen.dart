import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:todoey/models/task_data.dart';
import 'package:todoey/screens/tasks_screen.dart';
import 'package:todoey/models/task.dart';
import 'package:provider/provider.dart';

class AddTaskScreen extends StatelessWidget {

  // final ButtonStyle flatButtonStyle = TextButton.styleFrom(
  //
  //   shape: const RoundedRectangleBorder(
  //     borderRadius: BorderRadius.all(Radius.circular(2.0)),
  //   ),
  // );

  @override
  Widget build(BuildContext context) {

    String newTaskTitle='';

    return Container(
      padding: EdgeInsets.all(20),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.only(topRight: Radius.circular(20), topLeft: Radius.circular(20)),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: <Widget>[
          Text(
            'Add Task',
            textAlign: TextAlign.center,
            style: TextStyle(color: Colors.lightBlueAccent,
              fontSize: 30.0,
            ),
          ),
          TextField(
            autofocus: true,
            textAlign: TextAlign.center,
            onChanged: (String newText){
              newTaskTitle=newText;
            },
          ),
          FlatButton(
            color: Colors.lightBlueAccent,
              onPressed: (){
                Provider.of<TaskData>(context).addTask(newTaskTitle);
                Navigator.pop(context);
              },
              child: Text('Add',style: TextStyle(color: Colors.white,fontSize: 30.0),))
        ],
      ),
    );
  }
}
