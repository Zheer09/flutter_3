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
                  " task(S)"),
              trailing: CircleAvatar(
                child: Text(todoli[index].perc.toString()),
              ),
              onTap: () async {
                final result = await Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) =>
                            taskListscreen(todo.copy(todoli[index]))));
                if (result != null) {
                  todoli[index].update(result);
                  setState(() {});
                }
                if (result == null) {
                  setState(() {});
                }
              },
            ),
        separatorBuilder: (context, index) => Divider(color: Colors.blueGrey),
        itemCount: todoli.length);
  }
}
