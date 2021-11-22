class task {
  String ti;
  bool checked;

  task({this.ti = "", this.checked = false});
  task.copy(task from) : this(ti: from.ti, checked: from.checked);
}
