import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:grosync/routing_constants.dart';

class Groups extends StatefulWidget {
  final String argument;
  const Groups({Key key, this.argument}) : super(key: key);

  @override
  _GroupsState createState() => _GroupsState();
}

class _GroupsState extends State<Groups> {
  var groups = {
    'Dishes': ["Vegetables", "Herbs and Spices", "Dairy"],
    'Food Groups': ["Vegetables", "Herbs and Spices", "Dairy"],
    'Custom Groups': ["Vegetables", "Herbs and Spices", "Dairy"]
  };

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.argument),
      ),
      body: Center(
          child: ListView.builder(
              itemCount: groups[widget.argument].length,
              itemBuilder: (BuildContext ctxt, int index) {
                return new ListTile(
                  title: Text(groups[widget.argument][index]),
                  onTap: () {
                    Navigator.pushNamed(context, A_group,
                        arguments: groups[widget.argument][index]);
                  },
                );
              })),
    );
  }
}

class ScreenArguments {
  final String title;
  final String message;

  ScreenArguments(this.title, this.message);
}
