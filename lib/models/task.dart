class Task{
  bool isDone;
  final String task;
  Task({required this.task,this.isDone=false});

  void troggleDone(){
    isDone=!isDone;
}

}