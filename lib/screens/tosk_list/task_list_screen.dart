import 'package:exercise3/models/todo.dart';
import 'package:flutter/material.dart';
import 'bar.dart';
import 'body.dart';
import 'float.dart';

class taskListscreen extends StatefulWidget {
  todo toDo;

  taskListscreen(@required this.toDo, {Key? key}) : super(key: key);

  @override
  _taskListscreenState createState() => _taskListscreenState();
}

class _taskListscreenState extends State<taskListscreen> {
  @override
  Widget build(BuildContext context) {
    return WillPopScope(
        onWillPop: () => Future.value(false),
        child: SafeArea(
          child: Scaffold(
            appBar: Bar(widget.toDo.title),
            body: bodyTask(widget.toDo.task),
            floatingActionButton: Float(widget.toDo),
          ),
        ));
  }
}
