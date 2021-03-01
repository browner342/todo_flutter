

class Task{
  /**
   * Keep data about one task
   *
   *  String name - name of task
   *  bool isDone - if task is done => true;
   *
   *  void toggleDone - isDone changing state if is true => false, and false => ture
   */
  Task({this.name, this.isDone = false});

  String name;
  bool isDone;

  void toggleDone(){
    isDone = !isDone;
  }
}