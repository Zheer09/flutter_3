import 'package:flutter/material.dart';

class Bartodo extends StatefulWidget implements PreferredSizeWidget {
  const Bartodo({Key? key}) : super(key: key);

  @override
  Size get preferredSize => Size.fromHeight(50.0);

  @override
  State<Bartodo> createState() => _BartodoState();
}

class _BartodoState extends State<Bartodo> {
  @override
  Widget build(BuildContext context) {
    return AppBar(
      leading: Container(),
      title: Text("My Todo List"),
      centerTitle: false,
      leadingWidth: 0,
    );
  }
}
