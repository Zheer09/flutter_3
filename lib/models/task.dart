import 'package:exercise3/models/todo.dart';

class Task {
  String ti;
  bool checked;

  Task(this.ti, this.checked);

  Task.copy(Task from) : this(from.ti, from.checked);

  update(Task tas) {
    this.ti = tas.ti;
    this.checked = tas.checked;
  }
}
