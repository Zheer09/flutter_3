import 'package:exercise3/models/task.dart';

class todo {
  String title;
  List<Task> task;

  int get perc {
    int done = 0;
    for (int i = 0; i < task.length; i++) {
      if (task[i].checked == true) {
        done++;
      }
    }
    return ((done / task.length) * 100).toInt();
  }

  todo(this.title, this.task);
  todo.copy(todo from)
      : this(from.title, [for (Task _task in from.task) Task.copy(_task)]);

  update(todo to) {
    this.title = to.title;
    this.task = to.task;
  }
}
