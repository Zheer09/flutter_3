import 'package:flutter/widgets.dart';

import 'task.dart';
import 'todo.dart';

final myTodol = <todo>[
  todo("MAP Project", [
    Task("Delivarible #1: Project proposal and design", false),
    Task("Delivarible #2: Prototype 1", true),
    Task("Delivarible #3: Prototype 2", true),
    Task("Delivarible #3: Backend", true),
    Task("Delivarible #4: Release Version", true)
  ]),
  todo("Preparing for online learning", [
    Task("Sign in ", true),
    Task("Download exercise", true),
    Task("Watch Video", false),
    Task("Upload exercise", true)
  ]),
  todo("Things to do this weekend", [
    Task("Study for quizes", false),
    Task("Doing the assigment", true),
    Task("Do the project", false),
    Task("Learn for new technology", true)
  ]),
];
