import 'package:flutter/material.dart';
import 'router.dart' as router;
import 'package:exercise3/screens/todo_list/todo_list_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      onGenerateRoute: router.controller,
      initialRoute: router.todo_listscreenPage,
    );
  }
}
