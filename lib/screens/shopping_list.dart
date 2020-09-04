import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:grosync/common/drawer.dart';

class Shopping_list extends StatefulWidget {
  @override
  _Shopping_listState createState() => _Shopping_listState();
}

class _Shopping_listState extends State<Shopping_list> {
  void displayBottomSheet(BuildContext context) {
    showModalBottomSheet(
        context: context,
        builder: (ctx) {
          return Container(
            alignment: Alignment.topCenter,
            height: MediaQuery.of(context).size.height * 0.4,
            child: TextField(
              onSubmitted: (value) {
                setState(() {
                  litems.add(value);
                  Navigator.pop(context);
                });
              },
              decoration: InputDecoration(
                  contentPadding: EdgeInsets.only(left: 10),
                  border: InputBorder.none,
                  hintText: 'Enter Item'),
            ),
          );
        });
  }

  final GlobalKey<ScaffoldState> scaffoldKey = GlobalKey<ScaffoldState>();
  List<String> litems = ["1", "2", "Third", "4", "5", "6", "7", "8"];
  List<String> completed = [];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
          child: Icon(Icons.add),
          onPressed: () {
            displayBottomSheet(context);
          }),
      appBar: AppBar(
        title: Text("Shopping list"),
      ),
      drawer: Drawer_widget(),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Expanded(
              child: ListView.builder(
                  itemCount: litems.length,
                  itemBuilder: (BuildContext ctxt, int index) {
                    return new ListTile(
                      leading: Checkbox(
                          value: !litems.contains(litems[index]),
                          onChanged: (value) {
                            print(value);
                            setState(() {
                              completed.add(litems[index]);
                              litems.removeAt(index);
                            });
                          }),
                      title: Text(litems[index]),
                      onTap: () {
                        print(index);
                      },
                    );
                  })),
          Padding(
            padding: EdgeInsets.only(left: 20, right: 20),
            child: Container(
              height: 1,
              decoration: BoxDecoration(
                  border:
                      Border(top: BorderSide(width: 1, color: Colors.black))),
            ),
          ),
          Expanded(
              child: ListView.builder(
                  itemCount: completed.length,
                  itemBuilder: (BuildContext ctxt, int index) {
                    return new ListTile(
                      leading: Checkbox(
                          value: completed.contains(completed[index]),
                          onChanged: (value) {
                            print(value);
                            setState(() {
                              litems.add(completed[index]);
                              completed.removeAt(index);
                            });
                          }),
                      title: Text(
                        completed[index],
                        style: TextStyle(
                          color: Colors.grey,
                          decoration: TextDecoration.lineThrough,
                        ),
                      ),
                      onTap: () {
                        print(index);
                      },
                    );
                  })),
        ],
      ),
    );
  }
}
