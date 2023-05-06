import 'package:flutter/material.dart';

class TopBar extends StatefulWidget {
  Function(String) addItem;
  List<String> items;
  TopBar({ super.key, required this.addItem, required this.items });

  @override
  TopBarState createState() {
    return TopBarState();
  }
}

class TopBarState extends State<TopBar> {

  TextEditingController tec = TextEditingController();

  void _addItem() {
    setState(() {
      widget.items.add(tec.text);
      tec.clear();
    });
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(10),
      width: MediaQuery.of(context).size.width,
      child: Flex(
        direction: Axis.horizontal,
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Container(
              width: 200,
              height: 30,
              decoration: const BoxDecoration(
                color: Colors.black26,
                borderRadius: BorderRadius.all(Radius.circular(10)),
              ),
              child:
              Scaffold(backgroundColor: Colors.transparent ,body:
                TextField(
                  controller: tec,
                  decoration: const InputDecoration(
                    label: Text("todo"),
                    hintText: "Enter your todo item",
                    hintStyle: TextStyle(
                      color: Colors.blueGrey
                    ),
                    contentPadding: EdgeInsets.symmetric(vertical: 10.0, horizontal: 10.0),
                    border: OutlineInputBorder(borderRadius: BorderRadius.all(Radius.circular(5))),
                  ),
                  style: const TextStyle(
                    color: Colors.white
                  ),
                ),
              )
          ),
          ElevatedButton(
            onPressed: _addItem,
            child: const Text('Add'),
          ),
        ],
      ),
    );
  }
}