import 'dart:js';

import 'package:exercise3/screens/todo_list/bar.dart';
import 'package:exercise3/screens/todo_list/body.dart';
import 'package:exercise3/screens/todo_list/todo_list_screen.dart';
import 'package:exercise3/screens/tosk_list/bar.dart';
import 'package:exercise3/screens/tosk_list/body.dart';
import 'package:exercise3/screens/tosk_list/float.dart';
import 'package:exercise3/screens/tosk_list/task_list_screen.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

const String todo_barPage = 'todo-bar';
const String todo_bodyPage = 'todo-body';
const String todo_listscreenPage = 'todo-listscreen';
const String tosk_barPage = 'tosk-bar';
const String tosk_bodyPage = 'tosk-body';
const String tosk_floatPage = 'tosk-float';
const String tosk_listscreenPage = 'tosk-listscreen';

Route<dynamic> controller(RouteSettings settings) {
  switch (settings.name) {
    case todo_listscreenPage:
      return MaterialPageRoute(builder: (context) => todoScreen());
    // case tosk_listscreenPage:
    //   return MaterialPageRoute(builder: (context) => taskListscreen());
    default:
      throw ("This is not available");
  }
}
