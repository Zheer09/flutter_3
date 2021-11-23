import 'package:flutter/material.dart';
import 'package:exercise3/models/task.dart';

class bodyTask extends StatefulWidget {
  final List<Task> task;

  bodyTask(this.task);
  @override
  State<bodyTask> createState() => _bodyTaskState();
}

class _bodyTaskState extends State<bodyTask> {
  @override
  Widget build(BuildContext context) {
    return ListView.separated(
        itemBuilder: (context, index) => ListTile(
              title: Text(
                widget.task[index].ti,
                style: widget.task[index].checked == true
                    ? TextStyle()
                    : TextStyle(decoration: TextDecoration.lineThrough),
              ),
              onTap: () {
                setState(() {
                  widget.task[index].checked = !widget.task[index].checked;
                });
              },
              onLongPress: () {
                setState(() {
                  widget.task.removeAt(index);
                });
              },
            ),
        separatorBuilder: (context, index) => Divider(
              color: Colors.blueGrey,
            ),
        itemCount: widget.task.length);
  }
}
