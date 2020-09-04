import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:grosync/common/background.dart';

import '../routing_constants.dart';

class Create_group extends StatelessWidget {
  final GlobalKey<FormState> _formKey = new GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.green,
      body: Background(
        body: Column(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            Container(
              height: 150,
              child: Form(
                key: _formKey,
                autovalidate: true,
                child: new ListView(
                  padding: const EdgeInsets.symmetric(horizontal: 16.0),
                  children: <Widget>[
                    new TextFormField(
                      decoration: const InputDecoration(
                        icon: const Icon(Icons.person),
                        hintText: 'Enter Group Name',
                        labelText: 'Group Name',
                      ),
                    ),
                    SizedBox(
                      height: 15,
                    ),
                    new TextFormField(
                      decoration: const InputDecoration(
                        icon: const Icon(Icons.calendar_today),
                        hintText: 'Enter Password',
                        labelText: 'Password',
                      ),
                      keyboardType: TextInputType.datetime,
                    )
                  ],
                ),
              ),
            ),
            GestureDetector(
              onTap: () => Navigator.pushNamed(context, Shopping_list),
              child: Container(
                width: 300,
                height: 100,
                decoration: BoxDecoration(
                    color: Colors.green,
                    borderRadius: BorderRadius.all(Radius.circular(25))),
                child: Center(
                    child: Text("Submit",
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: 30,
                            fontWeight: FontWeight.w400))),
              ),
            ),
          ],
        ),
        title: "Create New Group",
        size: 40,
      ),
    );
  }
}
