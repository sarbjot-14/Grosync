import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../routing_constants.dart';

class Drawer_widget extends StatelessWidget {
  const Drawer_widget({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Expanded(
            flex: 1,
            child: Container(
              width: MediaQuery.of(context).size.width * 0.85,
              child: DrawerHeader(
                child: Text(
                  "Farwaha Family",
                  style: TextStyle(fontSize: 30),
                ),
              ),
            ),
          ),
          Expanded(
            flex: 5,
            child: ListView(children: [
              ListTile(
                title: Text("All Items"),
                onTap: () {
                  Navigator.of(context).pop();
                  Navigator.pushNamed(context, Groups, arguments: "All Items");
                },
              ),
              ListTile(
                title: Text("Dishes"),
                onTap: () {
                  Navigator.of(context).pop();
                  Navigator.pushNamed(context, Groups, arguments: "Dishes");
                },
              ),
              ListTile(
                title: Text("Food Groups"),
                onTap: () {
                  Navigator.of(context).pop();
                  Navigator.pushNamed(context, Groups,
                      arguments: "Food Groups");
                },
              ),
              ListTile(
                title: Text("Custom Groups"),
                onTap: () {
                  Navigator.of(context).pop();
                  Navigator.pushNamed(context, Groups,
                      arguments: "Custom Groups");
                },
              ),
            ]),
          )
        ],
      ),
    );
  }
}
