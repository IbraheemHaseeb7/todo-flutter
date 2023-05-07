import 'package:flutter/material.dart';

class TopBar extends StatefulWidget {
  List<String> items;
  Function(String) addItem;
  TopBar({super.key, required this.items, required this.addItem});

  @override
  TopBarState createState() {
    return TopBarState();
  }
}

class TopBarState extends State<TopBar> {
  TextEditingController tec = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(10),
      width: MediaQuery.of(context).size.width,
      child: Flex(
        direction: Axis.horizontal,
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Expanded(
              child: Container(
                  margin: EdgeInsets.only(right: 10),
                  height: 30,
                  decoration: const BoxDecoration(
                      borderRadius: BorderRadius.all(Radius.circular(5)),
                      color: Colors.transparent),
                  child: Scaffold(
                    backgroundColor: Colors.transparent,
                    body: TextField(
                      controller: tec,
                      decoration: const InputDecoration(
                        hintText: "Add Item",
                        prefixIcon: Icon(Icons.add),
                        contentPadding: EdgeInsets.symmetric(
                            vertical: 10.0, horizontal: 10.0),
                        border: OutlineInputBorder(
                            borderRadius: BorderRadius.all(Radius.circular(5))),
                      ),
                      style: const TextStyle(color: Colors.white),
                    ),
                  ))),
          ElevatedButton(
            onPressed: () {
              widget.addItem(tec.text);
              tec.clear();
            },
            child: const Text('Add'),
          ),
        ],
      ),
    );
  }
}
