import 'package:exercise3/models/mock_todos.dart';
import 'package:exercise3/models/todo.dart';
import 'package:exercise3/screens/tosk_list/task_list_screen.dart';
import 'package:flutter/material.dart';

class todoBody extends StatefulWidget {
  const todoBody({Key? key}) : super(key: key);

  @override
  _todoBodyState createState() => _todoBodyState();
}

class _todoBodyState extends State<todoBody> {
  final List<todo> todoli = myTodol;
  @override
  Widget build(BuildContext context) {
    return ListView.separated(
        itemBuilder: (context, index) => ListTile(
              title: Text(todoli[index].title),
              subtitle: Text("This list has " +
                  todoli[index].task.length.toString() +
                  "tasks"),
              trailing: CircleAvatar(
                child: Text(todoli[index].perc.toString()),
              ),
              onTap: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => taskListscreen(todoli[index])));
              },
            ),
        separatorBuilder: (context, index) => Divider(
              color: Colors.blueGrey,
            ),
        itemCount: todoli.length);
  }
}
