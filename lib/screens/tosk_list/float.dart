import 'package:exercise3/models/todo.dart';
import 'package:flutter/material.dart';

class Float extends StatelessWidget {
  todo Todo;
  Float(this.Todo);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.end,
      children: <Widget>[
        FloatingActionButton.extended(
          heroTag: null,
          onPressed: () {
            Navigator.pop(context, null);
          },
          label: Text("Cancle"),
          icon: Icon(Icons.cancel),
        ),
        FloatingActionButton.extended(
          heroTag: null,
          onPressed: () {
            Navigator.pop(context, todo);
          },
          label: Text("Update"),
          icon: Icon(Icons.check_circle),
        ),
      ],
    );
  }
}
