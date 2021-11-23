import 'package:exercise3/models/todo.dart';
import 'package:flutter/material.dart';
import 'package:exercise3/router.dart';
import 'bar.dart';
import 'body.dart';

class todoScreen extends StatefulWidget {
  final List<todo> tod;
  todoScreen(this.tod);

  @override
  _todoScreenState createState() => _todoScreenState();
}

class _todoScreenState extends State<todoScreen> {
  @override
  Widget build(BuildContext context) {
    return WillPopScope(
        onWillPop: () => Future.value(false),
        child: SafeArea(
          child: Scaffold(
            appBar: Bartodo(),
            body: todoBody(),
          ),
        ));
  }
}
