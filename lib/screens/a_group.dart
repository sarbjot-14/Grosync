import 'package:flutter/material.dart';

class A_group extends StatefulWidget {
  final String argument;
  const A_group({Key key, this.argument}) : super(key: key);
  @override
  _A_groupState createState() => _A_groupState();
}

class _A_groupState extends State<A_group> {
  var scaffoldKey = GlobalKey<ScaffoldState>();

  var items = ["Kuddu", "Aloo", "Bhangan"];
  var added = [];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        key: scaffoldKey,
        appBar: AppBar(
          title: Text(widget.argument),
        ),
        body: ListView.builder(
            itemCount: items.length,
            itemBuilder: (BuildContext ctxt, int index) {
              return new ListTile(
                leading: Checkbox(
                    value: added.contains(items[index]),
                    onChanged: (value) {
                      setState(() {
                        if (added.contains(items[index])) {
                          added.remove(items[index]);
                          _displaySnackBar(context,
                              items[index] + " removed to shopping list");
                        } else {
                          added.add(items[index]);
                          _displaySnackBar(context,
                              items[index] + " added to shopping list");
                        }
                      });
                    }),
                title: Text(items[index]),
                onTap: () {
                  print(index);
                },
              );
            }));
  }

  _displaySnackBar(BuildContext context, message) {
    final snackBar =
        SnackBar(duration: Duration(milliseconds: 700), content: Text(message));
    scaffoldKey.currentState.showSnackBar(snackBar);
  }
}
