import 'package:flutter/material.dart';

class Task extends StatefulWidget {
  final String title;
  Function(String) deleteItem;
  Task({super.key, required this.title, required this.deleteItem});
  @override
  TaskState createState() => TaskState();
}

class TaskState extends State<Task> {
  @override
  Widget build(BuildContext context) {
    return (SizedBox(
        width: MediaQuery.of(context).size.width,
        child: Container(
          padding: const EdgeInsets.all(10),
          child: Flex(
              direction: Axis.horizontal,
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                Text(widget.title, style: const TextStyle(color: Colors.white)),
                ElevatedButton(
                    style: ElevatedButton.styleFrom(primary: Colors.red),
                    onPressed: () {
                      widget.deleteItem(widget.title);
                    },
                    child: const Text("Delete",
                        style: TextStyle(color: Colors.white)))
              ]),
        )));
  }
}
