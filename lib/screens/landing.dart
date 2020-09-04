import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:grosync/routing_constants.dart';

import '../common/background.dart';

class Landing extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.green,
      body: Center(
          child: Background(
        size: 50,
        title: "GROSYNC",
        body: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            GestureDetector(
              onTap: () => Navigator.pushNamed(context, Join_group_page),
              child: Container(
                width: 300,
                height: 100,
                decoration: BoxDecoration(
                    color: Colors.green,
                    borderRadius: BorderRadius.all(Radius.circular(25))),
                child: Center(
                    child: Text("Join Existing Group",
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: 30,
                            fontWeight: FontWeight.w400))),
              ),
            ),
            GestureDetector(
              onTap: () => Navigator.pushNamed(context, Create_group_page),
              child: Container(
                width: 300,
                height: 100,
                decoration: BoxDecoration(
                    color: Colors.green[300],
                    borderRadius: BorderRadius.all(Radius.circular(25))),
                child: Center(
                    child: Text("Create New Group",
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: 30,
                            fontWeight: FontWeight.w400))),
              ),
            ),
          ],
        ),
      )),
    );
  }
}
