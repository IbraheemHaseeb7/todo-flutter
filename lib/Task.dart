import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Task extends StatefulWidget {
  final String title;
  const Task({ super.key, required this.title });
  @override
  TaskState createState() => TaskState(title);
}

class TaskState extends State<Task> {
  final String title;
  TaskState(this.title);

  @override
  Widget build(BuildContext context) {
    return (
      SizedBox(
        width: MediaQuery.of(context).size.width,
        child:
        Container(
          padding: const EdgeInsets.all(10),
          child:
            Flex(
                direction: Axis.horizontal,
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
              Text(title, style: const TextStyle(color: Colors.white)),
              ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    primary: Colors.red
                  ),
                  onPressed: () {},
                  child: const Text("Delete", style: TextStyle(
                color: Colors.white
              )))
            ]),
        )
      )
    );
  }
}